def binary_search(array, word)
  low, high = 0, array.size - 1
  while (low <= high)
    try = (high - low) / 2
    case
    when (array[try] < word)
      low = try + 1    
    when (array[try] > word)
      high = try - 1
    else
      return try
    end
  end
end

array = %w[a ant be bee cat cow do don't egg elephant]
puts array[binary_search(array, 'bear')]
