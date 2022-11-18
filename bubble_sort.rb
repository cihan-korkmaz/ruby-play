def bubble_sort(array)
    array_length = array.size
    sort_count = 1
    while sort_count != 0
      sort_count = 0
      for i in 0..array_length - 2
        if array[i + 1] < array[i]
          array[i + 1], array[i] = array[i], array[i + 1]
          sort_count += 1
        end
      end
      array_length -= 1
    end
    array
  end
  
  p bubble_sort([4,3,78,2,0,2])