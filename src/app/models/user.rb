class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname
    validates :email, uniqueness: true
    
    with_options format: { with: /\A[a-zA-Z0-9]+\z/, message: 'を確認のため再入力入力してください。' } do
      validates :password, length: {minimum: 6} 
    end
  end

  has_many :scores
  has_many :actions
end
