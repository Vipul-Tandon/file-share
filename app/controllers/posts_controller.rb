class PostsController < ApplicationController
    before_action :authorize_request

    def create
        post = Post.new(post_params)
        if post.save
            post.file.attach(params[:file])
            file_url = url_for(post.file)
            render json: { status: 'success', message: 'File uploaded successfully', post: post, file_url: file_url }
        else
            render json: { status: 'error', message: 'Failed to upload file' }
        end
    end

    def show
        post = current_user.posts.find(params[:id])
        file_url = url_for(post.file)
        render json: { status: 'success', post: post, file_url: file_url }
        rescue ActiveRecord::RecordNotFound
        render json: { status: 'error', message: 'Post not found' }
    end
    
    private

    def post_params
        params.require(:post).permit(:title, :file)
    end
end
