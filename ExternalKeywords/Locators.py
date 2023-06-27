import json
import jsonpath


def read_json_file(loctname):
    f= open('C:/Users/vikramadityaanand/PycharmProjects/RobotAutomation/JsonFiles/Elements.json','r')
    response=json.loads(f.read())
    value= jsonpath.jsonpath(response,loctname)
    return value[0]
