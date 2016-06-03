# -*- encoding: utf-8 -*-
require File.expand_path('../lib/after_commit_state/version', __FILE__)

Gem::Specification.new do |s|
  s.name			  = 'after_commit_state'
  s.version		  = AfterCommitState::VERSION
  s.date			  = Time.new.strftime('%Y-%m-%d')
  s.summary		  = 'Check model state in after_commit callback'
  s.description	= 'Easy way to check model state in after_commit callback'
  s.authors		  = ['vitalinfo']
  s.email			  = 'vital.ryabchinskiy@gmail.com'
  s.files			  = Dir['lib/**/*'] + ['README.md']
  s.homepage    = 'https://github.com/vitalinfo/after_commit_state'
  s.license     = 'MIT'

  s.add_dependency 'activerecord', '~> 3.0', '>= 3.0.0'
  s.add_dependency 'active_support', '~> 3.0', '>= 3.0.0'
end