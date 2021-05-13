# See https://docs.aws.amazon.com/lambda/latest/dg/tutorial-scheduled-events-schedule-expressions.html
# for how to write schedule expressions
variable "backup_schedule" {
  default     = "cron(00 19 * * ? *)"
  description = "The scheduling expression. (e.g. cron(0 20 * * ? *) or rate(5 minutes)"
}

variable "cleanup_schedule" {
  default     = "cron(05 19 * * ? *)"
  description = "The scheduling expression. (e.g. cron(0 20 * * ? *) or rate(5 minutes)"
}

variable "ami_owner" {
  default     = ""
  description = "AWS Account ID which is used as a filter for AMI list (e.g. `123456789012`)"
}

variable "region" {
  default     = ""
  description = "AWS Region where module should operate (e.g. `us-east-1`)"
}

variable "retention_days" {
  default     = "14"
  description = "Is the number of days you want to keep the backups for (e.g. `14`)"
}

variable "instance_id" {
  description = "AWS Instance ID which is used for creating the AMI image (e.g. `id-123456789012`)"
}

variable "block_device_mappings" {
  description = "List of block device mappings to be included/excluded from created AMIs. With default value of [], AMIs will include all attached EBS volumes "
  type        = list(string)
  default     = []
}

variable "name" {
  default     = ""
  description = "Name  (e.g. `bastion` or `db`)"
}

variable "namespace" {
  default     = ""
  description = "Namespace (e.g. `cp` or `cloudposse`)"
}

variable "stage" {
  default     = ""
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
}

variable "reboot" {
  default     = false
  description = "Reboot the machine as part of the snapshot process"
}

