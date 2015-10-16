def apple_picker_with_select(fruit_list)
  # fruit_list will look something like: ["apple", "banana", "apple"]
  # you want to return an array that just has apples in it
  fruit_list.select {|x| x == "apple"}
end

def apple_picker_with_collect(fruit_list)
  # fruit_list will look something like: ["apple", "banana", "apple"]
  # you want to return an array that has just the apples, just like the 
  # challenge above
  result_of_collecting = fruit_list.collect {|x| x if x == "apple"}
  result_of_collecting.compact
end




def apple_picker_with_collect2(fruit_list)
  # fruit_list will look something like: ["apple", "banana", "apple"]
  # you want to return an array that has just the apples, just like the 
  # challenge above
  flist = []
  fruit_list.collect {|x| 
    if x == "apple"
      flist << x
    end
  }
  flist
end
