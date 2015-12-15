class User < ActiveRecord::Base
    include BCrypt

    def password
        @password ||= Password.new(self.password_hash)
    end

    def password=(new_password)
        @password = Password.create(new_password)
        self.password_hash = @password
    end

    def format_photo_path(filename)
        split = filename.split(".")
        ext = split.slice!(split.length - 1)
        "images/#{split.join('.') + rand(1000..9999).to_s}.#{ext}"
    end
end
