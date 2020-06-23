require 'employee'

class Startup

  attr_reader :name, :funding, :salaries, :employees

  def initialize(name, funding, salaries)
    @name = name
    @funding = funding
    @salaries = salaries
    @employees = []
  end

  def valid_title?(title)
    @salaries.key?(title)
  end

  def >(other_startup)
    self.funding > other_startup.funding
  end

  def hire(employee_name, title)
    if self.valid_title?(title)
      @employees << Employee.new(employee_name, title)
    else
      raise 'Employee cannot be hired'
    end
  end

  def size
    @employees.size
  end

  def pay_employee(employee)
    employee_salary = @salaries[employee.title]

    if @funding >= employee_salary
      employee.pay(employee_salary)
      @funding -= employee_salary
    else
      raise 'Not enough funding'
    end
  end

  def payday
    @employees.each { |employee| self.pay_employee(employee) }
  end

  def average_salary
    return nil if employees.size.zero?

    total_salary = 0
    @employees.each { |employee| total_salary += @salaries[employee.title] }

    total_salary / @employees.length
  end

  def close
    @employees = []
    @funding = 0
  end



end
