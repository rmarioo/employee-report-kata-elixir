defmodule EmployeeReportTest do
  use ExUnit.Case
  doctest EmployeeReport


  describe "As shop owner" do
    test "I want to view a list of all employees" do
      assert EmployeeReport.all() == [
               %Employee{age: 15, name: "luigino"},
               %Employee{age: 40, name: "sergione"},
               %Employee{name: "marco", age: 23},
               %Employee{name: "gigino", age: 17}
             ]
    end

    test "I want to view a list of all employees younger than 18" do
      assert EmployeeReport.youngEmployees() == [
               %Employee{age: 15, name: "luigino"},
               %Employee{name: "gigino", age: 17}
             ]
    end

    test "I want the list of employees to be sorted by their name, so I can find employees easier." do
      assert EmployeeReport.employeesSortByName() == [
               %Employee{name: "gigino", age: 17},
               %Employee{name: "luigino", age: 15},
               %Employee{name: "marco", age: 23},
               %Employee{name: "sergione", age: 40}
            ]
    end

    test "I want the employees to be sorted by their names descending instead of ascending" do
      assert EmployeeReport.employeesSortByNameDescending() == [
               %Employee{name: "sergione", age: 40},
               %Employee{name: "marco", age: 23},
               %Employee{name: "luigino", age: 15},
               %Employee{name: "gigino", age: 17}
             ]
    end

    test "I want the list of employees to be capitalized, so I can read it better" do
      assert EmployeeReport.allCapitalized() == [
               %Employee{age: 15, name: "Luigino"},
               %Employee{age: 40, name: "Sergione"},
               %Employee{name: "Marco", age: 23},
               %Employee{name: "Gigino", age: 17}
             ]
    end


    test "I want the list of employees capitalized andsorted by their name, so I can find employees easier." do
      assert EmployeeReport.employeesCapitalizedAndSortByName() == [
               %Employee{name: "Gigino", age: 17},
               %Employee{name: "Luigino", age: 15},
               %Employee{name: "Marco", age: 23},
               %Employee{name: "Sergione", age: 40}
             ]
    end

    test "I want the list of young employees capitalized andsorted by their name, so I can find
    employees easier." do
      assert EmployeeReport.youngEmployeesCapitalizedAndSortByName() == [
               %Employee{name: "Gigino", age: 17},
               %Employee{name: "Luigino", age: 15}
             ]
    end

  end
end
