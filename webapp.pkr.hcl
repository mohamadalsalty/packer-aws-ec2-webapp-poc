packer {
  required_plugins {
    amazon = {
      version = ">= 1.2.8"
      source  = "github.com/hashicorp/amazon"
    }
  }
}


source "amazon-ebs" "webapp" {
  ami_name      = "webapp-packer-aws"
  instance_type = "t2.micro"
  region        = "eu-central-1"
  source_ami = "ami-0a49b025fffbbdac6"
  ssh_username = "ubuntu"
  associate_public_ip_address = true
}

build {
    sources = [
      "source.amazon-ebs.webapp"
    ]
        
    provisioner "shell" {
      script = "./app.sh"
    }
    
    provisioner "file" {
      source = "./index.html"
      destination = "/tmp/index.html"
    }

    provisioner "shell" {
      inline = [
        "sudo mv /tmp/index.html /var/www/html/index.html"
      ]
    }

}