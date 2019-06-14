class PostsController < ApplicationController
    def index
    end

    def new
    end

    def create
        # get the new post
        @post = Post.new(post_params)
        # save the post to the db
        @post.save
        # then redirect to a page
        redirect_to @post
    end

    def show
        @post = Post.find(params[:id])
    end


    private
    
    def post_params
        # permit the title and body to come as params in the req
        params.require(:post).permit(:title, :body)
    end
end
