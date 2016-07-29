require_relative 'config/environment'

# Do not log database activity when running our application
ActiveRecord::Base.logger = nil

# Enter your code below ...
# if ARGV[0] == 'list'
#  all_todos = Item.all
#  puts all_todos[0].description
# # else
# #   new_item = Item.new
# #   ARGV.each
# end

