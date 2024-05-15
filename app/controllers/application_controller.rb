# frozen_string_literal: true

class ApplicationController < ActionController::API
  def render_errors(resource)
    render json: {
      success: false,
      errors: resource.errors.full_messages
    }
  end
end
