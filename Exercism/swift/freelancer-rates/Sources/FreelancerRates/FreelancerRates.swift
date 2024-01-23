func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate * 8)
}
func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    let monthlyRate = (hourlyRate * 8) * 22
    let result = Double(monthlyRate) - (Double(monthlyRate) * (discount / 100.0))
    return result.rounded()
}
func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    let hourlyDiscount = Double(hourlyRate) - (Double(hourlyRate) * (discount / 100.0))
    let result = (budget / hourlyDiscount) / 8.0
    return result.rounded(.down)
}
