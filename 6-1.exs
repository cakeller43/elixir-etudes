defmodule Stats do
          def minimum(list) do
             [head | tail] = list
             minimum(tail, head) 
          end

          def minimum([], result) do
              result 
          end

          def minimum([head | tail], result) when head < result do
             minimum(tail,head) 
          end

          def minimum([head | tail], result) do
             minimum(tail, result) 
          end
end
