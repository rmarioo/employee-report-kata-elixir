defmodule EmployeeReport do

  import Employee

  @employees [
    %Employee{name: "luigino", age: 15},
    %Employee{name: "sergione", age: 40},
    %Employee{name: "marco", age: 23},
    %Employee{name: "gigino", age: 17}
  ]

  def all() do
    @employees
  end

  def youngEmployees() do

    for emp <- @employees, emp.age < 18, do: emp

  end

  def employeesSortByName do
    Enum.sort(@employees, fn x,y -> x.name < y.name end)
  end



end
