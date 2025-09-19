resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo Hello Spacelift"
  }
}


output "AMI_ID" {
  value = "ami-0c1c30571d2dae5c9"
}