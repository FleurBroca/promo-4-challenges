# This "require" line loads the contents of the 'date' file from the standard
# Ruby library, giving you access to the Date class.
require 'date'


def age_in_days(day, month, year)
  # TODO: return the age expressed in days given the day, month, and year of birth
  endDate = Date.today
  beginDate = Date.new(year, month, day)
  days = endDate - beginDate
  days.class
  days.to_i
end
puts age_in_days(25, 5, 1973)
