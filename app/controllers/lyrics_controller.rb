class LyricsController < ApplicationController
	before_filter :authenticate_user!
	
	def index
		@lyrics = Lyric.all
	end

	def public
		@lyrics = Lyric.all
	end

	def show
		@lyric = Lyric.find(params[:id])
	end

	def new
		@lyric = Lyric.new
	end

	def create
		
		@lyric = Lyric.new(lyric_params)
		@lyric.user = User.find(current_user.id)
		if @lyric.save
			redirect_to @lyric
		else
			redner 'new'
		end
	end
	
	def edit
		@lyric = Lyric.find(params[:id])
		
	end

	def update
		@lyric = Lyric.find(params[:id])

		if @lyric.update(lyric_params)
    	redirect_to @lyric
 		else
    	render 'edit'
	   end
	end

	def destroy
		@lyric= Lyric.find(params[:id])
		@lyric.destroy

		redirect_to lyrics_path
	end

private

	def lyric_params
		params.require(:lyric).permit(:song, :verse1, :chorus, :verse2, :bridge, :public)	
	end

end
