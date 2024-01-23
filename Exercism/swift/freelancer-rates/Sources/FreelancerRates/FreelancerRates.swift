let dailyHours = 8.0
let daysByMonth = 22.0

func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate) * dailyHours
}
func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    return (dailyRateFrom(hourlyRate: hourlyRate) * daysByMonth * (1 - discount * 0.01)).rounded()
}
func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    return (budget / (dailyRateFrom(hourlyRate: hourlyRate) * (1 - discount * 0.01))).rounded(.down)
}
