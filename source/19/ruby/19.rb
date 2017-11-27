require 'time'

start_date = Time.strptime("31/12/1899", "%d/%m/%Y")
end_date = Time.strptime("31/12/2000", "%d/%m/%Y")
timestamp_interval = 24 * 7 * 3600
current_date = start_date
count = 0;
while(current_date <= end_date) do
    count += 1 if (current_date.day == 1 && current_date.year > 1900)
    current_date = current_date + timestamp_interval
end

puts count
