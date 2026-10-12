local selected_methods = {}
local preset = options.preset_key and find_preset(options.preset_key)
if preset then
    for _, method_key in ipairs(preset.methods or {}) do
        selected_methods[method_key] = true
    end
end

local single_enabled = false
for feature in pairs(features) do
    if features[feature] then
        single_enabled = true
        break
    end
end
