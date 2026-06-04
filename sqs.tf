resource "aws_sqs_queue" "sqs_message_queue" {
  name             = "inbound_sqs_queue"
  max_message_size = 262144
}
