require 'pry'

def apple_picker_with_select(fruit_list)
  # fruit_list will look something like: ["apple", "banana", "apple"]
  # you want to return an array that just has apples in it
  fruit_list.select do |item|
    item == "apple"
  end
end

def apple_picker_with_collect(fruit_list)
  # fruit_list will look something like: ["apple", "banana", "apple"]
  # you want to return an array that just the apples, just like the
  # challenge
  result_of_collecting = []
  result_of_collecting = fruit_list.collect   {|item| item if item == "apple"}
  result_of_collecting.compact
end