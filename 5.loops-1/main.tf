resource "null_resource" "test" {
  count = 10
}

#Here we are creating a null resource and asking it to run 10 times and we know that null resource does nothing but here it runs times