class Blog < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true
    validates :title, uniqueness: true
    validates :title, length: {minimum:4}
    validates :content, length: {minimum:10}
end
