output "v1" {
  value = var.v1   #accessing the variables(v1) value that is declared in variables.tf
}

output "First_values_in_list" {
  value = var.v2[0]  # Indexing starts from 0 so it will access 0th value of v2 variable
}

output "second_values_in_list" {
  value = var.v2[1]  # Indexing starts from 0 so it will access 1st value of v2 variable
}

/*
output "Value_in_Map1" {
  value = var.v3["xyz"] # To access values in map just give the key and it will access its value
}*/
output "Value_in_Map2" {
  value = lookup(var.v3, "xyz1", "none")
}
#here we are using lookup where we are trying to access a key that is not present in map then print none

output "value_in_list1" {
  value = element(var.v2 ,4) # this will print 4th value and the index will work as 0,1,2,3,4,5,6..cycles
    }

output "fruit_details" {
  value = "Fruit name - Apple , Quantity - ${var.fruits["apple"]["quantity"]}" # Here we are using ${} to access variable as we are using it along with a string
}