class CreateTasks < ActiveRecord::Migration
  def change
    create_table(:tasks) do |t|
      # Add your own columns here and remove the line below
      puts "You should define your own migration!"
      puts "Edit #{File.expand_path(__FILE__)}"
      puts "Remember to create the associated model in #{APP_ROOT.join('app', 'models')}"
      puts ""
      puts "Read more: http://guides.rubyonrails.org/migrations.html"
      exit

      t.timestamps
    end
  end
end
