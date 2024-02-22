require 'date'

# Example array of registration dates
registration_dates = [
  "2024-02-19", "2024-02-20", "2024-02-21", "2024-02-22", "2024-02-23",
  "2024-02-24", "2024-02-25", "2024-02-26", "2024-02-27", "2024-02-28",
  "2024-02-29", "2024-03-01", "2024-03-02", "2024-03-03", "2024-03-04",
  "2024-03-05", "2024-03-06", "2024-03-07", "2024-03-08", "2024-03-09",
  "2024-03-10", "2024-03-11", "2024-03-12", "2024-03-13", "2024-03-14",
  "2024-03-15", "2024-03-16", "2024-03-17", "2024-03-18", "2024-03-19"
]

# Convert dates to Day of the Week (0 = Sunday, 1 = Monday, ..., 6 = Saturday)
days_of_week = registration_dates.map { |date| Date.parse(date).wday }
puts days_of_week

# Count occurrences of each day
day_counts = days_of_week.each_with_object(Hash.new(0)) { |day, counts| counts[day] += 1 }
puts "Day counts --> #{day_counts}"

# Find the day(s) with the most registrations
max_count = day_counts.values.max
most_registered_days = day_counts.select { |_, count| count == max_count }.keys

# Convert day numbers back to day names
day_names = Date::DAYNAMES.values_at(*most_registered_days)

puts "The day(s) with the most registrations: #{day_names.join(', ')}"