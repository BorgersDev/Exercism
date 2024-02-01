func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
    return { enteredPassword in
        enteredPassword == password ? secret : "Sorry. No hidden secrets here."
    }
}


func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let firstNumber = f(room)
  let secondNumber = f(firstNumber)
  let thirdNumber = f(secondNumber)
    return (firstNumber, secondNumber, thirdNumber)
}

func makeCombo(_ x: Int) -> Int {
    return (x * 13) % 256
}
