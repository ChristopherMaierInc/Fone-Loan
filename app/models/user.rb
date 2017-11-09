class User < ApplicationRecord
  has_many :phones
  has_many :messages
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
    return "#{first_name} #{last_name}".strip if (first_name || last_name)
    "Anonymous"
  end

  def maps_address
    return "#{street_address}+#{suburb}+#{postcode}+#{state}"
    "Australia"
  end

end
