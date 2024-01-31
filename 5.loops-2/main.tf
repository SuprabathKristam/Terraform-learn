variable "fruits" {
  default = {
    apple = 10
    banana = 100
  }
}
variable "fruits2" {
  default = {
    apple = {
      name = "apple"
      quantity = "200"
    }
    banana = {
      name = "banana"
      quantity = "300"
    }
  }
}
# Now if i want to iterate these kind of variables having maps I have to use for each loop
resource "null_resource" "test1" {  # this is a dummy resource that absolutely does nothing
  for_each = var.fruits           # for each will iterate all the values in fruits variable
  provisioner "local-exec" {
    command = "echo ${each.key} = ${each.value}" #Here in the map one key has one value like apple=10 like that
  }
}