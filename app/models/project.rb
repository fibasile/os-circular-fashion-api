class Project < ApplicationRecord
    belongs_to :category
    has_many :attachments
    has_many :comments
    has_many :photos
end
