if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: '_make-appointment', domain: 'make-appointment-json-api'
else
  Rails.application.config.session_store :cookie_store, key: '_make-appointment'
end
