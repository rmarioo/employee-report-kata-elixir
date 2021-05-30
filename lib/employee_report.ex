defmodule EmployeeReport do

  import Employee

  @employees [
    %Employee{name: "Luigino", age: 15},
    %Employee{name: "Sergione", age: 40},
    %Employee{name: "Marco", age: 23},
    %Employee{name: "Gigino", age: 17}
  ]

  def all() do
    @employees
  end

  def youngEmployees() do

    for emp <- @employees, emp.age < 18, do: emp

  end



end
