import Foundation

protocol WeatherServing {
    func fetchWeather(for city: String) throws -> WeatherResponse
}

struct MockWeatherService: WeatherServing {
    let json: String
    func fetchWeather(for city: String) throws -> WeatherResponse {
        let data = Data(json.utf8)
        return try JSONDecoder().decode(WeatherResponse.self, from: data)
    }
}
