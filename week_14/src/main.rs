use std::io::Read;
use std::io;


 fn administrator(){
    let mut file = std::fs::File::open("globacom_dbase.sql").unwrap();
    let mut contents = String::new();
    file.read_to_string(&mut contents).unwrap();
    println!("{}", contents);
 }


 fn project_manager(){
    let mut file = std::fs::File::open("project_tb.sql").unwrap();
    let mut contents = String::new();
    file.read_to_string(&mut contents).unwrap();
    println!("{}", contents);
 }


 fn employee(){
    let mut file = std::fs::File::open("staff_tb.sql").unwrap();
    let mut contents = String::new();
    file.read_to_string(&mut contents).unwrap();
    println!("{}", contents);
 }    

 fn customer(){
    let mut file = std::fs::File::open("customer_tb.sql").unwrap();
    let mut contents = String::new();
    file.read_to_string(&mut contents).unwrap();
    println!("{}", contents);
 }

 fn vendor(){
    let mut file = std::fs::File::open("dataplan_tb.sql").unwrap();
    let mut contents = String::new();
    file.read_to_string(&mut contents).unwrap();
    println!("{}", contents);
 }


 
fn main(){
    println!("What is your position in the Company?\n");
    println!("Input 1 if administrator, 2 if Project Manager, 3 if Employee, 4 if Customer and 5 if Vendor\n");
    println!("Enter your category");
 

    let mut input1 = String::new();
    io::stdin().read_line(&mut input1).expect("Failed to read input");
    let category_decision:i32 = input1.trim().parse().expect("Invalid input");

    if category_decision == 1 {
        administrator();
    }
    else if category_decision == 2 {
        project_manager();
    }
    else if category_decision == 3{
        employee();
    }
    else if category_decision == 4{
        customer();
    }
    else if category_decision == 5{
        vendor();
}    }


