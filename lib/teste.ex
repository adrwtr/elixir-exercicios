defmodule Teste do
    @moduledoc """
    Operadores
    """
    def main do


        # while
        # while ($nr_valor1 > 10) {
        #    echo $nr_valor1;
        #    echo $ds_enter;
        #    $nr_valor1 = $nr_valor1 - 1;
        # }
        nr_valor1 = 10
        imprimir_valor(nr_valor1)


        # // foreach
        # foreach($arrString as $nr_key => $ds_valor) {
        #    echo "Chave: " . $nr_key;
        #    echo " valor: " . $ds_valor;
        #    echo $ds_enter;
        # }
        arrString = %{
            a: "adriano",
            b: "waltrick",
            c: "testar",
            d: "chaves"
        }

        for {k, x} <- arrString do
            IO.puts("chave: #{k} =>  valor: #{x}")
        end

    end

    def imprimir_valor(nr_valor) do
        if (nr_valor > 1) do
            IO.puts nr_valor
            imprimir_valor((nr_valor - 1))
        end            
    end
end