class AddEnterpriseToComplaint < ActiveRecord::Migration
  def change
    add_reference :complaints, :enterprise, index: true, foreign_key: true
  end
end
