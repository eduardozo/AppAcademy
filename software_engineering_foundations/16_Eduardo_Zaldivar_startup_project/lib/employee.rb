class Employee

  attr_accessor :name, :title

  def initialize(name, title)
    @name = name
    @title = title
    @earnings = 0
  end

  def pay(salary)
    @earnings += salary
  end

end
