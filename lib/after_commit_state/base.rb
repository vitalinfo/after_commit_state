require 'active_support/concern'

module AfterCommitState
  module Base
    extend ActiveSupport::Concern

    included do
      after_create do
        @after_callback_state = :created
      end

      after_update do
        @after_callback_state = :updated
      end

      def created?
        @after_callback_state == :created
      end

      def updated?
        @after_callback_state == :updated
      end
    end
  end
end
