resource "snowflake_pipe" "pipes" {
  for_each = var.pipes

  copy_statement    = each.value.copy_statement
  database          = each.value.database
  name              = each.value.name
  schema            = each.value.schema
  auto_ingest       = each.value.auto_ingest
  aws_sns_topic_arn = each.value.aws_sns_topic_arn
  comment           = each.value.comment
  error_integration = each.value.error_integration
  integration       = each.value.integration

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

