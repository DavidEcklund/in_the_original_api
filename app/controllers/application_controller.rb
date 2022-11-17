class ApplicationController < ActionController::API
  def hello
    texts = {
      id: 1,
      sentences: ["1", "2", "3"]
    },
    {
      id: 2,
      sentences: ["I", "II", "III"]
    }
    render json: texts
  end
end
