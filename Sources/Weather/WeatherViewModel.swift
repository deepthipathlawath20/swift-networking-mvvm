import Foundation

final class WeatherViewModel {
    private let service: WeatherServing
    init(service: WeatherServing) { self.service = service }

    func load(city: String) -> WeatherDisplay {
        do {
            let res = try service.fetchWeather(for: city)
            let c = res.main.temp - 273.15
            let display = WeatherDisplay(
                city: res.name,
                celsius: String(format: "%.1f℃", c),
                summary: res.weather.first?.description.capitalized ?? "—"
            )
            return display
        } catch {
            return WeatherDisplay(city: city, celsius: "—", summary: "Error: \(error)")
        }
    }
}
