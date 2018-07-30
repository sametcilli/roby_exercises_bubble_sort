def custom_sort(arr)
  1.upto(arr.length-1) do |i|
    0.upto(arr.length-1) do |j|
      result = yield arr[i], arr[j]
      if result < 0
        next_value = arr[i]
        arr[i] = arr[j]
        arr[j] = next_value
      end
    end
  end
  arr
end

def bubble_sort(arr)
  custom_sort(arr) do |left, right|
    left - right
  end
end
p bubble_sort([4,3,78,22,0,2])

def bubble_sort_by(arr)
  custom_sort(arr) do |left, right|
    yield left, right
  end
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
   left.length - right.length
end
