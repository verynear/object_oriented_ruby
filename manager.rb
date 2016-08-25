module Actualize
  class Manager < Employee
    include Emailing

    def initialize(input_options_hash)
      super(input_options_hash)
      @employees = input_options_hash[:employees]
    end

    def give_all_raises
      @employees.each do |employee|
        employee.give_annual_raise
      end
    end

    def fire_all_employees
      @employees.each do |employee|
        employee.active = false
      end
    end
  end
end
