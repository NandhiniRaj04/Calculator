Rails.application.routes.draw do
  post '/calculate',to: 'calculations#calculate'
end
