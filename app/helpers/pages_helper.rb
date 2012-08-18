module PagesHelper
  def imprime_ou_nao?(mensagem)
    return mensagem unless mensagem.nil?
    '<h1>nao imprime nada</h1>'.html_safe
  end
end
