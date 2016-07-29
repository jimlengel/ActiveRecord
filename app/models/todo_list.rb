class TodoList < ActiveRecord::Base
  has_many :items

  validates :label, length: { maximum: 140 }
end
