require "active_support/core_ext/integer/time"

Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true
  config.require_master_key = true
  config.public_file_server.enabled = ENV["RAILS_SERVE_STATIC_FILES"].present?
  config.assets.compile = false
  config.active_storage.service = :local
  config.force_ssl = true
  config.logger = ActiveSupport::Logger.new(STDOUT).tap { |logger| logger.formatter = ::Logger::Formatter.new }.then { |logger| ActiveSupport::TaggedLogging.new(logger) }
  config.log_level = ENV.fetch("RAILS_LOG_LEVEL", "info")
  config.action_mailer.perform_caching = false
  config.i18n.fallbacks = true
  config.active_support.report_deprecations = false
  config.active_record.dump_schema_after_migration = false
  config.log_tags = [ :request_id ] # Mantenha esta linha para logs no Render

  # Configurações específicas para o Render
  config.action_controller.asset_host = ENV['ASSET_HOST'] # Usado para servir assets via CDN (opcional, Render pode configurar)
  config.file_watcher = ActiveSupport::FileWatcher.new # Desativa o file watcher para performance

  # config.hosts = [ # Configure seus domínios se não for usar o domínio padrão do Render
  #   "example.com",
  #   /.*\.example\.com/
  # ]
  # config.host_authorization = { exclude: ->(request) { request.path == "/up" } }
end