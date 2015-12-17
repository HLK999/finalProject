class User < ActiveRecord::Base
    include BCrypt

    def password
        @password ||= Password.new(self.password_hash)
    end

    def password=(new_password)
        @password = Password.create(new_password)
        self.password_hash = @password
    end

    # Gets a filename, e.g., ("my.photo.jpeg") and returns "images/my.photo2059.jpeg"
    def format_photo_path(filename)
        split = filename.split(".")
        ext = split.slice!(split.length - 1)
        "images/#{split.join('.') + rand(1000..9999).to_s}.#{ext}"
    end
end
