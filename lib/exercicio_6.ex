defmodule Exercicio6 do
    @moduledoc """
    Operadores
    """
    def main do

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
        

    end

    def print_letra_a_letra(ds_string) do
        if String.length(ds_string) >= 1 do
            IO.puts String.slice(ds_string, 0..0)
            print_letra_a_letra(
                String.slice(ds_string, 1..String.length(ds_string))
            )
        end        
    end


end
