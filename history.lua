local history_list = get("history")
local history = __bussinga.get_history()

print(history)

local history_map = history.map(function(item)
    -- return "<div><a href=\"" .. item.url "\"><p>" .. item.name .. "</p><p>" .. item.url .. "</p><p>" .. item.date .. "</p></a></div>"
    return "<div>" .. item.name .. "</div>"
end)

history_list.set_content(history_map)