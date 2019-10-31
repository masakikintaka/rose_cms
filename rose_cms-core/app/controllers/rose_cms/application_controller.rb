# frozen_string_literal: true
module RoseCms
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def hello
      render plain: 'hello core.'
    end
  end
end
