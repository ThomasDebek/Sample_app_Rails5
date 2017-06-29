class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper  # W tej sekcji użytkownik zaloguje się przy użyciu tymczasowego pliku cookie sesji,
                          # który wygasa automatycznie po zamknięciu przeglądarki


  def hello
    render html: "Hello Everyone"
  end

end
