require 'pry'

def apple_picker_with_select(fruit_list)
  # fruit_list will look something like: ["apple", "banana", "apple"]
  # you want to return an array that just has apples in it
  fruit_list.select {|fruit| fruit == "apple"}
end

def apple_picker_with_collect(fruit_list)
  # fruit_list will look something like: ["apple", "banana", "apple"]
  # you want to return an array that has just the apples, just like the 
  # challenge above
  result_of_collecting = fruit_list.collect {|fruit| if fruit=="apple"
    fruit ="apple" end}
  result_of_collecting.compact
  
end
