require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Code is not reloaded between requests.
  config.enable_reloading = false

  # Eager load code on boot for better performance in production.
  config.eager_load = true

  # Full error reports are disabled.
  config.consider_all_requests_local = false

  # Enable caching.
  config.action_controller.perform_caching = true

  # Serve static files with long cache headers.
  config.public_file_server.headers = {
    "cache-control" => "public, max-age=#{1.year.to_i}"
  }

  # Store uploaded files locally.
  config.active_storage.service = :local

  # Log to STDOUT for Heroku.
  config.log_tags = [ :request_id ]
  config.logger = ActiveSupport::TaggedLogging.logger(STDOUT)
  config.log_level = ENV.fetch("RAILS_LOG_LEVEL", "info")

  # Prevent health checks from clogging up logs.
  config.silence_healthcheck_path = "/up"

  # Don't log deprecations in production.
  config.active_support.report_deprecations = false

  # Use simple Heroku-friendly cache and job adapters instead of Solid Cache / Solid Queue.
  config.cache_store = :memory_store
  config.active_job.queue_adapter = :async

  # Mailer host placeholder.
  config.action_mailer.default_url_options = { host: "example.com" }

  # Use fallbacks for missing translations.
  config.i18n.fallbacks = true

  # Do not dump schema after migrations in production.
  config.active_record.dump_schema_after_migration = false

  # Limit attributes shown in inspect.
  config.active_record.attributes_for_inspect = [ :id ]
end
