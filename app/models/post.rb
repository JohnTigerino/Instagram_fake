#class Post < ApplicationRecord
 # belongs_to :user
  #has_many_attached :images
#end

class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  
  # Validaciones
  validates :images, presence: true   # Asegura que haya al menos una imagen
  validates :description, presence: true, length: { minimum: 10 }  # Asegura que la descripción tenga al menos 10 caracteres
end
