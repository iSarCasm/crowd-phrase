class PagesController < ApplicationController
  def index
    @phrases = JSON.parse(cookies[:phrases]) rescue []
  end

  def rand_phrase
    @new_phrase = "A new unique phrase #{SecureRandom.uuid}"
    cookies[:phrases] = ((JSON.parse(cookies[:phrases]) rescue []) << @new_phrase).to_json
  end

  def clear_phrases
    cookies[:phrases] = '[]'
  end
end
