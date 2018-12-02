class CommentsController < ApplicationController
  before_action :find_article

	def create
		  # binding.pry
		@comment = Comment.new(comment_params)
		@comment.article = @article
		@comment.save

		redirect_to article_path(@article)
	end

	def destroy
       @comment = Comment.find(params[:id])
       @comment.destroy
       redirect_to article_path(@article)
	end

    private

    def find_article
    	@article = Article.find(params[:article_id])

	def comment_params
		params.require(:comment).permit(:commenter, :body, :article_id)
	end		
end
end