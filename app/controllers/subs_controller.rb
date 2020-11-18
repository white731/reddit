class SubsController < ApplicationController
    def index
        @subs = Subs.all
    end 

    def show
        @sub = Sub.find(params[:id])
    end
end
