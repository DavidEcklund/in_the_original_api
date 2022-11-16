class ApplicationController < ActionController::API
  def hello
    hello_world = {
      "msg": "Hello, World!"
    }
    render json: hello_world
  end
end
