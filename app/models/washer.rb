class Washer < Customer
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable

  # has_many :orders

  validates_presence_of :first_name, :last_name, :phone, :address
end
