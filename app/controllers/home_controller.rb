class HomeController < ApplicationController
  def index
   
    @jobs = Job.all
    @skills = Skill.all

  end
end
