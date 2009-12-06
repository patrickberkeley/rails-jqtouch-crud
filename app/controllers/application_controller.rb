# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  before_filter :adjust_format_for_iphone

  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  private

    # Set iPhone format if request to iphone.domain.com
    def adjust_format_for_iphone
      request.format = :iphone if iphone_request?
    end
    
    # Return true for requests to iphone.domain.com
    def iphone_request?
      return (request.subdomains.first == "iphone" || params[:format] == "iphone")
    end
  
end
