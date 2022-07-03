import json

class Config():
    def pegar_valor_json(self, data):
        json_file = open("./Infra/Config/config.json")

        res = json.load(json_file)
        return res[data]

print(Config.pegar_valor_json(Config,"browser"))