print("Добро пожаловать в  калькулятор!")

var history: [String] = []

while true {
    let operation = getDataFromUser(description: "Выберите операцию: +, -, * или /. Для завершения работы нажмите q. Для просмотра истории нажмите h." )
    
    if operation == "q"{
        exit(0)
    } else if operation == "h"{
        for example in history {
            print(example)
        }
    }
    
    let firstNum = getDataFromUser(description: "Введите первое число")
    let secondNum = getDataFromUser(description: "Введите второе число")
    
    let example = firstNum + " " + operation + " " + secondNum

    print("Программа делает вычисление примера: " + example)

    if let firstNumber = Int(firstNum) {
        if let secondNumber = Int(secondNum) {
            let result = colculate(operation: operation, firstNumber: firstNumber, secondNumber: secondNumber)
            if let result = result {
                showResult(result)
                history.append(example + " = " + String(result))
            }
        }else {
            print("Вы ввели неверное число")
        }
    }else{
        print("Вы ввели неверное число")
    }
    
    print("")
    print("------------------------")
    print("")
}

func getDataFromUser(description: String) -> String{
    print(description)
    return readLine() ?? ""
}

func showResult(_ result: Int){
    print("Результат: " + String(result))
}

func colculate(operation: String, firstNumber: Int, secondNumber: Int ) -> Int? {
    switch operation{
    case "+" : return firstNumber + secondNumber
    case "-" : return firstNumber - secondNumber
    case "*" : return firstNumber * secondNumber
    case "/" :
        if secondNumber != 0 {
            return firstNumber / secondNumber
        }else{
            print("Деление на 0 запрещенно")
            return nil
        }
    default: print("Вы ввели неверную операцию")
        return nil
    }
}

