Rails.application.routes.draw do
  resources :traslados_detalles

  resources :movimientos_productos

  resources :movimientos_componentes

  resources :solicitudes_detalles

  resources :solicitudes_componentes_detalles

  resources :pedidos_componentes_detalles

  resources :stocks_productos_terminados

  resources :stocks_componentes

  resources :traslados_productos_terminados

  resources :ordenes_de_produccion_detalles

  resources :productos_terminados

  resources :solitudes_monitores_teclados

  resources :solicitudes_componentes

  resources :depositos

  resources :tipos_de_depositos

  resources :pedidos_de_compras_componentes

  resources :tipos_de_movimientos

  resources :ordenes_de_produccion

  resources :categorias_productos

  resources :modelos

  resources :marcas

  resources :categorias_componentes

  resources :componentes

  devise_for :usuarios
  get 'application/profile'
  get 'application/login'
  get 'application/register'
  root 'application#login'
end

