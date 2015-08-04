function fun()
    print("fun")
end

function inject()
    print("inject")
end

local strFun = string.dump(fun)

local strInject = string.dump(inject)

local merge = load(strFun .. strInject)

local strDone = string.dump(merge)

print(strDone)
