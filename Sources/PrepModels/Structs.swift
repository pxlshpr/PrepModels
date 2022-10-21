import Foundation

public struct AmountWithUnit: Codable {
    public var double: Double
    public var unit: Int16
    public var weightUnit: Int16?
    public var volumeUnit: Int16?
    public var sizeUnitId: UUID?
    public var sizeUnitVolumePrefixUnit: Int16?
    
    init(double: Double, unit: Int16, weightUnit: Int16? = nil, volumeUnit: Int16? = nil, sizeUnitId: UUID? = nil, sizeUnitVolumePrefixUnit: Int16? = nil) {
        self.double = double
        self.unit = unit
        self.weightUnit = weightUnit
        self.volumeUnit = volumeUnit
        self.sizeUnitId = sizeUnitId
        self.sizeUnitVolumePrefixUnit = sizeUnitVolumePrefixUnit
    }
}

public struct Density: Codable {
    public var weightDouble: Double
    public var weightUnit: Int16
    public var volumeDouble: Double
    public var volumeUnit: Int16
}

public struct Barcode: Codable {
    public var payload: String
    public var symbology: Int16
}

public struct Micronutrient: Codable {
    public var name: String
    public var amount: Double
    public var unit: Int16
}

public struct Nutrients: Codable {
    public var energyInKcal: Double
    public var carb: Double
    public var protein: Double
    public var fat: Double
    public var micronutrients: [Micronutrient]
}

public struct Size: Codable {
    public var name: String
    public var volumePrefixUnit: Int16?
    
    public var quantity: Double
    public var amount: Double
    public var unit: Int16
    public var weightUnit: Int16?
    public var volumeUnit: Int16?
    public var sizeUnitId: UUID?
    public var sizeUnitVolumePrefixUnit: Int16?
}
