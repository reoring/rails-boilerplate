web: bundle exec puma -C config/puma.rb
worker: export LOG_LEVEL=warn; mkdir -p tmp/pids && bundle exec sidekiq -C config/sidekiq.yml
