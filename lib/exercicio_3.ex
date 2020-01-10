defmodule Exercicio3 do
    @moduledoc """
    controle de fluxo
    """
    def main do
        nr_valor1 = 10
        nr_valor2 = 20
        ds_enter = "\n"

        arrString = [
            "adriano",
            "waltrick",
            "testar",
            "chaves"
        ]

        # // if
        if nr_valor1 < nr_valor2 do
            IO.puts "#{nr_valor1} eh menor que #{nr_valor2}"
        end

        # // if else
        if (nr_valor1 > nr_valor2) do
            IO.puts "#{nr_valor1} eh maior que #{nr_valor2}"
        else
            IO.puts "#{nr_valor1} eh menor que #{nr_valor2}"
        end

        # // if ternario
        IO.puts if (nr_valor1 > nr_valor2), do: "Maior", else: "Menor"

        # // switch case
        case nr_valor1 do
            0 ->
                IO.puts "#{nr_valor1} eh zero"
                IO.puts ds_enter

            5 ->
                IO.puts "#{nr_valor1} eh cinco"
                IO.puts ds_enter

            10 ->
               IO.puts "#{nr_valor1} eh dez"
               IO.puts ds_enter

            _ ->
               IO.puts "#{nr_valor1} eh qualquer coisa"
               IO.puts ds_enter
        end

        # // for
        # for (nr_valor1 nr_valor1<=nr_valor2 nr_valor1++) {
        #    IO.puts nr_valor1
        #    IO.puts ds_enter
        # }

        # Due to immutability, loops in Elixir (as in any functional programming language)
        for x <- nr_valor1..nr_valor2 do
            IO.puts x
        end

        # for (i = 0 i <= 10 i++) {
        #    IO.puts i
        #    IO.puts ds_enter
        # }

        Enum.each(0..10, fn(i) ->
            IO.puts i
        end)

        # IO.puts ds_enter
# IO.puts "contar ate 5: "
# IO.puts ds_enter
# for (i = 0 i <= 10 i++) {
#    IO.puts i
#    IO.puts ds_enter
#    if (i == 5) {
#       break
#    }
# }
# // while
# while (nr_valor1 > 10) {
#    IO.puts nr_valor1
#    IO.puts ds_enter
#    nr_valor1 = nr_valor1 - 1
# }
# // foreach
# foreach(arrString as nr_key => ds_valor) {
#    IO.puts "Chave: " . nr_key
#    IO.puts " valor: " . ds_valor
#    IO.puts ds_enter
# }
# // Escreva um programa que imprime na tela os numeros
# // de 1 a 30 exceto os numeros
# // múltiplos de 3.
# for (i = 1 i <= 100 i++) {
#    if (i % 3 != 0) {
#       IO.puts i
#       IO.puts " "
#    }
# }
# IO.puts ds_enter
# // Escreva um programa que imprime a tabuada
# // dos numeros de 3 a 5 de acordo com o padrao
# for (i = 3 i <= 5 i++) {
#    IO.puts "tabuada de " . i
#    IO.puts ds_enter
#    for (a = 0 a <= 10 a++) {
#       IO.puts i . " * " . a . " = " . i * a
#       IO.puts ds_enter
#    }
# }
# // Escreva um programa que desenhe uma
# // piraide de asteriscos (*). A saida do seu programa
# // deve seguir o padrao abaixo:
# //   *
# //  ***
# // *****
# //*******
# nr_tamanho = 4
# nr_espacos = nr_tamanho
# nr_estrelas = 0
# while (nr_tamanho > 0) {
#    nr_espacos = nr_espacos - 1
#    nr_estrelas = nr_estrelas + 1
#    for (i = 0 i < nr_espacos i++) {
#       IO.puts " "
#    }
#    for (i = 0 i < nr_estrelas i++) {
#       IO.puts "*"
#    }
#    if (nr_estrelas > 1) {
#       for (i = 1 i < nr_estrelas i++) {
#          IO.puts "*"
#       }
#    }
#    IO.puts "\n"
#    nr_tamanho = nr_tamanho - 1
# }
    end
end