class RenameMoreInfoSecretQuality < ActiveRecord::Migration
    def change
        change_table :users do |t|
            t.rename :more_info, :secret_quality
        end
    end
end
