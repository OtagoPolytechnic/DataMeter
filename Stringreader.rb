require 'date'
require 'csv'
time = Time.new
lines = []


 file = File.open('C:/Users/cameron/Google Drive/BITY4/Sites/simple_cms/public/DigitalOcean/Electricity.txt', "r")

users = []

while (line = file.gets)
  arr = line.split(',')
  users.push({ timestamp: arr[0], device: arr[1], charge1: arr[2], charge2: arr[3], charge3: arr[4], total: arr[5] })
end

file.close

 #testDate = DateTime.parse("17/3/15 12:45:0")
 #formatDate = testDate.strftime("%y-%m-%d")
 #puts formatDate.inspect
#get todays date and format it
 #todaysDate = time.strftime("%d-%m-%y")
 #puts todaysDate.inspect
#fileDate = users.timestamp
#fileDate = users.select { |user| user[:timestamp]}
#FileDate = users.map { |s| [Date.parse(s.date).to_time.strftime("%y-%m-%d")]}

#fileDate = users.map do |row|
#	{:timestamp => Date.parse(row.timestamp).to_time.strftime("%y-%m-%d")}
#end

#puts fileDate.inspect
csv_text = File.read('C:/Users/cameron/Google Drive/BITY4/Sites/simple_cms/public/DigitalOcean/Electricity.txt')
											csv = CSV.parse(csv_text, :headers => true)
											csv.each do |row|
											  Meter.create!(row.to_hash)
											end

x = users.map { |x| x[:total]}

#strip out unwanted carrige returns 
x.collect { |x| x.strip!}
puts x.inspect

#puts Users.inspect

