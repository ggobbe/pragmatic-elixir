defmodule Chop do
    def guess(x, actual, _low..high) when x < actual do
        guess(actual, x..high)
    end
    def guess(x, actual, low.._high) when x > actual do
        guess(actual, low..x)
    end
    def guess(x, actual, _range) when x === actual do 
        IO.puts x
    end
    def guess(actual, range) do
        low..high = range
        target = low + div((high - low), 2)
        IO.puts "Is it #{target}"
        guess(target, actual, low..high)
    end
end

Chop.guess(273, 1..1000)