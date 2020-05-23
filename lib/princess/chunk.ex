defmodule Princess.Chunk do
  @enforce_keys [:tag, :data]
  defstruct tag: nil, size: nil, data: nil

  def from({:data, str}), do: from(str)

  def from(chunk) when is_binary(chunk) do
    [<<tag::binary-size(3), " ", _size::binary>>, data] = String.split(chunk, "\n", trim: true)
    # expected_size = String.to_integer(size)
    actual_size = Kernel.byte_size(data)
    # if expected_size != actual_size, do: IO.inspect([actual_size, expected_size])
    %__MODULE__{tag: tag, size: actual_size, data: data}
  end
end
