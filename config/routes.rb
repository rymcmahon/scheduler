Rails.application.routes.draw do
  get 'work_shift/index'
  get '/work_shifts/edit/:employee_id' => 'work_shift#edit'
  patch '/work_shifts/edit' => 'work_shift#update'
  devise_for :employees
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
