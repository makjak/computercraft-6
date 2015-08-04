strPrint = string.dump(print())

function inject()
    print("fun")
end

strInject = string.dump(inject())

load(strPrint .. strInject)()
