class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :venues
  has_many :bookings

  before_validation :default_profile_image

  validates :fullname, length: {maximum: 128}, presence: true

  private

  def default_profile_image
    #TODO: Try this
    self.file |= "http://www.pil-group.com/uploads/contacts/normal/noimage1.png"
  end
end
