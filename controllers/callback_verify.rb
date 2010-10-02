class CallbackVerify < CallbackController
  def initialize(params)
    super(params)
    @verifier = params[:verifier]
  end
  
  def go
    response = @fresh.callback.verify(:callback => {:callback_id => @object_id, :verifier => @verifier})
    response.to_s
  end
end
