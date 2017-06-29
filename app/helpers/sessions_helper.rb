module SessionsHelper

 # dodanie tej metody - Spowoduje to umieszczenie tymczasowego pliku cookie w przeglądarce użytkownika
 # zawierającego zaszyfrowaną wersję identyfikatora użytkownika,
 # co umożliwia nam pobranie identyfikatora na kolejnych stronach
 # przy użyciu sesji [: user_id].

  def log_in(user)
    session[:user_id] = user.id
  end


  def current_user  # Metoda zwarca bieżacego uzytkownika
    @current_user ||= User.find_by(id: session[:user_id])
  end


end
