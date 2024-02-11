func getCard(at index: Int, from stack: [Int]) -> Int {
    return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
    guard index >= 0 && index < stack.count else {
        return stack
    }
    
    var modifiedStack = stack
    modifiedStack[index] = newCard
    
    return modifiedStack
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    var array = stack
    array.append(newCard)
    return array
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    guard index >= 0 && index < stack.count else {
        return stack
    }
    var array = stack
    array.remove(at: index)
    return array
}

func removeTopCard(_ stack: [Int]) -> [Int] {
    guard !stack.isEmpty else {
        return stack
    }
    var array = stack
    array.removeLast()
    return array
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
    guard !stack.isEmpty else {
        return stack
    }
    var array = stack
    array.insert(newCard, at: 0)
    return array
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
    guard !stack.isEmpty else {
        return stack
    }
    var array = stack
    array.removeFirst()
    return array
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
    return stack.count == size ? true : false
}

func evenCardCount(_ stack: [Int]) -> Int {
    var evenCards = 0
    for i in stack {
        if i.isMultiple(of: 2){
            evenCards += 1
        }
    }
    return evenCards
}
