import Foundation

struct WeatherResponse: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}
struct Main: Codable { let temp: Double }
struct Weather: Codable { let description: String }

struct WeatherDisplay {
    let city: String
    let celsius: String
    let summary: String
}
