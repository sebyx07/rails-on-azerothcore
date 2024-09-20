# frozen_string_literal: true

module FixDangerousColumnsConcern
  extend ActiveSupport::Concern

  class_methods do
    def instance_method_already_implemented?(_)
      true
    end
  end
end
