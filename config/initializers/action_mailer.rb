ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  port: ENV.fetch("MAILGUN_SMTP_PORT"),
  address: ENV.fetch("MAILGUN_SMTP_SERVER"),
  user_name: ENV.fetch("MAILGUN_SMTP_LOGIN"),
  password: ENV.fetch("MAILGUN_SMTP_PASSWORD"),
  domain: "example.org",
  authentication: :login,
  enable_starttls_auto: true,
}
