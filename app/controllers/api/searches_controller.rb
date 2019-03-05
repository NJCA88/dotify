require 'byebug'
class Api::SearchesController < ApplicationController

  def index
    @Albums = Album.all
    debugger
    p "SEARCHING FOR SUPERMAN"
    render 'index'
  end

  def create
    @Albums = Album.all
    debugger
    p "SEARCHING FOR SUPERMAN"
    render 'index'
  end
end
