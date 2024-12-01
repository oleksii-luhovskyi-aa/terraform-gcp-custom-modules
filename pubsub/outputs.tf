output "res_topic_id" {
  value = google_pubsub_topic.topic.id
}

output "res_subscription_id" {
  value = google_pubsub_subscription.subscription.id
}