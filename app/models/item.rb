class Item < ActiveRecord::Base
  belongs_to :todo_list, { class_name: "TodoList" }

  validates :description, {presence:true}
end
