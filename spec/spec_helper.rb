$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')
require 'sqlite3'
require 'after_commit_state'

ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: ":memory:")

ActiveRecord::Schema.define(version: 1) do
  create_table "tests", force: true do |t|
    t.string   "value"
  end
end

class Test < ActiveRecord::Base
end