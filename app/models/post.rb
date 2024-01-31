class Post < ApplicationRecord
    has_one_attached :file

    validates :title, presence: true
end
