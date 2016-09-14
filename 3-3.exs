defmodule Geom do
  def area(:rectangle, a, b) when a >= 0 and b >= 0 do
    a * b
  end

  def area(:triangle, a, b) when a >= 0 and b >= 0 do
    a * b / 2.0
  end

  def area(:ellipse, a, b) when a >= 0 and b >= 0 do
    :math.pi() * a * b
  end

  def area( _, a, b) do
    0
  end
end
