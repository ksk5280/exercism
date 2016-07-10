class Array
  def accumulate
    new_array = []
    current_index = 0
    while current_index < self.length
      new_array << yield(self[current_index])
      current_index += 1
    end
    return new_array
  end
end
