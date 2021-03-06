class CreateSurveys < ActiveRecord::Migration
  def self.up
    create_table :surveys do |t|
      t.integer    :owner_id
      t.integer    :questionnaire_id
      t.integer    :completion_status
      t.timestamps
    end
  end

  def self.down
    drop_table :surveys
  end
end
