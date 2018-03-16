defmodule Math do
  def factor(0) do 1 end
  def factor(1) do 1 end
  def factor(n) when n > 1 do n * factor(n - 1) end

  def sigma(0) do 13591409 / 1 end
  def sigma(n) when n > 0 do
    sigma(n - 1) + (Math.factor(6 * n) * (545140134 * n + 13591409)) / 
    (Math.factor(3 * n) * :math.pow(Math.factor(n), 3) * 
    :math.pow(-262537412640768000, n))
  end

  def pi do
    (426880 * :math.sqrt(10005)) / Math.sigma(1)
  end
end
