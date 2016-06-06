class CreateHackathon < ActiveRecord::Migration
  def change
    create_table(:hackathons) do |t|
      t.column(:title, :string)
      t.column(:location, :string)
      t.column(:description, :string)
      t.column(:date, :string)
      t.column(:image, :string)

      t.timestamps()
    end
  end
end
