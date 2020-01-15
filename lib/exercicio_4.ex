defmodule Exercicio4 do
    @moduledoc """
    funcoes
    """
    # // funcao simples
    def somar(a, b) do
        a + b
    end

    # // funcao simples
    def concatenar(valor) do
        "concatena string " <> valor
    end

    # // funcao pode chamar outras funcoes
    def composta() do
        concatenar(
            Integer.to_string(somar(10, 30))
        )
    end

    # // funcao podem chamar a si mesma
    def recursivo(valor) do
        if (valor < 10) do
            IO.puts valor
            recursivo(valor + 1)
        end
    end

    # // funcao fibonacci
    def fibonacci(n) do
        if (n == 1 || n == 0) do
            1
        else
            # //recursao
            fibonacci(n - 1) + fibonacci(n - 2)
        end
    end

    # exemplo funcao em elixir com pattern match
    def  power(n, k), do: pow(n, k, 1)
    defp power(_, 0, acc), do: acc
    defp power(n, k, acc), do: pow(n, k - 1, n * acc)


    def main do



        IO.puts somar(10, 20)
        IO.puts concatenar("teste")
        IO.puts composta()

        recursivo(1)
        IO.puts fibonacci(5)
        IO.puts power(3, 2)
        IO.puts power(3, 3)


    end
end