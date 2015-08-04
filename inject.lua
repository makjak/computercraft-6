strFun = string.dump(print)

function inject()
    print("inject")
end

strInject = string.dump(inject)

load(strPrint .. strInject)()
