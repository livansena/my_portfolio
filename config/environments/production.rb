# config/environments/production.rb

Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true
  # config.require_master_key = true
  config.public_file_server.enabled = ENV["RAILS_SERVE_STATIC_FILES"].present?
  config.assets.compile = false
  config.active_storage.service = :local
  config.force_ssl = true
  config.log_formatter = ::Logger::Formatter.new
  config.logger = ActiveSupport::Logger.new("log/production.log")
  config.logger.formatter = config.log_formatter
  config.active_record.dump_schema_after_migration = false
  config.log_level = :info
  config.log_tags = [ :request_id ]
  config.action_controller.asset_host = ENV['ASSET_HOST']
  # config.file_watcher = ActiveSupport::FileWatcher.new
end