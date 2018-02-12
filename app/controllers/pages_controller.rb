class PagesController < ApplicationController
  def index
    @phrases = ['Phrase 1', 'Phrase 2', 'Phrase 3']
  end

  def rand_phrase
  end

  def clear_phrases
  end
end
