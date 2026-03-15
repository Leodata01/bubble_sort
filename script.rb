def bubble_sort (arr)
  max_index = arr.length - 1 
  same_array = false 
  
  until same_array == true
    start_arr = arr.dup 
    arr.each_with_index do |num, current_index|
      unless current_index == max_index 
      next_index = current_index + 1
      next_num  = arr[next_index]
      if num -  next_num > 0 
        arr[next_index] = num 
        arr[current_index] = next_num
      end
      end 
      end
    same_array = true if start_arr == arr
  end
  arr
end


p bubble_sort([4,3,78,2,0,2])