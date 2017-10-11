class PagesController < ApplicationController
  def welcome
    if( params['admin'] )
      render
    else
      render body: 'go away, stranger'
    end
  end
end
