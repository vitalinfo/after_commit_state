require 'active_record'

if defined?(ActiveRecord::Base)
  if ActiveRecord::VERSION::MAJOR >= 4 && ActiveRecord::VERSION::MAJOR < 5
    ActiveRecord::Base.raise_in_transactional_callbacks = true
  end
  require 'after_commit_state/base'
  ActiveRecord::Base.include AfterCommitState::Base
end
