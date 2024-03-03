terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.4.1"
    }
  }
}

resource "local_file" "random_file" {
  filename             = var.filename
  content              = random_string.random.result
  directory_permission = var.directory_permission
  file_permission      = var.file_permission
  depends_on           = [random_string.random]
}

resource "random_string" "random" {
  length  = 16
  special = false
  upper   = true
}

# terraform apply 후 terraform output random_code_output_result 을 하면 output 결과를 볼 수 있음
output "random_code_output_result" {
  value       = random_string.random.result
  description = "랜덤 문제 결과값"
}
