module Confirms

export @confirm

CONFIRMS = get(ENV, "JULIA_CONFIRMS", "false") == "true" 

if (CONFIRMS) 
    macro confirm(expr)
        :(@assert :(esc($$expr)))
    end
else
    macro confirm(expr)
    end
end


end # Confirms
