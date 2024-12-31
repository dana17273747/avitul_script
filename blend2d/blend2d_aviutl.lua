local ffi = require("ffi")
local C = ffi.C

local bl = require("blend2d")

local bit = require("bit")

local band = bit.band
local bor = bit.bor
local rshift = bit.rshift
local lshift = bit.lshift

ffi.cdef [[
    typedef struct BLAviUtl{
        BLImageCore         image;
        BLContextCore       ctx;
        BLPathCore          path;
    } BLAviUtl;
]]

local BLAviUtl = ffi.typeof("struct BLAviUtl")
local BLImage = ffi.typeof("struct BLImageCore")
local BLContext = ffi.typeof("struct BLContextCore")
local BLContextCreateInfo = ffi.typeof("struct BLContextCreateInfo")
local BLPath = ffi.typeof("struct BLPathCore")
local BLPoint = ffi.typeof("struct BLPoint")
local BLGradient = ffi.typeof("struct BLGradientCore")
local BLLinearGradientValues = ffi.typeof("struct BLLinearGradientValues")
local BLRadialGradientValues = ffi.typeof("struct BLRadialGradientValues")
local BLConicGradientValues = ffi.typeof("struct BLConicGradientValues")
local valuesTypes = { BLLinearGradientValues, BLRadialGradientValues, BLConicGradientValues }

ffi.metatype(BLAviUtl, {
    __new = function(self, obj)
        self = ffi.new(BLAviUtl)
        local data, w, h = obj.getpixeldata()

        local image = ffi.new(BLImage)
        local ctx = ffi.new(BLContext)
        local cci = ffi.new(BLContextCreateInfo)
        local path = ffi.new(BLPath)

        bl.blImageInitAsFromData(image, w, h, C.BL_FORMAT_PRGB32, data, 4 * w, C.BL_DATA_ACCESS_RW, nil, nil)
        bl.blPathInit(path)
        bl.blContextInitAs(ctx, image, cci)

        self.image = image
        self.ctx = ctx
        self.path = path

        return self, data
    end,
    __gc = function(self)
        bl.blImageDestroy(self.image)
        bl.blContextDestroy(self.ctx)
        bl.blPathDestroy(self.path)
    end,

    __index = {
        --[[ color ]]
        color = function(self, color)
            bl.blContextSetFillStyleRgba32(self.ctx, color)
            bl.blContextSetStrokeStyleRgba32(self.ctx, color)
        end,
        rgba = function(self, r, g, b, a)
            a = a ~= nil and a or 0xff
            -- 24bit‚ÍƒVƒtƒg‚Å‚Í‚È‚­Š|‚¯ŽZ‚Å‚È‚¯‚ê‚Î‚È‚ç‚È‚¢
            local color = a * 0x1000000 + bor(
                lshift(r, 16),
                lshift(g, 8),
                b
            )
            self:color(color)
        end,
        alpha = function(self, alpha)
            bl.blContextSetGlobalAlpha(self.ctx, alpha)
        end,
        compop = function(self, compop)
            bl.blContextSetCompOp(self.ctx, compop)
        end,

        --[[ gradient ]]
        gradient = function(t, values, extendMode)
            return BLGradient(t, values, extendMode)
        end,
        setGradient = function(self, gradient)
            bl.blContextSetFillStyle(self.ctx, gradient)
        end,

        --[[ path ]]
        clear = function(self)
            bl.blPathClear(self.path)
        end,
        move = function(self, x, y)
            bl.blPathMoveTo(self.path, x, y)
        end,
        line = function(self, x, y)
            bl.blPathLineTo(self.path, x, y)
        end,


        --[[ draw options ]]
        strokeWidth = function(self, strkw)
            bl.blContextSetStrokeWidth(self.ctx, strkw)
        end,
        fillRule = function(self, rule)
            bl.blContextSetFillRule(self.ctx, rule)
        end,


        --[[ draw ]]
        stroke = function(self, strkw)
            if type(strkw) == 'number' then
                self:strokeWidth(strkw)
            end
            bl.blContextStrokePathD(self.ctx, ffi.new(BLPoint, 0, 0), self.path)
        end,
        fill = function(self, rule)
            if rule ~= nil then
                self:fillRule(rule)
            end
            bl.blContextFillPathD(self.ctx, ffi.new(BLPoint, 0, 0), self.path)
        end,
        fillAll = function(self)
            bl.blContextFillAll(self.ctx)
        end,

        --[[ cookie ]]
        save = function(self, cookie)
            bl.blContextSave(self.ctx, cookie)
        end,
        restore = function(self, cookie)
            bl.blContextRestore(self.ctx, cookie)
        end,

        --[[ external ]]
        curve = function(self, func, div)
            self:move(func(0))
            for i = 1, div do
                local t = i / div
                self:line(func(t))
            end
        end

    }
})

ffi.metatype(BLGradient, {
    __new = function(self, t, values, extendMode)
        self = ffi.new(BLGradient)
        local _values = ffi.new(valuesTypes[t + 1], unpack(values))
        bl.blGradientInitAs(
            self,
            t,
            _values,
            extendMode,
            nil,
            0,
            nil
        )
        return self
    end,
    __gc = function(self)
        bl.blGradientDestroy(self)
    end,
    __index = {
        addStop = function(self, offset, color)
            bl.blGradientAddStopRgba32(self, offset, color)
        end,
        addStopRgba = function(self, offset, r, g, b, a)
            a = a == nil and 0xff or a
            local color = a * 0x1000000 + bor(
                lshift(r, 16),
                lshift(g, 8),
                b
            )
            self:addStop(offset, color)
        end
    }
})

return BLAviUtl
