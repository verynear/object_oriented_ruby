require 'faker'

# employee_1 = {first_name: 'Martha', 
			# last_name: 'Stewart', 
			# salary: 80000, 
			# active: true}
# employee_2 = {first_name: 'James', 
  # last_name: 'Stewart', 
 # salary: 60000, 
			# active: true}

# puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes $#{employee_1[:salary]} a year."
# puts "#{employee_2[:first_name]} #{employee_2[:last_name]} makes $#{employee_2[:salary]} a year."

#-----------------------

class Employee
  attr_reader :first_name, :last_name

  def initialize(input_options_hash)
    @first_name = input_options_hash[:first_name]
    @last_name = input_options_hash[:last_name]
    @salary = input_options_hash[:salary]
    @active = input_options_hash[:active]
  end

  def print_info
    puts "#{first_name} #{last_name} makes $#{@salary} a year."
  end

  def give_annual_raise
  	@salary *= 1.05
  end


end

employees = []

99.times do |new_employee|
	new_employee = Employee.new({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, salary: Faker::Number.number(5), active: Faker::Boolean.boolean})
	employees << new_employee.print_info
end

puts employees




