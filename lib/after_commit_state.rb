require 'active_record'

if defined?(ActiveRecord::Base)
  ActiveRecord::Base.raise_in_transactional_callbacks = true
  require 'after_commit_state/base'
  ActiveRecord::Base.include AfterCommitState::Base
end
