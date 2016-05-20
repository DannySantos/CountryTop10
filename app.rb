require './country_collection'
require 'pry'
require 'csv'

data = CountryCollection.all

columns = [:country, :area, :birth_rate , :current_account_balance, :death_rate, :debt_external, :electricity_consumption, :electricity_production, :exports, :gdp, :gdp_per_capita , :gdp_real_growth_rate, :hiv_aids_adult_prevalence_rate, :hiv_aids_deaths, :hiv_aids_people_living_withhiv_aids, :highways, :imports, :industrial_production_growth_rate, :infant_mortality_rate, :inflation_rate, :internet_hosts, :internet_users, :investment, :labour_force, :life_expectancy_at_birth, :military_expenditures_dollar_figure, :military_expenditures_percent_of_gdp, :natural_gas_consumption, :natural_gas_exports, :natural_gas_imports, :natural_gas_production, :natural_gas_proved_reserves, :oil_consumption, :oil_exports, :oil_imports, :oil_production, :oil_proved_reserves, :population , :public_debt, :railways, :reserves_of_foreign_exchange_and_gold, :telephones_main_lines_in_use, :telephones_mobile_cellular, :total_fertility_rate, :unemployment_rate]

@headers = [
  "Country",
  "Area(sq km)",
  "Birth rate(births/1000 population)",    
  "Current account balance",
  "Death rate(deaths/1000 population)", 
  "Debt - external",
  "Electricity - consumption(kWh)", 
  "Electricity - production(kWh)",
  "Exports",
  "GDP",
  "GDP - per capita", 
  "GDP - real growth rate(%)",
  "HIV/AIDS - adult prevalence rate(%)",
  "HIV/AIDS - deaths",
  "HIV/AIDS - people living with HIV/AIDS", 
  "Highways(km)", 
  "Imports",
  "Industrial production growth rate(%)", 
  "Infant mortality rate(deaths/1000 live births)", 
  "Inflation rate (consumer prices)(%)",
  "Internet hosts", 
  "Internet users", 
  "Investment (gross fixed)(% of GDP)", 
  "Labor force",
  "Life expectancy at birth(years)",
  "Military expenditures - dollar figure",
  "Military expenditures - percent of GDP(%)",
  "Natural gas - consumption(cu m)",
  "Natural gas - exports(cu m)",
  "Natural gas - imports(cu m)",
  "Natural gas - production(cu m)", 
  "Natural gas - proved reserves(cu m)",
  "Oil - consumption(bbl/day)", 
  "Oil - exports(bbl/day)", 
  "Oil - imports(bbl/day)", 
  "Oil - production(bbl/day)",
  "Oil - proved reserves(bbl)", 
  "Population", 
  "Public debt(% of GDP)",
  "Railways(km)", 
  "Reserves of foreign exchange & gold",
  "Telephones - main lines in use", 
  "Telephones - mobile cellular", 
  "Total fertility rate(children born/woman)",
  "Unemployment rate(%)"
]

#CSV.open("country_test.csv", "wb") do |csv|
#  csv << @headers.map(&:to_s)
#  
#  data.each do |country|
#    csv << columns.map{|col| country.send(col)}
#  end
#end

  puts "                                                                                                             "
  puts "       ======================================================================================================"
  puts "       ======================================================================================================"
  puts "       ||                                                                                                  ||"
  puts "       ||                                       COUNTRY TOP 10 FACTS                                       ||"
  puts "       ||                                                                                                  ||"
  puts "       ======================================================================================================"
  puts "       ======================================================================================================"
  
  
menu_choice = nil
message = nil

until menu_choice == "q"

  puts "                                                                                                             "
  puts "                #{message}                                                                                   "
  puts "                                                                                                             "
  puts "                -------------------------------------------                                                  "
  puts "                MENU - FIND COUNTRIES THAT ARE TOP 10 FOR:                                                   "
  puts "                -------------------------------------------                                                  "
  puts "                  1: UNEMPLOYMENT                                                                            "
  puts "                  2: AREA                                                                                    "
  puts "                  3: GDP PER CAPITA                                                                          "
  puts "                  4: ELECTRICITY CONSUMPTION                                                                 "
  puts "                  5: LABOUR FORCE                                                                            "
  puts "                  6: OIL PRODUCTION                                                                          "
  puts "                  7: POPULATION                                                                              "
  puts "                  8: MILITARY EXPENDITURES ($)                                                               "
  puts "                  9: LIFE EXPECTANCY AT BIRTH                                                                "
  puts "                  Q: QUIT                                                                                    "
  puts "                                                                                                             "

  menu_choice = begin
                  system("stty raw -echo")
                  str = STDIN.getc
                ensure
                  system("stty -raw echo")
                end

  case menu_choice
  when "1"
    puts "              UNEMPLOYMENT RATE:                               "
    puts "                                                               "
    CountryCollection.unemployment(data)
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    when "2"
    puts "                                                               "
    puts "              AREA:                                            "
    print "       "
    puts "                                                               "
    CountryCollection.area(data)
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    when "3"
    puts "                                                               "
    puts "              GDP PER CAPITA:                                  "
    print "       "
    puts "                                                               "
    CountryCollection.gdp_per_capita(data)
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    when "4"
    puts "                                                               "
    puts "              ELECTRICITY CONSUMPTION:                         "
    print "       "
    puts "                                                               "
    CountryCollection.electricity_consumption(data)
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    when "5"
    puts "                                                               "
    puts "              LABOUR FORCE:                                    "
    print "       "
    puts "                                                               "
    CountryCollection.labour_force(data)
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    when "6"
    puts "                                                               "
    puts "              OIL PRODUCTION:                                  "
    print "       "
    puts "                                                               "
    CountryCollection.oil_production(data)
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    when "7"
    puts "                                                               "
    puts "              POPULATION:                                      "
    print "       "
    puts "                                                               "
    CountryCollection.population(data)
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    when "8"
    puts "                                                               "
    puts "              MILITARY EXPENDITURES ($):                       "
    print "       "
    puts "                                                               "
    CountryCollection.military_expenditures(data)
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    when "9"
    puts "                                                               "
    puts "              LIFE EXPECTANCY AT BIRTH:                        "
    print "       "
    puts "                                                               "
    CountryCollection.life_expectancy_at_birth(data)
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
  when "Q"
    menu_choice.downcase!
  when "q"
    menu_choice
  else
    puts "       INVALID COMMAND! CHOOSE AN OPTION FROM THE MENU:        "
    puts "                                                               "
  end

  message = "SELECT ANOTHER OPTION:"
end
