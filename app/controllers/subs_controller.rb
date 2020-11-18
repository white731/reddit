class SubsController < ApplicationController
    before_action
    before_action :set_sub, only: [:show, :edit, :update, :destroy]
    
    def index
        @subs = Sub.all
    end 

    def show
        
    end

    def new
        @sub = Sub.new()
        render partial: "form"
    end

    def create
        @sub = Sub.new(sub_params)
        if @sub.save
        redirect_to subs_path
        else
        render :new
        end
        #render :new if fails
    end

    def edit
        render partial: "form"
    end

    def update
        if @sub.update(sub_params)
        redirect_to @sub
        else
        render :edit
        end
        #render :edit if fails
    end

    def destroy
        @sub.destroy
        redirect_to subs_path
    end

    # we can do whatever we want here
    def random
        @sub = Sub.all.sample
    end

    private

    def set_sub
        @sub = Sub.find(params[:id])
    end

    def sub_params
        params.require(:sub).permit(:name)
    end

    
end
