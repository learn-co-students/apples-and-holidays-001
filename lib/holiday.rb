require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas].push(supply)
  holiday_hash[:winter][:new_years].push(supply)
  
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  array = []
  holiday_hash[:winter].each do |holiday, supplies|
    array.push(supplies)
  end
  array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize!}:"
    holidays.each do |day, supplies|      
      array = day.to_s.split("_")
      array.collect do |word|
        word.capitalize!
      end
      holiday = array.join(" ")
      puts "  #{holiday}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  days = []
  holiday_hash.each do |season, holidays|
    holidays.each do |day, supplies|
      if supplies.include?("BBQ")
        days.push(day)
      else
        nil
      end
    end
  end
  days
end







