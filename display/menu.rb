require 'colorize'
require_relative '../core/style'

def menu
  loop do

    imprime("=",20,"yellow")
    puts "= ".yellow + "Escolha uma opção:".blue + " =".yellow
    puts "= ".yellow +  "1 - Cadastrar produto" + " =".yellow
    puts "= ".yellow +  "2 - Listar produtos" + " =".yellow
    puts "= ".yellow +  "3 - Retirar produto" + " =".yellow
    puts "= ".yellow +  "4 - Sair" + " =".yellow
    puts "====================".yellow

    opcao = gets.chomp.to_i

    case opcao
        when 1
          cadastrar_produto
        when 2
          listar_produtos
        when 3
          retirar_produto
        when 4
          break
        else  
          puts "Opção inválida"
    end
  end
end

