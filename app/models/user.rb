class User < ApplicationRecord

    # :confirmable, :lockable, :timeoutable and :omniauthable

    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable

    has_many :groups
    has_many :posts


  has_many :group_relationships
  has_many :participated_groups, :through => :group_relationships, :source => :group

   def is_member_of?(group)
    participated_groups.include?(group)
   end

# 加入群组 感叹号是方法的一部分
 def join!(group)
   participated_groups << group
 end

 def quit!(group)
   participated_groups.delete(group)
 end

end
