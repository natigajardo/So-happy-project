class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders   
  validates :name, presence: true    

  after_initialize do
   if self.new_record?
     self.role ||= :user
   end
  end       

  enum role: [:user, :admin]
end
