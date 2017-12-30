Rails.application.routes.draw do
  root :to => "flat_bookings#index"
  get 'flat_bookings/flat_sales_report'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
