class Message < ActiveRecord::Base
  attr_accessible :nome, :email, :mensagem
  validates :nome, :presence => true, :length => {:minimum => 2}
  validates :email, :presence => true
  validates :mensagem, :presence => true
end
