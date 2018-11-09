# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular 'persona_natural', 'personas_naturales'
  inflect.irregular 'persona_juridica', 'personas_juridicas'
  inflect.irregular 'representante_legal', 'representantes_legales'
  inflect.irregular 'buzon_notificacion', 'buzones_notificaciones'
  inflect.irregular 'vinculacion', 'vinculaciones'
  inflect.irregular 'mensaje', 'mensajes'
  inflect.irregular 'permiso', 'permisos'
end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
