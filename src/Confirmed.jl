module Confirmed

exports @confirm

if (VERSION >= v"0.7.0-")
   CONFIRMS = (isdefined CONFIRMS) && CONFIRMS) ||
              get(ENV, "JULIA_CONFIRMS", "false")
else        
   CONFIRMS = (@isdefined(:CONFIRMS) && CONFIRMS) ||
              get(ENV, "JULIA_CONFIRMS", "false")
end


if (CONFIRMS) 
    macro confirm(expr)
        :(@assert $expr)
    end
else
    macro confirm(expr)
    end
end



end # Confirmed
