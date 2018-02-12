module PhrasesCookieStorage
  extend ActiveSupport::Concern

  included do
    private

    def phrases
      JSON.parse(cookies[:phrases]) rescue []
    end

    def set_phrases(val)
      cookies[:phrases] = val.to_json
    end
  end
end
