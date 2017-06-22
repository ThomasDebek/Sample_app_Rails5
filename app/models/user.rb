class User < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 50 }


  before_save { self.email = email.downcase }                 # To nam zapewni takze unikatowosc adresu a przy tym zapobiegnie skanowaniu calej bazy i znajdowaniu uzytkownikow po przez email 
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
end
