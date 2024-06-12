local history_list = get("history")
local history = __bussinga.get_history()

print(history)

local history_map = history.map(function(item)
    -- return "<div><a href=\"" .. item.url "\"><p>" .. item.name .. "</p><p>" .. item.url .. "</p><p>" .. item.date .. "</p></a></div>"
    local date = os.date("%x") == os.date("%x", (item.date // 1000 )) and os.date("%H:%M", (item.date // 1000 )) or os.date("%d/%m/%y", (item.date // 1000 ))
    local string = [[
        <div class="history-item">
            <a href="%s">
                <p class="history-item-name">%s</p>
                <p class="history-item-url">%s</p>
                <p class="history-item-date">%s</p>
            </a>
        </div>
    ]]
    return string.format(string, item.url, item.name, item.url, date)
end)

history_list.set_content(history_map)