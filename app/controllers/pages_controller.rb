class PagesController < ApplicationController
  def welcome
    if( params['admin'] )
      render
    else
      respond_to do |format|
        format.html do
          render body: 'go away, stranger'
        end
        format.json { render action: 'go_away'}
      end
    end
  end
end
