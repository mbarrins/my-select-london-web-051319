def my_select(collection)
  if block_given?
    i = 0
    new_collection = []
    while i < collection.length
      if yield(collection[i])
        new_collection << collection[i]
      end
      i = i + 1
    end
    new_collection
  else
    "This block should not run!"
  end
end
