require './country'

class CountryCollection
  require 'csv'
  
  @@countries = nil
  
  def self.all
    if @@countries.nil?
      file = File.open("factbook.csv")
      @@countries = CSV.read(file, { :col_sep => ';'})
      @@countries.shift
      @@countries.shift

      results = []

      @@countries.each do |country|
        results << Country.new(country[0], country[1], country[2], country[3], country[4], country[5], country[6], country[7], country[8], country[9], country[10], country[11], country[12], country[13], country[14], country[15], country[16], country[17], country[18], country[19], country[20], country[21], country[22], country[23], country[24], country[25], country[26], country[27], country[28], country[29], country[30], country[31], country[32], country[33], country[34], country[35], country[36], country[37], country[38], country[39], country[40], country[41], country[42], country[43], country[44])
      end
    
      file.close
      
      @@countries = results
    end
    @@countries
  end
  
  def self.unemployment(data)
  end
  
  def self.top_10(data, column)
    if column == "unemployment_rate"
      unemployment_data = data.reject{|country| country.unemployment_rate.nil?}.sort.reverse[0..9]

      unemployment_data.each do |country|
        puts "              #{country.country}"
        puts "              #{country.unemployment_rate}"
        puts "              ---------------------------"
      end
    else      
      top_10_data = data.sort {|a,b| a.send(column).to_f <=> b.send(column).to_f}.reverse[0..9]

      top_10_data.each do |country|
        puts "              #{country.country}"
        puts "              #{country.send(column)}"
        puts "              ---------------------------"
      end
    end
  end
end
