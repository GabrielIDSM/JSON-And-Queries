local tableReader = {}
local Space = "    "

tableReader.Reader = function(Table, N)
	if type(Table) == type({}) 
	then
		for index, data in ipairs(result) do
		    print(getSpaceString(N) .. "'".. index .. "':")
		    if type(data) == type({})
		    then
		    	for key, value in pairs(data) do
				    if type(value) == type({})
				    then
				    	print(getSpaceString(N+1).."'"..key.."':")
				    	RecReader(value, N+2)
				    else
				    	print(getSpaceString(N+1).."'"..key.."':", value)
				    end
				end
			else
				print(getSpaceString(N), data)
		    end
		end
	else
		print(getSpaceString(N), Table)
	end
end

function getSpaceString(N)
	local aux = ""
	for i=0, N-1 ,1 do
		aux = aux .. Space
	end
	return aux
end

function RecReader(Table, N)
	if type(Table) == type({})
	then
		for key, value in pairs(Table) do
			if type(value) == type({})
			then
				print(getSpaceString(N).."'"..key.."':")
				RecReader(value, N+1)
			else
				print(getSpaceString(N).."'"..key.."':", value)
			end
		end
	else
		print(getSpaceString(N), data)
	end
end

return tableReader	