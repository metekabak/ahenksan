# frozen_string_literal: true

class PagesController < ApplicationController
  def index; end

  def contact
    Contact.create(
      name: params[:name],
      email: params[:email],
      message: params[:message]
    )

    redirect_back fallback_location: '/contact', notice: 'Your message is send successfully.'
  end

  def try
    pages = Dir.entries('./app/views/pages')

    return render "pages/#{params[:any]}" if pages.include?("#{params[:any]}.html.erb")

    render 'statuses/404', status: 404
  end
end
