#require_relative  'style'
require_relative '../display/style'
require 'terminal-table'



def cadastrar_produto(produtos)

    imprime("Digite o nome do produto:",1,"blue",true)
    nome = gets.chomp

    limpa_tela()

    imprime("Digite o preço do produto ( ",1,"blue",false) || imprime(nome,1,"green",false) || imprime(" ):",1,"blue",true)
    preco = gets.chomp.to_f

    limpa_tela()

    imprime("Digite a quantidade do produto ( ",1,"blue",false) || imprime(nome,1,"green",false) || imprime(" ):",1,"blue",true)
    quantidade = gets.chomp.to_i

    limpa_tela()

    produtos << {id: Time.now.to_i, nome: nome, preco: preco, quantidade: quantidade}

    imprime("Produto cadastrado com sucesso!",1,"green",true)
    sleep(2)
    limpa_tela()  
end 

def listar_produtos(produtos)

    imprime("-",10,"red",true)
    produtos.each do |produto|
      
      imprime("Nome: ",1,"blue",false) || imprime(produto[:nome],1,"green",true)
      imprime("Preço: ",1,"blue",false) || imprime(produto[:preco].to_s,1,"white",true)
      imprime("Quantidade: ",1,"blue",false) || imprime(produto[:quantidade].to_s,1,"white",true)
      imprime("-",10,"red",true)
    end  
    sleep(5)
    limpa_tela()
end

def retirar_produto(produtos)

  imprime("=",5,"yellow",false) || imprime(" Escolha um produto para remover: ",1,"blue",false) || imprime("=",5,"yellow",true)
  sleep(0.5)

    table = Terminal::Table.new do |t|
      t.headings = ['ID', 'Nome', 'Quantidade']
      produtos.each do |row|
          t.add_row [row[:id], row[:nome], row[:quantidade]]
      end
  end

  puts table
  sleep(1)

  imprime("Digite o ID do produto:", 1, "blue", false)
    id = gets.to_i
    
    produto = produtos.find{|p| p[:id] == id}
    limpa_tela()
    unless produto 
      imprime("Produto não encontrado", 1, "red", true)
      sleep(2)
      limpa_tela()
      return
    end

    imprime("Digite a quantidade que deseja retirar:", 1, "blue", false)
    quantidade = gets.to_i

    unless quantidade > 0
      imprime("Quantidade inválida", 1, "red", true)
      sleep(2)
      limpa_tela()
      return
    end

    if produto[:quantidade] - quantidade >= 0
      produto[:quantidade] -= quantidade
      imprime("Produto retirado com sucesso", 1, "green", true)
    else
      imprime("Quantidade indisponível", 1, "red", true)
      
    end
end