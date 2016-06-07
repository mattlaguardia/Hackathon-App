class AddingVotingColumn < ActiveRecord::Migration
  def change
    add_column(:hackathons, :points, :integer, :default => 0)
  end
end
