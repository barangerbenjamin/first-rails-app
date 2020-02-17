class PagesController < ApplicationController

  def about

  end

  def contact
    @members = ["ben", "arthur", "lucien", "alex"]

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end

  def homepage

  end
end