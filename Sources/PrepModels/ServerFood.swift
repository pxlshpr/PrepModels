import Fluent
import Vapor

public final class ServerFood: Model, Content {
    public static let schema = "foods"
    
    @ID(key: .id) public var id: UUID?

    @Field(key: "name") public var name: String
    @Field(key: "emoji") public var emoji: String
    @OptionalField(key: "detail") public var detail: String?
    @OptionalField(key: "brand") public var brand: String?
    @OptionalField(key: "barcodes") public var barcodes: [Barcode]?

    @Field(key: "amount") public var amount: AmountWithUnit
    @Field(key: "serving") public var serving: AmountWithUnit
    @Field(key: "nutrients") public var nutrients: Nutrients
    @Field(key: "sizes") public var sizes: [Size]
    @OptionalField(key: "density") public var density: Density?
   
    @OptionalField(key: "link_url") public var linkeUrl: String?
    @OptionalField(key: "prefilled_url") public var prefilled_url: String?
    @OptionalField(key: "image_ids") public var imageIds: [UUID]?

    public init() { }

    public init(id: UUID? = nil, name: String) {
        self.id = id
        self.name = name
    }
}
