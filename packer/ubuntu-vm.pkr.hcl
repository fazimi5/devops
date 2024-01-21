variable "ami_id" {
  type    = string
  default = "ami-0905a3c97561e0b69"
}

variable "app_name" {
  type    = string
  default = "nginx"
}


source "amazon-ebs" "nginx" {
  ami_name      = "PACKER-DEMO-${var.app_name}"
  instance_type = "t2.micro"
  region        = "eu-west-1"
  source_ami    = "${var.ami_id}"
  ssh_username  = "ubuntu"
  tags = {
    Env  = "DEMO"
    Name = "PACKER-DEMO-${var.app_name}"
  }
}

build {
  sources = ["source.amazon-ebs.nginx"]

  provisioner "shell" {
    script = "scripts/baseline_packages.sh"
  }
}
