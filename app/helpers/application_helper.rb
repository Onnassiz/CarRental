# frozen_string_literal: true

module ApplicationHelper
  def devise_error_messages!
    return "Bessea"
  end

  def devise_mapping
    Devise.mappings[:user]
  end

  def resource_name
    devise_mapping.name
  end

  def resource
    User.new
  end

  def resource_class
    devise_mapping.to
  end

  def auth_page?
    %w(sessions registrations).include? controller_name
  end
end
