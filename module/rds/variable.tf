


variable "allocated_storage" {
  description = "The size of the database (in GB)."
  type        = number
  default     = 400
}

variable "engine" {
  description = "The database engine to use (e.g., mysql, postgres)."
  type        = string
}

variable "engine_version" {
  description = "The version of the database engine."
  type        = string
}

variable "instance_class" {
  description = "The instance type of the RDS instance."
  type        = string
}

variable "db_name" {
  description = "The name of the database to create."
  type        = string
}

variable "username" {
  description = "The master username for the database."
  type        = string
}

variable "password" {
  description = "The master password for the database."
  type        = string
  sensitive   = true
}

variable "parameter_group_name" {
  description = "The name of the DB parameter group to associate."
  type        = string
  default     = null
}

variable "publicly_accessible" {
  description = "Whether the DB instance is publicly accessible."
  type        = bool
  default     = true
}

variable "security_group_ids" {
  description = "A list of VPC security groups to associate with the DB instance."
  type        = list(string)
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group."
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the DB subnet group."
  type        = list(string)
}

variable "storage_type" {
  description = "The storage type (e.g., standard, gp2, io1)."
  type        = string
  default     = "gp2"
}

variable "multi_az" {
  description = "Specifies if the RDS instance is multi-AZ."
  type        = bool
  default     = false
}

variable "backup_retention_period" {
  description = "The number of days to retain backups."
  type        = number
  default     = 7
}

variable "skip_final_snapshot" {
  description = "Whether to skip the final snapshot when deleting the DB instance."
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "kms_key_id" {
  description = "The ARN of the KMS key to use for storage encryption."
  type        = string
  default     = null
}

variable "storage_encrypted" {
  description = "Specifies whether to enable storage encryption."
  type        = bool
  default     = false
}
