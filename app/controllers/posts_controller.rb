class PostsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    def index
        @posts = Post.all.page(params[:page]).per(3).order("id DESC")
    end

    def link
    end

    def new
        @post = Post.new
    end

    def create
        post = Post.new(post_params)
        post.user_id = current_user.id
        if post.save
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end

    def show
        @post = Post.find(params[:id])
        @comments = @post.comments
        @comment = Comment.new
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        post = Post.find(params[:id])
        if post.update(post_params)
            redirect_to :action => "show", :id => post.id
        else
            redirect_to :action => "new"
        end
    end

    def destroy
        post = Post.find(params[:id])
        post.destroy
        redirect_to action: :index
    end

    private
    def post_params
        params.require(:post).permit(:title,:body,:address,:latitude,:longitude,:image1,:image2,:image3,:image4,:overall,:taste,:ambiance,:access)
    end
end
