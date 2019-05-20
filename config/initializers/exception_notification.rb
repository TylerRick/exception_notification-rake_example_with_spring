Rails.application.configure do
  config.middleware.use(ExceptionNotification::Rack,
    email: {
      email_prefix: "[#{Rails.application.class}] ",
      exception_recipients: 'admin@example.com',
    }
  )

  ExceptionNotifier::Rake.configure
end
