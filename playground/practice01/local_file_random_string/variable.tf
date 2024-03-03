variable "filename" {
  type        = string
  default     = "./tmp/random.txt"
  description = "기본 파일명"
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
