Rails.application.config.middleware.use OmniAuth::Builder do 
  if Rails.env.development? || Rails.env.test?
    provider:github, "bab46ebbb9f90c0bb976", "220241a034c7f4adda16bf3e49818276bd7d9260"
  else
    provider:github,
    Rails.application.credentials.github[:client_id],
    Rails.application.credentials.github[:client_secret]
  end
end
