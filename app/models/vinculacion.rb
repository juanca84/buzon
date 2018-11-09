class Vinculacion < ApplicationRecord
  belongs_to :buzon_notificacion
  belongs_to :persona_natural
end
