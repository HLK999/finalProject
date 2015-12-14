class CreateUsers < ActiveRecord::Migration
    def change
        create_table :users do |t|
            t.string :username, null: false
            t.string :password_hash, null: false
            t.string :avatar
            t.string :birthplace
            t.string :first_lang
            t.string :dream_job
            t.text :if_I_were_fancy
            t.text :favorite_quote
            t.text :more_info

            t.timestamps
        end
    end
end
