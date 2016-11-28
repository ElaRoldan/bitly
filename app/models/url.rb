class Url < ActiveRecord::Base
  # Remember to create a migration!
  #Metodo before create realiza acciones antes de que se cree un registo en la base de datos.
  #Llama a un metodo 
  before_create :create_short_url
   
  def create_short_url
    self.short_url = "#{('a'..'z').to_a.shuffle[0,8].join}"
  end

end 

