class Country
  include Comparable
  
  def self.columns
    [:country, :area, :birth_rate , :current_account_balance, :death_rate, :debt_external, :electricity_consumption, :electricity_production, :exports, :gdp, :gdp_per_capita , :gdp_real_growth_rate, :hiv_aids_adult_prevalence_rate, :hiv_aids_deaths, :hiv_aids_people_living_withhiv_aids, :highways, :imports, :industrial_production_growth_rate, :infant_mortality_rate, :inflation_rate, :internet_hosts, :internet_users, :investment, :labour_force, :life_expectancy_at_birth, :military_expenditures_dollar_figure, :military_expenditures_percent_of_gdp, :natural_gas_consumption, :natural_gas_exports, :natural_gas_imports, :natural_gas_production, :natural_gas_proved_reserves, :oil_consumption, :oil_exports, :oil_imports, :oil_production, :oil_proved_reserves, :population , :public_debt, :railways, :reserves_of_foreign_exchange_and_gold, :telephones_main_lines_in_use, :telephones_mobile_cellular, :total_fertility_rate, :unemployment_rate]
  end
  
  attr_accessor *self.columns

  def <=>(other)
    case
    when self.unemployment_rate.nil?
      1
    when other.unemployment_rate.nil?
      -1
    when self.unemployment_rate.to_f < other.unemployment_rate.to_f
      -1
    when self.unemployment_rate.to_f == other.unemployment_rate.to_f
      0
    else  
      1
    end
  end
  
  def initialize(country, area, birth_rate , current_account_balance, death_rate, debt_external, electricity_consumption, electricity_production, exports, gdp, gdp_per_capita , gdp_real_growth_rate, hiv_aids_adult_prevalence_rate, hiv_aids_deaths, hiv_aids_people_living_withhiv_aids, highways, imports, industrial_production_growth_rate, infant_mortality_rate, inflation_rate, internet_hosts, internet_users, investment, labour_force, life_expectancy_at_birth, military_expenditures_dollar_figure, military_expenditures_percent_of_gdp, natural_gas_consumption, natural_gas_exports, natural_gas_imports, natural_gas_production, natural_gas_proved_reserves, oil_consumption, oil_exports, oil_imports, oil_production, oil_proved_reserves, population , public_debt, railways, reserves_of_foreign_exchange_and_gold, telephones_main_lines_in_use, telephones_mobile_cellular, total_fertility_rate, unemployment_rate)
    @country = country
    @area = area
    @birth_rate  = birth_rate 
    @current_account_balance = current_account_balance
    @death_rate = death_rate
    @debt_external = debt_external
    @electricity_consumption = electricity_consumption
    @electricity_production = electricity_production
    @exports = exports
    @gdp = gdp
    @gdp_per_capita  = gdp_per_capita 
    @gdp_real_growth_rate = gdp_real_growth_rate
    @hiv_aids_adult_prevalence_rate = hiv_aids_adult_prevalence_rate
    @hiv_aids_deaths = hiv_aids_deaths
    @hiv_aids_people_living_withhiv_aids = hiv_aids_people_living_withhiv_aids
    @highways = highways
    @imports = imports
    @industrial_production_growth_rate = industrial_production_growth_rate
    @infant_mortality_rate = infant_mortality_rate
    @inflation_rate = inflation_rate
    @internet_hosts = internet_hosts
    @internet_users = internet_users
    @investment = investment
    @labour_force = labour_force
    @life_expectancy_at_birth = life_expectancy_at_birth
    @military_expenditures_dollar_figure = military_expenditures_dollar_figure
    @military_expenditures_percent_of_gdp = military_expenditures_percent_of_gdp
    @natural_gas_consumption = natural_gas_consumption
    @natural_gas_exports = natural_gas_exports
    @natural_gas_imports = natural_gas_imports
    @natural_gas_production = natural_gas_production
    @natural_gas_proved_reserves = natural_gas_proved_reserves
    @oil_consumption = oil_consumption
    @oil_exports = oil_exports
    @oil_imports = oil_imports
    @oil_production = oil_production
    @oil_proved_reserves = oil_proved_reserves
    @population  = population 
    @public_debt = public_debt
    @railways = railways
    @reserves_of_foreign_exchange_and_gold = reserves_of_foreign_exchange_and_gold
    @telephones_main_lines_in_use = telephones_main_lines_in_use
    @telephones_mobile_cellular = telephones_mobile_cellular
    @total_fertility_rate = total_fertility_rate
    @unemployment_rate = unemployment_rate    
  end
  
  def self.headers
    [
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
  
  end
  
end