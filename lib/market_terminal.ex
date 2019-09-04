defmodule MarketTerminal do
  def prices(symbol, length, date) do
    token = System.get_env("IEX_CLOUD_API_KEY")
    url = "https://cloud.iexapis.com/stable/stock/" <> symbol <> "/chart/" <> length <> "/" <> date <> "?token=" <> token

    # Now we can make request:
    case :httpc.request(:get, {to_charlist(url), []}, [], []) do
      {:ok, {{'HTTP/1.1', 200, 'OK'}, _headers, body}} ->
        Jason.decode!(body)
      {:ok, {{'HTTP/1.1', 404, 'Not Found'}, _headers, body}} ->
        IO.puts("NOT FOUND" <> to_string(body))
      end
  end
end
