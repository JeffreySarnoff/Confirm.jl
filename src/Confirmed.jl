module Confirmed

exports @confirm, confirms!

if VERSION < v"0.7.0-"
    macro isdefined(x)
        :(isdefined(Symbol($x)))
    end
end


if ((@isdefined CONFIRM) && CONFIRM) || (get(ENV, "JULIA_CONFIRMS", "false") == "true") 
    macro confirm(expr)
        @assert $expr
    end
else
    macro confirm(expr)
    end
end




end # Confirmed
