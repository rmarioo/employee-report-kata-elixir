defmodule EmployeeReportTest do
  use ExUnit.Case
  doctest EmployeeReport


  describe "As shop owner" do
    test "I want to view a list of all employees" do
      assert EmployeeReport.all() == [
               %Employee{age: 15, name: "Luigino"},
               %Employee{age: 40, name: "Sergione"},
               %Employee{name: "Marco", age: 23},
               %Employee{name: "Gigino", age: 17}
             ]
    end

    test "I want to view a list of all employees younger than 18" do
      assert EmployeeReport.youngEmployees() == [
               %Employee{age: 15, name: "Luigino"},
               %Employee{name: "Gigino", age: 17}
             ]
    end

  end
end
