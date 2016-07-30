Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '683225698410779', '6f620bf954b9601e0cc9bd71c94899ce', :iframe => true
  end
