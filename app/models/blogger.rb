class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts
    validates :age, length: {minimum: 0}
    validates :bio, length: {minimum: 30}
    validates :name, uniqueness: true

def top_5
    users_destinations = posts.map {|p| p.destination}
    users_destinations = users_destinations.map {|d| d.country}
    (users_destinations.sort_by {|d| users_destinations.count(d)}).uniq.take(5)
end
end