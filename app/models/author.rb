class Author < ApplicationRecord
    has_one :address, dependent: :destroy
    # dependent will allow us to destroy an author and the address associated with that author
    # long way of doing this when rails convention is not completely followed
    # has_one :address, class_name: "Address", foreign_key: "author_id"

    has_many :books, dependent: :destroy
    has_many :images, as: :imageable
end
