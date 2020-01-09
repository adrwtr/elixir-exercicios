defmodule Exercicio2 do
    @moduledoc """
    Operadores
    """
    def main do

        # // aritmeticos
        IO.puts 1 + 1
        IO.puts 1 + 1 + 1;
        IO.puts 3 - 1;
        IO.puts 5 * 2;
        IO.puts 5 / 2;
        IO.puts 5 / (2 * 2);

        # // mod
        IO.puts rem 6, 4;

        # // Relacionais
        IO.puts 1 == 2;

        IO.puts 1 == 1;

        # // diferenciação
        IO.puts 1 != 3;

        IO.puts 3 > 2;

        IO.puts 3 < 2;

        IO.puts 3 <= 3;

        # // lógicos
        IO.puts 1 == 1 and 2 == 2;

        IO.puts 1 == 1 and 3 == 2;

        IO.puts 1 == 1 or 3 == 2;

        IO.puts "fim";
    end
end