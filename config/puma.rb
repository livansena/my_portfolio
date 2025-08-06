# config/puma.rb

# Define o número de threads (conexões simultâneas que um worker pode lidar)
# Valores comuns: 5 a 16. Mantenha 5-5 para um aplicativo pequeno.
threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
threads threads_count, threads_count

# Define o número de workers (processos que rodam sua aplicação)
# Em planos menores do Render (Free/Starter), 1 worker é comum.
workers ENV.fetch("WEB_CONCURRENCY") { 1 }

# Conecta ao socket UNIX para melhor performance (Render configura isso)
# ou usa a porta HTTP
if ENV["RAILS_ENV"] == "production"
  bind "unix:///tmp/puma.sock" # Render usa um socket UNIX
else
  port ENV.fetch("PORT") { 3000 } # Para desenvolvimento local
end

# Define o ambiente da aplicação (production, development, test)
environment ENV.fetch("RAILS_ENV") { "development" }

# Caminho para os logs do Puma
pidfile ENV.fetch("PIDFILE") { "tmp/pids/puma.pid" }
state_path ENV.fetch("STATE_PATH") { "tmp/pids/puma.state" }
stdout_redirect "log/puma.stdout.log", "log/puma.stderr.log", true

# Reinicia workers que usam muita memória (útil para apps grandes)
# prune_bundler

# Tempo de espera para o shutdown dos workers
# worker_timeout 30