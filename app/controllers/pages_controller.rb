class PagesController < ApplicationController
  include PhrasesCookieStorage

  def index
    @phrases = phrases
  end

  def rand_phrase
    @new_phrase = "A new unique phrase #{SecureRandom.uuid}"
    set_phrases phrases << @new_phrase
  end

  def clear_phrases
    set_phrases []
  end
end
