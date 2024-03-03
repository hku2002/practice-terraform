resource "local_file" "random_file" {
  filename              = var.filename
  content               = random_string.random.id
  directory_permission  = var.directory_permission
  file_permission       = var.file_permission
}

resource "random_string" "random" {
  length  = 16
  special = false
  upper   = true
}
