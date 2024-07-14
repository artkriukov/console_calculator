print("Добро пожаловать в программу калькулятор")

print("Выберите операцию: +, -, * или /")
let operation = readLine() ?? ""

print("Введите целое число")
let firstNum = readLine() ?? ""

print("Введите второе целое число")
let secondNum = readLine() ?? ""

print("Идет вычисление примера: " + firstNum + " " + operation + " " + secondNum)

if let firstNum = Int(firstNum){
    if let secondNum = Int(secondNum){
        switch operation {
        case "+": print("Результат: " + String(firstNum + secondNum))
        case "-": print("Результат: " + String(firstNum - secondNum))
        case "*": print("Результат: " + String(firstNum * secondNum))
        case "/":
            if secondNum != 0 {
                print("Результат: " + String(firstNum + secondNum))
            }else {
             print("Деление на 0 является недопустимой операцией")
            }
        default: print("Вы ввели неверную операцию")
        }
    } else{
        print("Вы ввели неверно второе число")
    }
}else{
    print("Вы ввели неверно первое число")
}
