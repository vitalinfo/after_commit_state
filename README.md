# after_commit_state

Use this module to check model state in after_commit callback, is it was created or updated.

## Usage

Add the following to your Gemfile:
```ruby
gem 'after_commit_state'
```

Now you can use it in ActiveRecord model after_commit callback
```ruby
after_commit :after_commit_hook
def after_commit_hook
  puts 'Created' if created?
  puts 'Updated' if updated?
end
```
