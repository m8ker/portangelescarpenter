class HomeController < ApplicationController
  def index
   
    @jobs = Job.all
    @skills = Skill.all
    @header = Header.find(1)

  end
end
