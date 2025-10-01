import Foundation

// Inline sample JSON (like OpenWeather structure), in Kelvin
let sampleJSON = """
{
  "name": "Chicago",
  "main": { "temp": 293.15 },
  "weather": [{ "description": "clear sky" }]
}
"""

let vm = WeatherViewModel(service: MockWeatherService(json: sampleJSON))
let display = vm.load(city: "Chicago")
print("City: \(display.city)")
print("Temp: \(display.celsius)")
print("Summary: \(display.summary)")
