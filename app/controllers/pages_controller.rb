# encoding: utf-8

class PagesController < ApplicationController
  def index

  end

  def salvar_contato
    @message = Message.new(params[:message])
    @message.save
    flash[:message] = "Formulário enviado."
    render :contato
  end

  def contato
    @message = Message.new
  end

  def contatos
    @messages = Message.all
  end

  def mostrar_contato
    @message = Message.where(:id => params[:id]).first
  end

  def editar_contato
    @message = Message.where(:id => params[:id]).first
    render :contato
  end

  def salvar_edicao_do_contato
    @message = Message.find(params[:format])
    @message.update_attributes(params[:message])
    flash[:message] = "Contato editado."
    redirect_to contatos_path
  end

  def remover_contato
    message = Message.where(:id => params[:id]).first
    message.delete
    flash[:message] = "Contato removido."
    redirect_to contatos_path
  end
end
