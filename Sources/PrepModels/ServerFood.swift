import Fluent
import Vapor

final class ServerFood: Model, Content {
    static let schema = "foods"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "name") var name: String
    @Field(key: "emoji") var emoji: String
    @OptionalField(key: "detail") var detail: String?
    @OptionalField(key: "brand") var brand: String?
    @OptionalField(key: "barcodes") var barcodes: [Barcode]?

    @Field(key: "amount") var amount: AmountWithUnit
    @Field(key: "serving") var serving: AmountWithUnit
    @Field(key: "nutrients") var nutrients: Nutrients
    @Field(key: "sizes") var sizes: [Size]
    @OptionalField(key: "density") var density: Density?
   
    @OptionalField(key: "link_url") var linkeUrl: String?
    @OptionalField(key: "prefilled_url") var prefilled_url: String?
    @OptionalField(key: "image_ids") var imageIds: [UUID]?

    init() { }

    init(id: UUID? = nil, name: String) {
        self.id = id
        self.name = name
    }
}
