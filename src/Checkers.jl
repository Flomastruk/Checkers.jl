module Checkers

using Reexport
@reexport using Base.Test
import Base.Test: Result, Pass, Fail, Error, record, get_testset

export @test_formany, @test_forall, @test_exists

for (dir, filename) in [

		(".", "test-formany.jl"),
		(".", "test-exists.jl"),
		(".", "test-forall.jl"),
		(".", "parse-argument-data.jl"),
		(".", "custom-generator.jl")
	]

include(joinpath(dir, filename))
end

end #of module
