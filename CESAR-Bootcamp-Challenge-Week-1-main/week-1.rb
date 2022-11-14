total = []
productselection = 0
productvalues = [100.to_f, 150.to_f, 200.to_f]
productamount = 0
back = true
products = [
    {productnil: "Produto inválido", value: 0 },
    {product1: "Fone Motorola", value: productvalues[0] },
    {product2: "Fone Sony", value: productvalues[1] },
    {product3: "Fone Beats", value: productvalues[2] }
]
def productscalc (x , y)
    addto = x * y
end

while back do
puts ["Selecione a opção desejada:", nil, "[1]Comprar", "[2]Sair"]
menuselection = gets.chomp.to_i
case  
    when menuselection == 1 
        puts ["Seleciona o produto 1, 2 ou 3!", nil]
        puts "1.#{products[1][:product1]}: R$#{products[1][:value]}."
        puts "2.#{products[2][:product2]}: R$#{products[2][:value]}."
        puts "3.#{products[3][:product3]}: R$#{products[3][:value]}."
        productselection = gets.chomp.to_i 
    case  
    when productselection == 1 
        puts "Digite a quantidade desejada: "
        productamount = gets.chomp.to_i
        total.push(productscalc(productamount, products[1][:value])) 
    when productselection == 2 
        puts "Digite a quantidade desejada: "
        productamount = gets.chomp.to_i 
        total.push(productscalc(productamount, products[2][:value]))
    when productselection == 3 
        puts "Digite a quantidade desejada: "
        productamount = gets.chomp.to_i 
        total.push(productscalc(productamount, products[3][:value]))
    end
    case 
    when productamount != 0
        puts "Seu subtotal é: #{total.sum}"
        p nil
        puts "Digite 0 para voltar para o menu inicial"
        returntomain = gets.chomp.to_i
    end
    when menuselection == 2 
      puts "Obrigado por comprar conosco!"
      back = false

    when menuselection != 1 && menuselection != 2
    puts "Insira um valor válido(1 ou 2) por favor."
    end

end
