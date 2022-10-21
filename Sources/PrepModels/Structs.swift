import Foundation

struct AmountWithUnit: Codable {
    var double: Double
    var unit: Int16
    var weightUnit: Int16?
    var volumeUnit: Int16?
    var sizeUnitId: UUID?
    var sizeUnitVolumePrefixUnit: Int16?
}

struct Density: Codable {
    var weightDouble: Double
    var weightUnit: Int16
    var volumeDouble: Double
    var volumeUnit: Int16
}

struct Barcode: Codable {
    var payload: String
    var symbology: Int16
}

struct Micronutrient: Codable {
    var name: String
    var amount: Double
    var unit: Int16
}

struct Nutrients: Codable {
    var energyInKcal: Double
    var carb: Double
    var protein: Double
    var fat: Double
    var micronutrients: [Micronutrient]
}

struct Size: Codable {
    var name: String
    var volumePrefixUnit: Int16?
    
    var quantity: Double
    var amount: Double
    var unit: Int16
    var weightUnit: Int16?
    var volumeUnit: Int16?
    var sizeUnitId: UUID?
    var sizeUnitVolumePrefixUnit: Int16?
}
