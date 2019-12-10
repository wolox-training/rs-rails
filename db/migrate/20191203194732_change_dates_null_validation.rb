class ChangeDatesNullValidation < ActiveRecord::Migration[5.1]
  def change
    change_column_null(:rents, :start_rent, false)
    change_column_null(:rents, :end_rent, false)
  end
end
