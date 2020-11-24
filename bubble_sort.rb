def bubble_sort(arr)
  (0..(arr.length - 1)).each do |bubble|
    (0...((arr.length - 1) - bubble)).each do |sorter|
      next unless arr[sorter] > arr[sorter + 1]

      curr = arr[sorter]
      arr[sorter] = arr[sorter + 1]
      arr[sorter + 1] = curr
    end
  end
  arr
end

ResultSort = bubble_sort([10, 9, 8, 6, 5, 4, 3, 2, 1])

def bubble_sort_by(arr)
  (0..(arr.length - 1)).each do |bubble|
    (0...((arr.length - 1) - bubble)).each do |sorter|
      next unless yield(arr[sorter], arr[sorter + 1]).positive?

      curr = arr[sorter]
      arr[sorter] = arr[sorter + 1]
      arr[sorter + 1] = curr
    end
  end
  arr
end
ResultSortBy = bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
