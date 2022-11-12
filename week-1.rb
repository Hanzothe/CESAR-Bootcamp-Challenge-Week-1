puts ["Selecione a opção desejada:", nil, "[1]Comprar", "[2]Vender"]

selectmenu = gets.chomp.to_i

p selectmenu

case menuselection 
when selectmenu == 1
    