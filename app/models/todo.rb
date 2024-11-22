# == Schema Information
#
# Table name: todos
#
#  id           :integer          not null, primary key
#  user_id      :integer          not null
#  title        :string
#  description  :text
#  completed_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_todos_on_user_id  (user_id)
#

class Todo < ApplicationRecord
  belongs_to :user
end
