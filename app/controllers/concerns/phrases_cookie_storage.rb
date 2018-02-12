module PhrasesCookieStorage
  extend ActiveSupport::Concern

  included do
    private

    MAX_PHRASES_COUNT = 10

    def phrases
      JSON.parse(cookies[:phrases]) rescue []
    end

    def set_phrases(val)
      cookies[:phrases] = val.to_json if val&.size <= MAX_PHRASES_COUNT
    end

    def phrases_left
      MAX_PHRASES_COUNT - phrases.size
    end
    helper_method :phrases_left
  end
end
