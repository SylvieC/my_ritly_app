class AddTimesVisitedToLinks < ActiveRecord::Migration
  def change
    add_column :links, :times_visited, :integer
  end
end
