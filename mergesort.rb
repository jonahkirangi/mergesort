class MergeSort

  def mergesort(array)
    return array if array < 1
    second_array = array.slice((array.size/2).round, array.size)
    left_sorted_array = mergesort(array)
    right_sorted_array = mergesort(second_array)

    return merge(left_sorted_array, right_sorted_array)
  end

  def merge(left,right)
    results = []
    until left.empty? || right.empty?
      if left.first <= right.first
        results << left.shift
      else
        results << right.shift
      end
    end

    return results + left + right
  end
end
