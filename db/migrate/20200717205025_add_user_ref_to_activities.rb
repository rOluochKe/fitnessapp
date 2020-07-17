class AddUserRefToActivities < ActiveRecord::Migration[6.0]
  def change
    add_reference :activities, :user, foreign_key: true
  end
end
