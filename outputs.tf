output "pipes_id" {
  description = "Map of id values across all pipes, keyed the same as var.pipes except keys with no id are omitted"
  value       = { for k, v in snowflake_pipe.pipes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "pipes_auto_ingest" {
  description = "Map of auto_ingest values across all pipes, keyed the same as var.pipes except keys with no auto_ingest are omitted"
  value       = { for k, v in snowflake_pipe.pipes : k => v.auto_ingest if v.auto_ingest != null }
}
output "pipes_aws_sns_topic_arn" {
  description = "Map of aws_sns_topic_arn values across all pipes, keyed the same as var.pipes except keys with no aws_sns_topic_arn are omitted"
  value       = { for k, v in snowflake_pipe.pipes : k => v.aws_sns_topic_arn if v.aws_sns_topic_arn != null && length(v.aws_sns_topic_arn) > 0 }
}
output "pipes_comment" {
  description = "Map of comment values across all pipes, keyed the same as var.pipes except keys with no comment are omitted"
  value       = { for k, v in snowflake_pipe.pipes : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "pipes_copy_statement" {
  description = "Map of copy_statement values across all pipes, keyed the same as var.pipes except keys with no copy_statement are omitted"
  value       = { for k, v in snowflake_pipe.pipes : k => v.copy_statement if v.copy_statement != null && length(v.copy_statement) > 0 }
}
output "pipes_database" {
  description = "Map of database values across all pipes, keyed the same as var.pipes except keys with no database are omitted"
  value       = { for k, v in snowflake_pipe.pipes : k => v.database if v.database != null && length(v.database) > 0 }
}
output "pipes_error_integration" {
  description = "Map of error_integration values across all pipes, keyed the same as var.pipes except keys with no error_integration are omitted"
  value       = { for k, v in snowflake_pipe.pipes : k => v.error_integration if v.error_integration != null && length(v.error_integration) > 0 }
}
output "pipes_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all pipes, keyed the same as var.pipes except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_pipe.pipes : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "pipes_integration" {
  description = "Map of integration values across all pipes, keyed the same as var.pipes except keys with no integration are omitted"
  value       = { for k, v in snowflake_pipe.pipes : k => v.integration if v.integration != null && length(v.integration) > 0 }
}
output "pipes_name" {
  description = "Map of name values across all pipes, keyed the same as var.pipes except keys with no name are omitted"
  value       = { for k, v in snowflake_pipe.pipes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "pipes_notification_channel" {
  description = "Map of notification_channel values across all pipes, keyed the same as var.pipes except keys with no notification_channel are omitted"
  value       = { for k, v in snowflake_pipe.pipes : k => v.notification_channel if v.notification_channel != null && length(v.notification_channel) > 0 }
}
output "pipes_owner" {
  description = "Map of owner values across all pipes, keyed the same as var.pipes except keys with no owner are omitted"
  value       = { for k, v in snowflake_pipe.pipes : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "pipes_schema" {
  description = "Map of schema values across all pipes, keyed the same as var.pipes except keys with no schema are omitted"
  value       = { for k, v in snowflake_pipe.pipes : k => v.schema if v.schema != null && length(v.schema) > 0 }
}

