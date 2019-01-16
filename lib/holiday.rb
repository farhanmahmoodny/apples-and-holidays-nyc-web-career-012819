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
  holiday_hash.each do |season, holiday|
    holiday.each do |name, supply|
    if name == :fourth_of_july
      return supply[1]
    end
  end
end      
      
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash[:winter][:new_years] << supply
  holiday_hash[:winter][:christmas] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  
   holiday_hash[season][holiday_name] = supply_array
   holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)

winter_supply = holiday_hash[:winter].values
winter_supply.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

   
puts <<TEXT
Winter:
  Christmas: Lights, Wreath
  New Years: Party Hats
Summer:
  Fourth Of July: Fireworks, BBQ
Fall:
  Thanksgiving: Turkey
Spring:
  Memorial Day: BBQ
TEXT

end

def all_holidays_with_bbq(holiday_hash)

bbq_list = []
holiday_hash.each do |season, holiday|
  holiday.each do |name, supply|
    supply.each do |name|
      if supply == "BBQ"
        bbq_list.push(name)
end
end
end
end









