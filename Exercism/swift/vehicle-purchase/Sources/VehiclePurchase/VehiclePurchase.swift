func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let totalBudget = monthlyBudget * 60.0
    if price <= totalBudget {
            return "Yes! I'm getting a \(vehicle)"
    } else if price <= totalBudget * 1.1 {
            return "I'll have to be frugal if I want a \(vehicle)"
        } else {
            return "Darn! No \(vehicle) for me"
        }
}
func licenseType(numberOfWheels wheels: Int) -> String {
    switch wheels {
    case 2,3:
        return "You will need a motorcycle license for your vehicle"
    case 4,6:
        return "You will need an automobile license for your vehicle"
    case 18:
        return "You will need a commercial trucking license for your vehicle"
    default:
        return "We do not issue licenses for those types of vehicles"
    }
}
func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
    switch yearsOld {
    case 0..<3:
        return (originalPrice * 80) / 100
    case 3..<10:
        return (originalPrice * 70) / 100
    default:
        return (originalPrice * 50) / 100
    }
}
