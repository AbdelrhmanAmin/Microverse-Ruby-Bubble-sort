def bubble_sort(arr)
  for bubble in (arr.length-1).downto(0)
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

result = bubble_sort([4,3,78,2,0,2]);

p result



def bubble_sort_by(arr)
  for bubble in  (arr.length-1).downto(0)
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