Rails.application.routes.draw do
  get 'main/abc'
  get 'main/xxx'
  get 'somchai/xxx'

  get 'main/welcome'
  get 'main/contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "somchai",to: "main#xxx"
  get "welcome", to: "main#welcome"
  get "contact_us" , to: "main#contact"
end
