ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "solivar.com",
  :user_name            => "specify_user_name_here", # working only for gmail account
  :password             => "specify_password_here", # working only for gmail account
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"
