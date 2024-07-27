require 'brasilapi'
require 'csv'

allcvm = BrasilAPI::CVM.all

directory = 'C:/temp'
Dir.mkdir(directory) if !Dir.exist?(directory)

csv_file = "#{directory}/corretoras-ativas.csv"

CSV.open(csv_file, 'wb') do |csvfile|
  csvfile << allcvm.first.keys
  allcvm.each do |row|
    csvfile << row.values if row["status"] != "CANCELADA"
  end
end

puts "Arquivo CSV salvo em #{csv_file}"
