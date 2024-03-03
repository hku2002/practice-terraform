# variable 을 활용한 resource 샘플

resource "local_file" "foo" {
  filename = var.filename
  content  = var.content
  directory_permission = var.directory_permission
  file_permission = var.file_permission
}
