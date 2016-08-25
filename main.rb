require './emailing.rb'
require './employee.rb'
require './manager.rb'
require './intern.rb'

employee_1 = Actualize::Employee.new({first_name: 'Martha', 
       last_name: 'Stewart', 
       salary: 80000, 
       active: true})
employee_2 = Actualize::Employee.new({first_name: 'James', 
             last_name: 'Stewart', 
             salary: 60000, 
       active: true})

manager = Actualize::Manager.new({first_name: 'Nanny', 
       last_name: 'Manor', 
       salary: 10000000, 
       active: true,
       employees: [employee_1, employee_2]})

intern = Actualize::Intern.new({first_name: "Master", last_name: "Yoda", salary: 1000, active: true})

manager.print_info
manager.send_report
