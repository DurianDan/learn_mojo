# FUNCTIONS
## can be declared with `def` or `fn`
def greet(name):
    # return f"Hello {name} !" #=> will throw error
    # string formating not like python
    end_sentence = "!"
    return "Hello " + name + end_sentence

# function defined by `fn`
## requires you to specify the types of the parameters and variables inside is
fn greet2(name: String) -> String:
    let end_sentence: String = "!"
    return "Hello " + name + end_sentence

struct Employee:
    var name: String
    var salary: Float32
    var age: Int8
    var year_senority: Float16

    fn __init__(
        inout self,
        name: String,
        salary: Float32,
        age: Int8,
        year_senority: Float16,
    ):
        self.name = name
        self.salary = salary
        self.age = age
        self.year_senority = year_senority

    fn compare_salary(
        self,
        other: Employee
    ) -> String:
        if other.salary == self.salary:
            return "equal"
        if self.salary > other.salary:
            return "greater"
        return "smaller"

    fn getstr(self) -> String:
        return "Employee(" 
            + "name=" + self.name
            + ", salary=" + self.salary
            + ", age=" + self.age
            + ", year_senority=" + self.year_senority

fn main():
    let my_name = "Huy"
    print(greet2(my_name))
    let emp1: Employee = Employee(
        "Huy", 100_000.0, 24, 1.8
    )
    let emp2: Employee = Employee(
        "Linh", 100_000.0, 23, 2
    )
    print(emp2.compare_salary(emp1))
