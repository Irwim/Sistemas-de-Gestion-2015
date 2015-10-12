Rails.application.routes.draw do
  resources :pedidos_de_compras_de_componentes_detalles

  resources :pedidos_de_compras_componentes

  resources :traslado_detalles

  resources :traslado_productos_terminados

  resources :ordenes_de_producciones_detalles

  resources :ordenes_de_producciones

  resources :tipos_de_movimientos

  resources :stocks_productos_terminados

  resources :movimientos_productos

  resources :movimientos_componentes

  resources :solicitudes_detalles

  resources :solicitudes_monitores_teclados

  resources :solicitudes_componentes_detalles

  resources :solicitudes_componentes

  resources :formularios_cpus_producidas_detalles

  resources :formularios_cpus_producidas

  resources :categorias_productos

  resources :categorias_componentes

  resources :tipos_de_depositos

  resources :stocks_componentes

  resources :productos_terminados

  resources :depositos

  resources :modelos

  resources :marcas

  resources :componentes

  devise_for :usuarios
  get 'application/profile'
  get 'application/login'
  get 'application/register'
  root 'application#login'
end

