
require 'colorize'

def imprime(caracter_impressao, vezes, color, quebra_linha)
  
  caracter = ""

  vezes.times do 
    caracter +=  caracter_impressao
  end

  colorize(caracter, color, quebra_linha)
end

def colorize(text, color, quebra_linha)

  case 
    when color == "red"
      color = :red
    when color == "green"
      color = :green
    when color == "blue"
      color = :blue
    when color == "yellow"
      color = :yellow
    when color == "magenta"
      color = :magenta
    when color == "cyan"
      color = :cyan
    when color == "white"
      color = :white
   end

  if quebra_linha
    puts "#{text}".colorize(color)
  else
    print "#{text}".colorize(color)
  end  
end

def limpa_tela
  
  if Gem.win_platform?
    system('cls')
  else
    system('clear')
  end

end