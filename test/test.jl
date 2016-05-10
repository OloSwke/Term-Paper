module test

  using FactCheck, Pikachu

  context("Some tests") do

    facts("lalala") do

      parameters = Dict("alpha"=> 0.4,"a"=>0.7, "A"=>0.5, "beta" => 0.98, "k_" => 1)
      @fact Pikachu.fixed_point(parameters, 1000) --> roughly(35.65; atol=0.01)

    end

  end

end