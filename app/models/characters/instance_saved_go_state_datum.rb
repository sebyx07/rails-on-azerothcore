# frozen_string_literal: true

# == Schema Information
#
# Table name: instance_saved_go_state_data
#
#  id(instance.id)         :integer          unsigned, not null, primary key
#  guid(gameobject.guid)   :integer          unsigned, not null, primary key
#  state(gameobject.state) :integer          default(0), unsigned
#
module Characters
  class InstanceSavedGoStateDatum < CharactersApplicationRecord
    self.table_name = 'instance_saved_go_state_data'
    self.primary_key = %i[id guid]
  end
end
