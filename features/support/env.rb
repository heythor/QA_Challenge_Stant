require 'capybara/cucumber'
require 'report_builder'
require 'rspec'
require_relative '../teste/life_period_teste.rb'
require_relative '../teste/thermostat_test.rb'
require_relative '../teste/interest_rate_calculator_test.rb'

include LifePeriodModule
include ThermostatModule
include InterestCalculatorRateModule