class HomeController < ApplicationController
  def index
   
    @jobs = Job.all
    @skills = Skill.all
    @blurbs = Blurb.all

  end
end
