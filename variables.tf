variable "pipes" {
  description = <<EOT
Map of pipes, attributes below
Required:
    - copy_statement
    - database
    - name
    - schema
Optional:
    - auto_ingest
    - aws_sns_topic_arn
    - comment
    - error_integration
    - integration
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    copy_statement    = string
    database          = string
    name              = string
    schema            = string
    auto_ingest       = optional(bool)
    aws_sns_topic_arn = optional(string)
    comment           = optional(string)
    error_integration = optional(string)
    integration       = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

