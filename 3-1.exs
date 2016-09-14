defmodule Geom do
  def area(:rectangle, a, b) do
    a * b
  end

  def area(:triangle, a, b) do
    a * b / 2.0
  end

  def area(:ellipse, a, b) do
    :math.pi() * a * b
  end
end
