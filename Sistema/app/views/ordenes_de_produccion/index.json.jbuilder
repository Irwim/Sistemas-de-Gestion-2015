json.array!(@ordenes_de_produccion) do |orden_de_produccion|
  json.extract! orden_de_produccion, :id, :fecha, :nro_formulario
  json.url orden_de_produccion_url(orden_de_produccion, format: :json)
end
