# Sorting algorithms are some of the earliest that you typically get exposed to in Computer Science. It may not be immediately obvious how important they are, but it shouldn’t be hard to think of some examples where your computer needs to sort some massive datasets during everyday operations.

# One of the simpler (but more processor-intensive) ways of sorting a group of items in an array is bubble sort, where each element is compared to the one next to it and they are swapped if the one on the left is larger than the one on the right. This continues until the array is eventually sorted.

# Check out this video from Harvard’s CS50x on Bubble Sort.

# There’s also an entry on Bubble Sort on Wikipedia that’s worth taking a look at.

def bubble_sort(array)
    array.each_with_index { |num1, i|
        array.each_with_index { |num2, j|
            
            if  num1 > num2 && j > i
                num1 = num2
                array[i], array[j] = array[j], array[i]
            end 
        }
     }
    p array
end

bubble_sort([4,3,78,2,0,2])