class NotesController < ApplicationController
  respond_to :json

  def index
    notes = Note.all.order(created_at: :desc)

    respond_with(notes) do |format|
      format.json { render :json => notes.as_json }
    end
  end

  def create
    # Create and save object from data received from the client
    note = Note.new(note_params)
    # Confirm object is valid and save or return json errors
    if note.valid?
      note.save!
    else
      render json: note.errors , status: :unprocessable_entity
      return
    end
    # Respond with newly created object in json format
    respond_with(note) do |format|
      format.json { render :json => note.as_json }
    end
  end

  def note_params
    params.permit(:title, :author, :content)
  end

end
