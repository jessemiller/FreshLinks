class CallbackController
  def initialize(params)
    @fresh = FreshBooks::Client.new(FRESHBOOKS_URL, AUTHENTICATION_TOKEN)
    @name = params[:name]
    @object_id = params[:object_id]
    @system = params[:system]
    @user_id = params[:user_id]
  end
  
  def go
    #Override in your controller
  end
end