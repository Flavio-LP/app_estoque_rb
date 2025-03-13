require 'colorize'
require_relative 'style'
require_relative '../core/controller'

def menu(produtos)
  loop do

    limpa_tela()
    imprime("=",25,"yellow",true)
    imprime("=",1,"yellow",false) || imprime(" Escolha uma opção: ",1,"blue",false) || imprime(" ",3,"yellow",false) ||imprime("=",1,"yellow",true)
    imprime("=",1,"yellow",false) || imprime(" 1 - Cadastrar produto ",1,"blue",false) || imprime("=",1,"yellow",true)
    imprime("=",1,"yellow",false) || imprime(" 2 - Listar produtos ",1,"blue",false) || imprime(" ",2,"yellow",false) || imprime("=",1,"yellow",true)
    imprime("=",1,"yellow",false) || imprime(" 3 - Retirar produto ",1,"blue",false) || imprime(" ",2,"yellow",false)|| imprime("=",1,"yellow",true)
    imprime("=",1,"yellow",false) || imprime(" 4 - Sair ",1,"blue",false) || imprime(" ",13,"yellow",false)|| imprime("=",1,"yellow",true)
    imprime("=",25,"yellow",true)

    opcao = gets.chomp.to_i

    limpa_tela()
    case opcao
        when 1
          imprime("=",5,"yellow",false) || imprime(" Cadastro de Produto ",1,"blue",false) || imprime("=",5,"yellow",true)
          sleep(2)
          limpa_tela()
          cadastrar_produto(produtos)
        when 2
          listar_produtos(produtos)
        when 3
          retirar_produto(produtos)
        when 4
          break
        else  
          puts "Opção inválida"
    end
  end
end

