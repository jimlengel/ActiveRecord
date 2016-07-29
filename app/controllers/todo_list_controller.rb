

if ARGV[0] == 'list'
 all_todos = Item.all
 puts all_todos[0].description
# else
#   new_item = Item.new
#   ARGV.each
end
