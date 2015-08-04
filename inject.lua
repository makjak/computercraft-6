function fun()
    print("fun")
end

function inject()
    print("inject")
end

strFun = string.dump(fun)

strInject = string.dump(inject)

load(strPrint .. strInject)()
