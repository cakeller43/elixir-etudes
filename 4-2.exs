defmodule GCD do
  def dijkstra(m,n) do
    cond do
      m == n -> m
      m > n -> dijkstra(m-n,n)
      m < n -> dijkstra(m,n-m)
    end
  end
end
