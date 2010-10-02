class CallbackController
  def initialize(params)
    @fresh = FreshBooks::Client.new('freshjesse.freshbooks.com', '42bc46ed2ca9f6ee5f6320f450ec7da8')
    @name = params[:name]
    @object_id = params[:object_id]
    @system = params[:system]
    @user_id = params[:user_id]
  end
  
  def go
    #Override in your controller
  end
end