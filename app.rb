require './country_collection'
require 'pry'
require 'csv'

data = CountryCollection.all

#CSV.open("country_test.csv", "wb") do |csv|
#  csv << Country.headers.map(&:to_s)
#  
#  data.each do |country|
#    csv << Country.columns.map{|col| country.send(col)}
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
#  puts "                  0: MORE                                                                                    "
#  puts "                                                                                                             "
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
    CountryCollection.top_10(data, "unemployment_rate")
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    when "2"
    puts "                                                               "
    puts "              AREA:                                            "
    print "       "
    puts "                                                               "
    CountryCollection.top_10(data, "area")
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    when "3"
    puts "                                                               "
    puts "              GDP PER CAPITA:                                  "
    print "       "
    puts "                                                               "
    CountryCollection.top_10(data, "gdp_per_capita")
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    when "4"
    puts "                                                               "
    puts "              ELECTRICITY CONSUMPTION:                         "
    print "       "
    puts "                                                               "
      CountryCollection.top_10(data, "electricity_consumption")
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    when "5"
    puts "                                                               "
    puts "              LABOUR FORCE:                                    "
    print "       "
    puts "                                                               "
      CountryCollection.top_10(data, "labour_force")
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    when "6"
    puts "                                                               "
    puts "              OIL PRODUCTION:                                  "
    print "       "
    puts "                                                               "
      CountryCollection.top_10(data, "oil_production")
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    when "7"
    puts "                                                               "
    puts "              POPULATION:                                      "
    print "       "
    puts "                                                               "
      CountryCollection.top_10(data, "population")
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    when "8"
    puts "                                                               "
    puts "              MILITARY EXPENDITURES ($):                       "
    print "       "
    puts "                                                               "
    CountryCollection.top_10(data, "military_expenditures_dollar_figure")
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    puts "                                                               "
    when "9"
    puts "                                                               "
    puts "              LIFE EXPECTANCY AT BIRTH:                        "
    print "       "
    puts "                                                               "
      CountryCollection.top_10(data, "life_expectancy_at_birth")
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
