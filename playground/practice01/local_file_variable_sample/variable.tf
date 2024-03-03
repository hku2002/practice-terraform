variable "filename" {
  type        = string
  default     = "./tmp/foo.txt"
  description = "기본 파일명"
}

variable "content" {
  type = string
  default = "default content foo!"
  description = "파일 내용"
}

variable "directory_permission" {
  type        = string
  default     = "0755"
  description = "디렉토리 권한"
}

variable "file_permission" {
  type        = string
  default     = "0755"
  description = "파일 권한"
}
