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

    young(@employees)

  end

  defp young(emps) do

    for emp <- emps, emp.age < 18, do: emp

  end

  def employeesSortByName do
    @employees |>
    sortByName
  end

  defp sortByName(emps) do
    Enum.sort(emps, fn x,y -> x.name < y.name end)
  end

  def employeesSortByNameDescending do
    Enum.sort(@employees, fn x,y -> y.name < x.name end)
  end

  def allCapitalized do
    for emp <- @employees, do: %Employee{emp | name: String.capitalize(emp.name)}
  end

  def allCapitalizedV2 do
     for emp <- @employees, do: %Employee{name: String.capitalize(emp.name), age: emp.age}
  end

  def allCapitalizedV1 do
    Enum.map(@employees, fn emp -> %Employee{name: String.capitalize(emp.name), age: emp.age} end)
  end

  def employeesCapitalizedAndSortByName do
    allCapitalized
    |> sortByName

  end

  def youngEmployeesCapitalizedAndSortByName do
    allCapitalized
    |> sortByName
    |> young

  end





end
