class PagesController < ApplicationController
  include PhrasesCookieStorage

  def index
    @phrases = phrases
  end

  def rand_phrase
    @new_phrase = "A new unique phrase #{SecureRandom.uuid}"
    if set_phrases phrases << @new_phrase
      render 'rand_phrase'
    else
      render 'no_more_phrases'
    end
  end

  def clear_phrases
    set_phrases []
  end
end
