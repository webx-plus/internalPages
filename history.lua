local history_list = get("history")
local history = __bussinga.get_history()

print(history)

history_list.set_content(history)