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

        # pad_trailing — Preenche uma string para um certo tamanho com outra string
        IO.puts String.pad_trailing("123", 15, "0")


        # replace — Substitui todas as ocorrências da string de procura com a string de substituição
        IO.puts String.replace("adriano", "a", "A")


        # length — Retorna o tamanho de uma string
        IO.puts String.length("12345")


        # match — Encontra a posição da primeira ocorrência de uma string
        :binary.match("onde esta o * nesta frase", "*")

        # downcase — Converte uma string para minúsculas
        # upcase — Converte uma string para maiúsculas
        IO.puts String.downcase("PARA BAIXO") <> " " <> String.upcase("para cima")


        # trim — Retira espaço no ínicio e final de uma string
        IO.puts String.trim("   sem espacos  ")


        # pega uma parte da string
        IO.puts String.slice("abcdef", 1..3)  # bcd



        # exercicios

        # imprimir letra a letra de uma string
        ds_string = "minha string"
        print_letra_a_letra(ds_string)



        # conte quantas vezes aparece Jesus na frase
        ds_frase = "Os evangelhos apresentam o ministério de João Batista enquanto precursor do ministério de Jesus. Iniciado com o seu batismo, Jesus dá início ao seu ministério nas áreas rurais da Judeia, perto do rio Jordão, com cerca de trinta anos de idade (Lucas 3:23). Jesus viaja, prega e realiza milagres, completando o ministério durante a Última Ceia com os seus discípulos em Jerusalém."

        ds_palavra = "Jesus"

        IO.puts Enum.count(
            String.split(ds_frase, ds_palavra)
        ) - 1



        # Faca um programa que encontre o conjunto de digitos iguais na string abaixo.
        # Qual é a maior sequencia?
        ds_string = "
        73167176531330624919225119674426574742355349194934
        96983520312774506326239578318016984801869478851843
        85861560789112949495459501737958331952853208805511
        12540698747158523863050715693290963295227443043557
        66896648950445244523161731856403098711121722383113
        62229893423380308135336276614282806444486645238749
        30358907296290491560440772390713810515859307960866
        70172427121883998797908792274921901699720888093776
        66162633001053367881220235421809751254540594752243
        52584907711670556013604839586446706324415722155397
        53697817977846174064955149290862569321978444444482
        83972241375657056057490261407972968652413424142474
        82166370484403199890008895243450658541227588666881
        16427171479924442928230863465674813919123162824586
        17866458359124566529476545682848912883142607690042
        24219022671055626321111109370544217506941658960408
        07198403850962455444362981230987879927244284909188
        84580156166097919133875499200524063689912560717606
        05886116467109405077541002256983155200055935729725
        71636269561882670428252483600823257530420752963450
        "

        String.codepoints(ds_string)
        getSequence(String.codepoints(ds_string))
    end

    def print_letra_a_letra(ds_string) do
        if String.length(ds_string) >= 1 do
            IO.puts String.slice(ds_string, 0..0)
            print_letra_a_letra(
                String.slice(ds_string, 1..String.length(ds_string))
            )
        end
    end

    def getSequence([head | tail]), do: getSequence(tail, head, 0, 0, "")

    def getSequence([head | tail], ds_string_atual, nr_acumulador, nr_maior_contador, ds_maior_letra) do
        if (head == "" || head == " ") do
            getSequence(tail, "", 1, nr_maior_contador, ds_maior_letra)
        else
            if (head == ds_string_atual) do
                getSequence(tail, ds_string_atual, nr_acumulador + 1, nr_maior_contador, ds_maior_letra)
            else
                if (nr_maior_contador < (nr_acumulador)) do
                    getSequence(tail, head, 1, (nr_acumulador), ds_string_atual)
                else
                    getSequence(tail, head, 1, nr_maior_contador, ds_maior_letra)
                end
            end
        end
    end

    def getSequence([], _ds_string_atual, _nr_acumulador, _nr_maior_contador, ds_maior_letra), do: ds_maior_letra






end
