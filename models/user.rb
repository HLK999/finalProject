class User < ActiveRecord::Base
    include BCrypt # Make user.new in users_controller for new folks. Make one of these files for every table in db.

    def password
        @password ||= Password.new(self.password_hash)
    end

    def password=(new_password)
        @password = Password.create(new_password)
        self.password_hash = @password
    end
    #instance variables in Ruby are accessible through the whole class, not just in this bit of code. 

    # Gets a filename, e.g., ("my.photo.jpeg") and returns "images/my.photo2059.jpeg"
    def format_photo_path(filename)
        split = filename.split(".")
        ext = split.slice!(split.length - 1)
        "images/#{split.join('.') + rand(1000..9999).to_s}.#{ext}"
    end
end
