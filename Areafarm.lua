local locations = {}

locations.AddTable = function(arg, args)
    table.insert(arg, args)
end

locations.NewTable = function()
    return {}
end

locations.GetTableLength = function(arg)
    return #arg
end

locations.GetTableElement = function(arg, index)
    return arg[index]
end

return locations
