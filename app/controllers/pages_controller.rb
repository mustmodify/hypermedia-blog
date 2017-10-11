class PagesController < ApplicationController
  def welcome
    render body: 'hello world'
  end
end
