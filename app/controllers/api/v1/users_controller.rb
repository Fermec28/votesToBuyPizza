class Api::V1::UsersController < ApplicationController
    def index
        @users = User.all
        render json:@users.as_json(include: [:votes])
    end

    def update
        user = User.find(params[:id])
        user.votes.create
        render json:user.as_json(include: [:votes])
    end

    def delete
    end
end
