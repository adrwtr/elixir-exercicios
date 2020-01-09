defmodule Exercicio1 do
    @moduledoc """
    Tipos de dados
    """
    def main do


        # iex exercicio_1.ex
        # tipos de dados
        nr_numero = 10
        vl_float = 12.2
        ds_string = "minha variavel"
        sn_boolean = false

        IO.puts nr_numero
        IO.puts vl_float
        IO.puts ds_string
        IO.puts sn_boolean

        # string e string ok
        ds_concatenar = ds_string <> " " <> ds_string
        IO.puts ds_concatenar

        # string e integer
        ds_concatenar2 = ds_string <> " " <> Integer.to_string(nr_numero)
        IO.puts ds_concatenar2

        # interpolacao
        ds_interpolacao = "meu valor #{vl_float}"
        IO.puts ds_interpolacao

        # array
        arrNumeros = [10, 20, 50]
        IO.inspect arrNumeros

        arrString = [
            "adriano",
            "waltrick"
        ]

        IO.inspect arrString
    end
end