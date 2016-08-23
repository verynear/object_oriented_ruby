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
    @name = Faker::Name.name
    @salary = input_options_hash[:salary]
    @active = input_options_hash[:active]
  end

  # def first_name
  #	@first_name
  # end

  # def last_name
  # @last_name
  # end

  def print_info
    puts "#{first_name} #{last_name} makes $#{@salary} a year."
  end

  def give_annual_raise
  	@salary *= 1.05
  end

  def a
  	1
  end

  def b
  	a
  end

end

employee_1 = Employee.new({first_name: 'Martha', 
			 last_name: 'Stewart', 
			 salary: 80000, 
			 active: true})
employee_2 = Employee.new({first_name: 'James', 
             last_name: 'Stewart', 
             salary: 60000, 
			 active: true})

employee_1.print_info
employee_2.print_info
puts employee_2.b

