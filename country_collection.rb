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
    unemployment_data = data.reject{|country| country.unemployment_rate.nil?}.sort.reverse[0..9]
    
    unemployment_data.each do |country|
      puts "              #{country.country}"
      puts "              #{country.unemployment_rate}"
      puts "              ---------------------------"
    end
  end
  
  def self.area(data)
    area_data = data.sort {|a,b| a.area.to_f <=> b.area.to_f}.reverse[0..9]
    
    area_data.each do |country|
      puts "              #{country.country}"
      puts "              #{country.area}"
      puts "              ---------------------------"
    end
  end
  
  def self.gdp_per_capita(data)
    area_data = data.sort {|a,b| a.gdp_per_capita.to_f <=> b.gdp_per_capita.to_f}.reverse[0..9]
    
    area_data.each do |country|
      puts "              #{country.country}"
      puts "              #{country.gdp_per_capita}"
      puts "              ---------------------------"
    end
  end
  
  def self.electricity_consumption(data)
    area_data = data.sort {|a,b| a.electricity_consumption.to_f <=> b.electricity_consumption.to_f}.reverse[0..9]
    
    area_data.each do |country|
      puts "              #{country.country}"
      puts "              #{country.electricity_consumption}"
      puts "              ---------------------------"
    end
  end
  
  def self.labour_force(data)
    area_data = data.sort {|a,b| a.labour_force.to_f <=> b.labour_force.to_f}.reverse[0..9]
    
    area_data.each do |country|
      puts "              #{country.country}"
      puts "              #{country.labour_force}"
      puts "              ---------------------------"
    end
  end
  
  def self.oil_production(data)
    area_data = data.sort {|a,b| a.oil_production.to_f <=> b.oil_production.to_f}.reverse[0..9]
    
    area_data.each do |country|
      puts "              #{country.country}"
      puts "              #{country.oil_production}"
      puts "              ---------------------------"
    end
  end
  
  def self.population(data)
    area_data = data.sort {|a,b| a.population.to_f <=> b.population.to_f}.reverse[0..9]
    
    area_data.each do |country|
      puts "              #{country.country}"
      puts "              #{country.population}"
      puts "              ---------------------------"
    end
  end
  
  def self.life_expectancy_at_birth(data)
    area_data = data.sort {|a,b| a.life_expectancy_at_birth.to_f <=> b.life_expectancy_at_birth.to_f}.reverse[0..9]
    
    area_data.each do |country|
      puts "              #{country.country}"
      puts "              #{country.life_expectancy_at_birth}"
      puts "              ---------------------------"
    end
  end
  
  def self.military_expenditures(data)
    area_data = data.sort {|a,b| a.military_expenditures_dollar_figure.to_f <=> b.military_expenditures_dollar_figure.to_f}.reverse[0..9]
    
    area_data.each do |country|
      puts "              #{country.country}"
      puts "              #{country.military_expenditures_dollar_figure}"
      puts "              ---------------------------"
    end
  end
  
  
  
end




