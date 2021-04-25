# frozen_string_literal: true

require 'rake-n-bake'

Rake::Task[:default].prerequisites.clear if Rake::Task.task_defined? :default

task default: %i[
  slim_lint
  bake:rubocop
  bake:rspec
  cucumber
  cucumber:wip
  bake:ok_rainbow
]
