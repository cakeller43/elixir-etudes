defmodule Powers do
  import Kernel, except: [raise: 2]
  def raise(x,n) when n == 0 do
    1
  end
  
  def raise(x,n) when n == 1 do
    x
  end  

  def raise(x,n) when n > 0 do
    x * raise( x, n - 1) 
  end 

  def raise(x,n) when n < 0 do
    1.0 / raise( x, -n)
  end 

  defp raise(x,n,acc) do
    cond do
     n == 0 -> acc 
     true -> raise(x,n-1,x*acc)
    end
  end
end
