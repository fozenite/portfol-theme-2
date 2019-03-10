class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update, :destroy]
  access site_admin: :all


  def show

  end

  def create
    @skill = Skill.new(skill_params)

    respond_to do |format|
      if @skill.save
        format.html { redirect_to about_path, notice: 'Your skill has been created.' }
      else
        format.html { redirect_to about_path, notice: 'Your skill could not be created.' }
      end
    end
  end

  def update
    byebug
    respond_to do |format|
      if @skill.update(skill_params)
        format.html { redirect_to about_path, notice: 'Skill was successfully updated.' }
      else
        format.html { redirect_to about_path }
      end
    end
  end

  def destroy
    @skill.destroy
    respond_to do |format|
      format.html { redirect_to about_url, notice: 'Skill was removed' }
      format.json { head :no_content }
    end
  end

  private

  def set_skill
    @skill = Skill.find(params[:id])
  end

  def skill_params
    params.require(:skill).permit(:title, :id, :percent_utilized)
  end
end