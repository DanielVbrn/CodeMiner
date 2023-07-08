def caesar_cipher(frase)
    letras = ('a'..'z').to_a
    resultado = ""
  
    for char in frase.chars
      if letras.include?(char.downcase)
        indice = letras.index(char.downcase)
        novo_indice = (indice + 1) % letras.length
        novo_char = letras[novo_indice]
        resultado << (char == char.downcase ? novo_char : novo_char.upcase)
      else
        resultado << char
      end
    end
  
    return resultado
end
  
frase = "Bswetry"
puts caesar_cipher(frase)




















# puts 6.even?
# puts 7.even?

# puts string = "6 Pães"
# puts "Numero" + 10.to_s
# puts "Olá" << " " << "Mundo"

# nome ="daniel vitor"
# nome2 = "daniel vitor"

# puts nome[5..9]
# puts nome.capitalize

# nome.insert(-1, " barroso")
# puts nome
# puts nome.object_id == nome2.object_id

# a = (1..4)
# puts a.to_a

# def my_name
#   "Daniel Vitor"
# end

# nums = [1,2,3,4,5]
# numsSum = nums.reduce{|acc, nums| acc + nums}
# puts numsSum
# puts "Olá, meu nome é" << " " << my_name 
# puts Object.class