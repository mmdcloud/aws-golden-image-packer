# Outputs
output "image_pipeline_arn" {
  value = aws_imagebuilder_image_pipeline.golden_ami.arn
}

output "sns_topic_arn" {
  value = aws_sns_topic.ami_notifications.arn
}