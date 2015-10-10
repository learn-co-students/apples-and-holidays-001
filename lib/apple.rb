def apple_picker_with_select(fruit_list)
  apple = "apple"
  fruit_list.select do |fruit|
    fruit == apple
  end
end

def apple_picker_with_collect(fruit_list)
  apple = "apple"
  output = fruit_list.collect do |fruit|
    if fruit == apple
      fruit
    end
  end
  output.compact
end
