class ApplicationController < ActionController::API
  include ActionController::Cookies
  
  def authorize
    return render json: {error: "Not authorized"}, status: :unauthorized unless session.include? user_id
  end
  

end
