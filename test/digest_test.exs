defmodule DigestTest do
  use ExUnit.Case, async: true

  test "crc8" do
    assert Digest.crc8('') == 0x00
    assert Digest.crc8('BE2080CF1F') == 0xC4
    assert Digest.crc8('FFFFFFFFFFFFFFFF') == 0x14
    assert Digest.crc8('1111111111111') == 0x2A
    assert Digest.crc8('BE2080CF1F6B08EA9C8C95CFEE2360A15E8599D1B04A8721112FD31FC2BB25AF6C1A760586B1CDBE1D12CA14E5BB8F96A58A7900098E65066C33EC0CD5DA496C') == 0xCF
  end
end
