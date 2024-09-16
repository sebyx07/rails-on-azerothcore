# frozen_string_literal: true

# == Schema Information
#
# Table name: page_text
#
#  ID            :integer          default(0), unsigned, not null, primary key
#  NextPageID    :integer          default(0), unsigned, not null
#  Text          :text(4294967295) not null
#  VerifiedBuild :integer
#
module World
  class PageText < WorldApplicationRecord
    self.table_name = 'page_text'
    self.primary_key = 'ID'
  end
end
