def bubble_sort(arr)
  for bubble in 0..(arr.length-1)
    for sorter in 0...((arr.length-1) - bubble )
      if arr[sorter] > arr[sorter+1]
        curr = arr[sorter] 
        arr[sorter] = arr[sorter+1]
        arr[sorter+1] = curr
      end
    end
  end
  return arr
end

result = bubble_sort([10, 9, 8, 6, 5, 4, 3, 2, 1])

p result
# output: [5, 6, 4, 7, 3, 8, 2, 9, 1, 10]
# Expected: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def bubble_sort_by(arr)
  for bubble in 0..(arr.length-1)
    for sorter in 0...((arr.length-1) - bubble)
       if yield(arr[sorter], arr[sorter+1]) > 0 
        curr = arr[sorter];
        arr[sorter] = arr[sorter+1]
        arr[sorter+1] = curr
      end
    end
  end
  return arr
end
result2 = bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
end

p result2