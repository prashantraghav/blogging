class BlogsController < ApplicationController

  def index
    @blogs = Blog.recent

    @page_heading = "Latest Stories"
    @page_icon= "fa fa-book"
  end

  def show
    recent_blogs
    @blog = Blog.find params[:id]

    @page_heading = @blog.title
    @page_icon= "fa fa-bookmark"
  end

  def new
    authenticate_user!
    @blog = Blog.new

    @page_heading = "Create New Story"
    @page_icon= "fa fa-bookmark"
  end

  def create
    authenticate_user!
    @blog = Blog.new(blog_params)
    if @blog.save
      flash['notice'] = "Story created."
      redirect_to blog_path(@blog)
    else
      flash['alert'] = @blog.errors.full_messages
      @page_heading = "Create New Story"
      @page_icon= "fa fa-bookmark"
      render :new
    end
  end

  def edit
    authenticate_user!
    @blog = Blog.find params[:id]

    @page_heading = "Editing"
    @page_icon= "fa fa-edit"
  end

  def update
    authenticate_user!
    @blog = Blog.find params[:id]
    if @blog.update_attributes(blog_params)
      flash['notice'] = "Story updated."
      redirect_to blog_path(@blog)
    else
      flash['alert'] = @blog.errors.full_messages
      @page_heading = "Editing"
      @page_icon= "fa fa-edit"
      render :edit
    end
  end

  def destroy
    authenticate_user!
    @blog = Blog.find params[:id]
    @blog.destroy
    flash['notice'] = "Story deleted."
    redirect_to blogs_path
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :body, :coverpic)
  end

  def recent_blogs
    @blogs = Blog.recent 10
  end

end
