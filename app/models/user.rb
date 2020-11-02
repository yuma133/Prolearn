class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :profile_image
  has_many :teaches, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :entries, dependent: :destroy

  has_many :active_notifis, class_name: 'Notifi', foreign_key: 'visitor_id', dependent: :destroy
  has_many :passive_notifis, class_name: 'Notifi', foreign_key: 'visited_id', dependent: :destroy

  validates :age, numericality: { only_integer: true, greater_than: 0}, allow_blank: true
  validates :intro, length: {maximum: 200}
end
