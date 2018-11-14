class PagesController < ApplicationController
  def welcome
    @records_array = Skill.get_resume
  end
end
