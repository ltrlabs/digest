defmodule Digest do
  defdelegate crc8(char_list), to: Digest.Crc8
end
