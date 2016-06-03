require 'spec_helper'

describe AfterCommitState::Base, module: true do
  it 'ActiveRecord model should have created? and updated? methods' do
    test = Test.new
    expect(test.respond_to?(:created?)).to be_truthy
    expect(test.respond_to?(:updated?)).to be_truthy
  end

  it 'should be created? or updated?' do
    test = Test.create
    expect(test.created?).to be_truthy
    expect(test.updated?).to be_falsey

    test.update_attribute(:value, :test)
    expect(test.created?).to be_falsey
    expect(test.updated?).to be_truthy
  end
end
