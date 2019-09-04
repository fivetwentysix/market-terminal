defmodule MarketTerminalTest do
  use ExUnit.Case

  test "get last 30 day prices" do
    assert is_list(MarketTerminal.prices("MSFT", "1m", "20190801"))
  end
end
