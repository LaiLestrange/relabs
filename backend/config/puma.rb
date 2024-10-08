workers Integer(ENV['WEB_CONCURRENCY'] || 2)
threads_count = Integer(ENV['MAX_THREADS'] || 5)
threads threads_count, threads_count

preload_app!

rackup      File.expand_path('config.ru', __dir__)
port        ENV['PORT']     || 4422
environment ENV['RACK_ENV'] || 'development'
