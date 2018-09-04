class User < ApplicationRecord

    # :confirmable, :lockable, :timeoutable and :omniauthable

    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable

    has_many :groups
    has_many :posts

end
