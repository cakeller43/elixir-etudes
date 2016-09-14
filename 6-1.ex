defmodule Stats do
    def min2([head | tail]) do
       _min(tail, head) 
    end
    defp _min([],minimum) do
        minimum
    end
    defp _min([head | tail], minimum) do
      cond do
          head < minimum -> _min(tail, head)
          head >= minimum -> _min(tail, minimum)
      end
    end

    def max2([head | tail]) do
       _max(tail,head) 
    end

    defp _max([], maximum) do
       maximum 
    end

    defp _max([head | tail], maximum) do
       cond do
           head > maximum -> _max(tail, head)
           head <= maximum -> _max(tail, maximum)
       end 
    end

    def range2(list) do
       [min2(list), max2(list)] 
    end
end