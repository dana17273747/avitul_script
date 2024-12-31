--[[
    bez = function(a,b,c,t)
        return t*t*(a-2*b+c) -2*t*(a-b) + a
    end

    local div = function(a,b,t)
    return a*(1-t) + b*t
end
]]

local curve = function(points, loop, r)
    r = r == nil and 0.5 or r
    local r_ = 1-r
    local p = {}
    local num = #points
    if loop then
        p[1] = points[num-1]*r_ + points[1]*r
        p[2] = points[num  ]*r_ + points[2]*r
        p[num+1] = p[1]
        p[num+2] = p[2]
        for i = 3, num-1, 2 do
            p[i] =   points[i-2]*r_ + points[i  ]*r
            p[i+1] = points[i-1]*r_ + points[i+1]*r
        end
        return function(t_)
            local p1,p2 = p,points
            local t = t_*(num/2)
            local n,t = math.modf(t)
            n = n+1
            if t_ == 1 then
                t = 1
                n = n-1
            end
            local ax,bx,cx = p1[2*n-1], p2[2*n-1], p1[2*n+1]
            local ay,by,cy = p1[2*n  ], p2[2*n  ], p1[2*n+2]
            return t*t*(ax-2*bx+cx)-2*t*(ax-bx)+ax, t*t*(ay-2*by+cy)-2*t*(ay-by)+ay
        end
    else
        p[1] = points[1]
        p[2] = points[2]
        p[num-3] = points[num-1]
        p[num-2] = points[num]
        for i = 3, num-5, 2 do
            p[i  ] = points[i  ]*r_ + points[i+2]*r
            p[i+1] = points[i+1]*r_ + points[i+3]*r
        end
        return function(t_)
            local p1,p2 = p,points
            local t = t_*(num/2-2)
            local n,t = math.modf(t)
            n = n+1
            if t_ == 1 then
                t = 1
                n = n-1
            end
            local ax,bx,cx = p1[2*n-1], p2[2*n+1], p1[2*n+1]
            local ay,by,cy = p1[2*n  ], p2[2*n+2], p1[2*n+2]
            return t*t*(ax-2*bx+cx)-2*t*(ax-bx)+ax, t*t*(ay-2*by+cy)-2*t*(ay-by)+ay
        end
    end
end

return curve