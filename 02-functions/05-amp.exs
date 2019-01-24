arr = [1, 2, 3, 4]
IO.inspect Enum.map arr, &(&1 + 2)
Enum.each arr, &(IO.inspect &1)