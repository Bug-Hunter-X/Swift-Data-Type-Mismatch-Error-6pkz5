func calculateArea(width: Double, height: Double) -> Double {
    return width * height
}

func calculateAreaSafely(width: String, height: String) -> Double? {
    guard let widthDouble = Double(width), let heightDouble = Double(height) else {
        return nil // Handle invalid input
    }
    return widthDouble * heightDouble
}

let area = calculateArea(width: 10, height: 5) 
print(area) // Output: 50.0

let areaFromString = calculateAreaSafely(width: "10", height: "5")
print(areaFromString ?? "Invalid input") // Output: 50.0

let invalidArea = calculateAreaSafely(width: "ten", height: "5")
print(invalidArea ?? "Invalid input") // Output: Invalid input