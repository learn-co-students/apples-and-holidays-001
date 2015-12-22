require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  # irerate into hash
  holiday_hash.each do |key, value|
    value.each do |season, holiday|
     holiday.is_a?(Hash) && holiday == "summer"
     # Option to use has_key? if possible
     return "BBQ" 
   end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |holiday, things|
    things.push(supply)
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  # Went into season of hash, used key holiday_name and pointed it to the value, supply_array
  holiday_hash[season][holiday_name] = supply_array
  # for arguments in methods, go into pry to see what it is being fed into method
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  # binding.pry
  return holiday_hash[:winter].values.flatten
end


def reformat_holiday(holiday)
  holiday = holiday.to_s
  if holiday.include?("_")
    # Convert to string and split at "_" to return array
    arr = holiday.split('_')
    # Use collect instea dof each to save the state in memory. Capitalize each separate word
    result = arr.collect do |word|
      word.capitalize
    end
    # Convert back to string with space between each word
    result.join(' ')
  else
    holiday.capitalize
  end
end

def all_supplies_in_holidays(holiday_hash)

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  # Write a method that uses a loop to list out all the supplies you have for each holiday and the season
  # iterate through everything we want output, and puts it line by line.
  # For New York use: .split.map(&:capitalize).join(' ') with a condition
  holiday_hash.map do |season, holiday|
    puts "#{season.capitalize}:".chomp
    holiday.each do |key,value|
     puts "  " + reformat_holiday(key) + ":" + " " + value.join(', ')
   end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  arr = []
  holiday_hash.collect do |season, holiday|
    holiday.collect do |holiday, stuff|
      arr << holiday if stuff.include?("BBQ")
    end

  end
  return arr
end

=begin Commented out code snippet

    {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
=end






