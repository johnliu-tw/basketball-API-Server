class ApplicationController < ActionController::API
    before_action :set_response

    def set_response
        @response = {
            code: 200,
            msg: "success"
        }
    end
end
