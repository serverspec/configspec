require "bundler/gem_tasks"
require 'rspec/core/rake_task'

task :default => :spec
task :spec => 'spec:redhat'

namespace :spec do
  oses = %w( redhat )

  oses.each do |os|
    RSpec::Core::RakeTask.new(os.to_sym) do |t|
      t.pattern = "spec/#{os}/*_spec.rb"
    end
  end
end
