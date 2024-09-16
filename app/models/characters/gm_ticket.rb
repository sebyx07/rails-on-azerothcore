# frozen_string_literal: true

# == Schema Information
#
# Table name: gm_ticket
#
#  id                                                     :integer          unsigned, not null, primary key
#  assignedTo(GUID of admin to whom ticket is assigned)   :integer          default(0), unsigned, not null
#  closedBy(-1 Closed by Console, >0 GUID of GM)          :integer          default(0), not null
#  comment                                                :text(65535)      not null
#  completed                                              :integer          default(0), unsigned, not null
#  createTime                                             :integer          default(0), unsigned, not null
#  description                                            :text(65535)      not null
#  escalated                                              :integer          default(0), unsigned, not null
#  lastModifiedTime                                       :integer          default(0), unsigned, not null
#  mapId                                                  :integer          default(0), unsigned, not null
#  name(Name of ticket creator)                           :string(12)       not null
#  needMoreHelp                                           :integer          default(0), unsigned, not null
#  playerGuid(Global Unique Identifier of ticket creator) :integer          default(0), unsigned, not null
#  posX                                                   :float(24)        default(0.0), not null
#  posY                                                   :float(24)        default(0.0), not null
#  posZ                                                   :float(24)        default(0.0), not null
#  resolvedBy(-1 Resolved by Console, >0 GUID of GM)      :integer          default(0), not null
#  response                                               :text(65535)      not null
#  type(0 open, 1 closed, 2 character deleted)            :integer          default(0), unsigned, not null
#  viewed                                                 :integer          default(0), unsigned, not null
#
module Characters
  class GmTicket < CharactersApplicationRecord
    self.table_name = 'gm_ticket'
  end
end
