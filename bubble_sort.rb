def check(to_sort)
  counter = 0

  to_sort.map do |num|
    currentIndex = to_sort.index(num)
    nextIndex = currentIndex + 1

    if nextIndex < to_sort.length
      if num > to_sort[nextIndex]
        counter += 1
        
      end
    end 
  end

  if counter > 0
    return false
  end

  if counter == 0
    return true
  end
end



def bubble_sort(to_sort)
  sorted = false

  while sorted == false
    
    to_sort.map do |num|
      currentIndex = to_sort.index(num)
      nextIndex = currentIndex + 1
      placeholder = num
      
      if nextIndex < to_sort.length
        if num > to_sort[nextIndex]
          to_sort[currentIndex] = to_sort[nextIndex]
          to_sort[nextIndex] = placeholder 
          
        end
      end 

      
    end
    sorted = check(to_sort)

  
    
  end

  p to_sort
end

bubble_sort([4,3,78,2,0,2])