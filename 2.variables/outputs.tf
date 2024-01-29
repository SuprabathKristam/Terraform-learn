output "v1" {
  value = var.v1   #accessing the variables(v1) value that is declared in variables.tf
}

output "First_values_in_list" {
  value = var.v2[0]  # Indexing starts from 0 so it will access 0th value of v2 variable
}

output "second_values_in_list" {
  value = var.v2[1]  # Indexing starts from 0 so it will access 1st value of v2 variable
}

output "Value_in_Map" {
  value = var.v3["xyz"] # To access values in map just give the key and it will access its value
}