class ApplicationController < ActionController::Base
  include Authentication
  include SetPlatform

  helper_method :turbo_native_app?
end
