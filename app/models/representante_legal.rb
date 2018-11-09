class RepresentanteLegal < ApplicationRecord
  belongs_to :persona_natural
  belongs_to :persona_juridica
end
