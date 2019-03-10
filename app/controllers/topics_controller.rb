class TopicsController < ApplicationController
  before_action :set_sidebar_topics
  layout 'blog'
  access all: [:show, :index], site_admin: :all
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])

    if logged_in?(:site_admin)
      @blogs = @topic.blogs.recent.page(params[:page]).per(5)
    else
      @blogs = @topic.blogs.published.recent.page(params[:page]).per(5)
    end
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(blog_params)

    respond_to do |format|
      if @topic.save
        format.html { redirect_to @topic, notice: 'Your topic is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def set_sidebar_topics
    @sidebar_topics = Topic.with_blogs
  end

  def blog_params
    params.require(:topic).permit(:id, :title)
  end
end
