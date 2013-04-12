# -*- encoding: utf-8 -*-
$:.unshift File.expand_path("../lib", __FILE__)
require "resque_scheduler/version"

Gem::Specification.new do |s|
  s.name        = "resque-scheduler"
  s.version     = ResqueScheduler::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Ben VandenBos']
  s.email       = ['bvandenbos@gmail.com']
  s.homepage    = "http://github.com/bvandenbos/resque-scheduler"
  s.summary     = "Light weight job scheduling on top of Resque"
  s.description = %q{Light weight job scheduling on top of Resque.
    Adds methods enqueue_at/enqueue_in to schedule jobs in the future.
    Also supports queueing jobs on a fixed, cron-like schedule.}

  s.required_rubygems_version = ">= 1.3.6"
  s.add_development_dependency "bundler", ">= 1.0.0"

  files          =<<END
Gemfile
HISTORY.md
LICENSE
README.markdown
Rakefile
lib/resque/scheduler.rb
lib/resque/scheduler/lock.rb
lib/resque/scheduler/lock/base.rb
lib/resque/scheduler/lock/basic.rb
lib/resque/scheduler/lock/resilient.rb
lib/resque/scheduler_locking.rb
lib/resque_scheduler.rb
lib/resque_scheduler/plugin.rb
lib/resque_scheduler/server.rb
lib/resque_scheduler/server/views/delayed.erb
lib/resque_scheduler/server/views/delayed_timestamp.erb
lib/resque_scheduler/server/views/scheduler.erb
lib/resque_scheduler/tasks.rb
lib/resque_scheduler/version.rb
resque-scheduler.gemspec
tasks/resque_scheduler.rake
test/delayed_queue_test.rb
test/redis-test.conf
test/resque-web_test.rb
test/scheduler_args_test.rb
test/scheduler_hooks_test.rb
test/scheduler_locking_test.rb
test/scheduler_test.rb
test/support/redis_instance.rb
test/test_helper.rb
END


  s.files        = files.split("\n")
  s.executables  = files.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'

  s.add_runtime_dependency(%q<redis>, [">= 2.0.1"])
  s.add_runtime_dependency(%q<resque>, [">= 1.20.0"])
  s.add_runtime_dependency(%q<rufus-scheduler>, [">= 0"])
end
