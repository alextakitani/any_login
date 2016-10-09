module AnyLogin
  class ApplicationController < ActionController::Base

    if AnyLogin.enabled

      if AnyLogin.http_basic_authentication_enabled
        http_basic_authenticate_with :name => AnyLogin.http_basic_authentication_user_name,
                                     :password => AnyLogin.http_basic_authentication_password
      end


      def any_login
        head 403 && return unless AnyLogin.verify_access_proc.call(self)
        Timecop.travel(Date.parse(params[:time_travel_to])) if AnyLogin.time_travel
        AnyLogin.provider::Controller.instance_method(:any_login_sign_in).bind(self).call        
      end
    end

  end
end
