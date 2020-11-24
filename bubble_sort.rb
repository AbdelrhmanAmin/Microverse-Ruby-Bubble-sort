def bubble_sort(arr)
  for bubble in (arr.length-1).downto(0)
    for sorter in ((arr.length-1) -bubble )
      if arr[sorter] > arr[sorter+1]
    end
  end
end

bubble_sort([4,3,78,2,0,2])