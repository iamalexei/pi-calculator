defmodule Math do
  defp factor(n, accum \\ 1) do 
    if (n < 2) do 
      accum
    else
      factor(n - 1, n * accum)
    end
  end

  defp sigma(0) do 13591409 / 1 end
  defp sigma(n) when n > 0 do
    sigma(n - 1) + (factor(6 * n) * (545140134 * n + 13591409)) / 
    (factor(3 * n) * :math.pow(factor(n), 3) * 
    :math.pow(-262537412640768000, n))
  end

  def pi do
    (426880 * :math.sqrt(10005)) / sigma(10)
  end
end
