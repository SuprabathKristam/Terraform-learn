variable "v1" {
  default = "Hello world"  #plain text
}

variable "v2" {
  default = [ "Hello World", 100, true ]
}
#A Variables list supports different data types so we are trying string , including boolean ( yes/no)

variable "v3" {
  default = {
    abc = 100
    xyz = "Mahanya"
  }
}
# A variables supports map of values and we know variables having keys and values is called as Map

variable "fruits" {
  default = {
    apple={
      price = 200
      quantity = 10
    }
    banana={
      price = 40
      quantity = 20
    }
  }
}