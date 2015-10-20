# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
  inflect.irregular 'usuario', 'usuarios'
  inflect.irregular 'componente', 'componentes'
  inflect.irregular 'marca', 'marcas'
  inflect.irregular 'modelo', 'modelos'
  inflect.irregular 'deposito', 'depositos'
  inflect.irregular 'categoria_componente', 'categorias_componentes'
  inflect.irregular 'tipo_de_deposito', 'tipos_de_depositos'
  inflect.irregular 'stock_componente', 'stocks_componentes'
  inflect.irregular 'producto_terminado', 'productos_terminados'
  inflect.irregular 'categoria_producto', 'categorias_productos'
  inflect.irregular 'tipo_de_movimiento', 'tipos_de_movimientos'
  inflect.irregular 'orden_de_produccion', 'ordenes_de_produccion'
  inflect.irregular 'orden_de_produccion_detalle', 'ordenes_de_produccion_detalles'
  inflect.irregular 'pedido_de_compra_componente', 'pedidos_de_compras_componentes'
  inflect.irregular 'solicitud_componente', 'solicitudes_componentes'
  inflect.irregular 'solicitud_monitor_teclado', 'solitudes_monitores_teclados'
  inflect.irregular 'pedido_componente_detalle', 'pedidos_componentes_detalles'
  inflect.irregular 'solicitud_componente_detalle', 'solicitudes_componentes_detalles'
  inflect.irregular 'stock_producto_terminado', 'stocks_productos_terminados'
  inflect.irregular 'solicitud_detalle', 'solicitudes_detalles'
  inflect.irregular 'movimiento_componente', 'movimientos_componentes'
  inflect.irregular 'movimiento_producto', 'movimientos_productos'
  inflect.irregular 'traslado_producto_terminado', 'traslados_productos_terminados'
  inflect.irregular 'traslado_detalle', 'traslados_detalles'
end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
