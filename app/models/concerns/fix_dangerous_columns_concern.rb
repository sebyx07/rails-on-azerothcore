module FixDangerousColumnsConcern
  include ActiveSupport::Concern

  class_methods do
    def instance_method_already_implemented?(_)
      true
    end
  end
end