class PagesController < ApplicationController
  def home
  end

  def about
  end

  def projects
    @projects = Project.all
  end

  def skills
  end

  def contact
  end

  def achievements 
  end
end
