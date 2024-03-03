# local_file provider
# 참고: https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file
# resource : 하나의 인프라 구성 요소({} 블록별)

resource "local_file" "hello-world" {
     filename = "./tmp/hello-world.txt"
     content = "hello world!"
     file_permission = "0777"
 }
