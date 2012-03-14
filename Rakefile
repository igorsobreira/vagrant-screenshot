require "bundler/gem_tasks"

desc "Run test suite"
task :test do
  $:.unshift File.expand_path("../test", __FILE__)

  Dir["test/test_*"].each do |f|
    load f
  end
end
