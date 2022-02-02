class Api::NotesController < ApplicationController
    skip_before_action :authenticate_user

    def index
        render json: Note.all
    end
end
