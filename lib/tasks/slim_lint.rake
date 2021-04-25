# frozen_string_literal: true

begin
  require 'slim_lint/rake_task'

  SlimLint::RakeTask.new do |t|
    t.files = ['app/views']
  end
rescue LoadError
  desc 'slim_lint rake task not available'
  task slim_lint: :environment do
    abort 'slim_lint rake task is not available in production'
  end
end
