class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :result
      t.string :status, default: Settings.status.start
      t.references :user, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
