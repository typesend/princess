defmodule Princess.Adapter do
  use GenServer
  require Princess.Chunk

  @spec start_link :: :ignore | {:error, any} | {:ok, pid}
  def start_link() do
    opts = %{path: System.find_executable("prince")}
    GenServer.start_link(__MODULE__, opts)
  end

  def init(opts) do
    state = %{
      port: nil,
      path: opts[:path]
    }

    {:ok, state, {:continue, :start_princess}}
  end

  def handle_continue(:start_princess, state) do
    port =
      Port.open({:spawn_executable, state[:path]}, [
        :binary,
        args: ~w(--control --structured-log=progress --fail-missing-resources
                 --fail-missing-glyphs --fail-dropped-content)
      ])

    state = Map.put(state, :port, port)
    {:noreply, state, {:continue, :monitor_princess}}
  end

  def handle_continue(:monitor_princess, state) do
    Port.monitor(state[:port])
    {:noreply, state}
  end

  def handle_info({_port, {:data, d}}, state) do
    chunk = Princess.Chunk.from(d)

    case chunk do
      %{tag: "ver", data: data} ->
        "Prince " <> version = data
        Map.put(state, "ver", version)

      %{tag: "pdf", data: data} ->
        Map.put(state, "pdf", data)

      %{tag: "err", data: data} ->
        Map.put(state, "err", data)

      %{tag: "log", data: data} ->
        Map.put(state, "log", data)

      it ->
        IO.inspect(it)
    end

    {:noreply, state}
  end

  def handle_info({:DOWN, _ref, :port, _pid, reason}, state) do
    IO.puts("monitor fail:")
    IO.inspect(reason)
    {:noreply, state}
  end

  def handle_info(_pid, info, state) do
    IO.puts("catchall handle_info:")
    IO.inspect(info)
    {:noreply, state}
  end

  # def handle_call(:job, from, state) do
  #   {:reply, reply, new_state}
  # end

  def terminate(_reason, state) do
    send(state[:port], {:command, "end"})
  end
end
