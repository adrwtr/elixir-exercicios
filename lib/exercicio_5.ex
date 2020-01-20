defmodule Exercicio5 do
    @moduledoc """
    funcoes de string
    """
    def main do
        IO.puts "apenas imprime"

        # // exporta o valor da variavel para o tipo string
        IO.inspect "valor do tipo"

        # // converte para string
        IO.inspect [1, 2]

        #// explode - converte em array, dividindo pelo operador
        String.split("divide-a string-em-array", "-")


        #// inverso de explode
        IO.puts Enum.join(["valor 1-", "valor 2"])

        #// ord — Retorna o valor ASCII do caractere
        <<v::utf8>> = "A"
        IO.puts v

        #// str_pad — Preenche uma string para um certo tamanho com outra string
        #IO.puts str_pad("123", 15, 0)
#
#
#
#
        #// str_replace — Substitui todas as ocorrências da string de procura com a string de substituição
        #IO.puts str_replace("a", "A", "adriano")
#
#
#
#
        #// strlen — Retorna o tamanho de uma string
        #IO.puts strlen('12345')
#
#
#
#
        #// strpos — Encontra a posição da primeira ocorrência de uma string
        #IO.puts strpos("onde esta o * nesta frase", "*")
#
#
#
#
        #// strtolower — Converte uma string para minúsculas
        #// strtoupper — Converte uma string para maiúsculas
        #IO.puts strtolower('PARA BAIXO') . ' ' . strtolower('para cima')
#
#
#
#
        #// trim — Retira espaço no ínicio e final de uma string
        #IO.puts trim('   sem espacos  ')
#
#
#
#
        #// pega uma parte da string
        #IO.puts substr('abcdef', 1, 3)  // bcd
#
#
#
#
        #// exercicios
        #// imprimir letra a letra de uma string
        #ds_string = "minha string"
        #nr_posicao = 0
        #ds_letra = ''
        #while(nr_posicao < strlen(ds_string)) {
        #ds_letra = substr(ds_string, nr_posicao, 1)
        #nr_posicao = nr_posicao + 1
        #IO.puts ds_letra
#
#
#
#
        #}
        #// conte qnatas vezes aparece Jesus na frase
        #ds_frase = 'Os evangelhos apresentam o ministério de João Batista enquanto precursor do ministério de Jesus. Iniciado com o seu batismo, Jesus dá início ao seu ministério nas áreas rurais da Judeia, perto do rio Jordão, com cerca de trinta anos de idade (Lucas 3:23). Jesus viaja, prega e realiza milagres, completando o ministério durante a Última Ceia com os seus discípulos em Jerusalém.'
        #ds_palavra = 'Jesus'
        #nr_pos = strpos(ds_frase, ds_palavra)
        #nr_contador = 0
        #while (nr_pos > 0) {
        #    ds_frase = substr(
        #        ds_frase,
        #        nr_pos + 5,
        #        strlen(ds_frase)
        #    )
        #    nr_pos = strpos(ds_frase, ds_palavra)
        #    nr_contador++
        #}
        #IO.puts nr_contador
#
#
#
#
        #// Faca um programa que encontre o conjunto de digitos iguais na string abaixo.
        #// Qual é a maior sequencia?
        #ds_string = '
        #73167176531330624919225119674426574742355349194934
        #96983520312774506326239578318016984801869478851843
        #85861560789112949495459501737958331952853208805511
        #12540698747158523863050715693290963295227443043557
        #66896648950445244523161731856403098711121722383113
        #62229893423380308135336276614282806444486645238749
        #30358907296290491560440772390713810515859307960866
        #70172427121883998797908792274921901699720888093776
        #65727333001053367881220235421809751254540594752243
        #52584907711670556013604839586446706324415722155397
        #53697817977846174064955149290862569321978468622482
        #83972241375657056057490261407972968652414544444474
        #82166370484403199890008895243450658541227588666881
        #16427171479924442928230863465674813919123162824586
        #17866458359124566529476545682848912883142607690042
        #24219022671055626321111109370544217506941658960408
        #07198403850962455444362981230987879927244284909188
        #84580156166097919133875499200524063689912560717606
        #05886116467109405077541002256983155200055935729725
        #71636269561882670428252483600823257530420752963450
        #'
        #nr_posicao = 2
        #ds_letra = ''
        #ds_letra_teste = ''
        #nr_contador = 0
        #ds_maior_letra = ''
        #nr_maior_contador = 0
        #while(nr_posicao < strlen(ds_string)) {
        #ds_letra = substr(ds_string, nr_posicao, 1)
        #if (ds_letra != ds_letra_teste) {
        #    ds_letra_teste = ds_letra
        #    nr_contador = 1
        #} else {
        #    nr_contador++
        #    if (nr_maior_contador < nr_contador) {
        #        ds_maior_letra = ds_letra
        #        nr_maior_contador = nr_contador
        #    }
        #}
        #nr_posicao = nr_posicao + 1
        #}
        #IO.puts ds_maior_letra
#
#
#
#
        #IO.puts nr_maior_contador
#
#
#
#
        #IO.puts str_pad(ds_maior_letra, nr_maior_contador, ds_maior_letra)
#
#


    end


end
