import Foundation

// MARK: - ResponseJSON
struct ResponseJSON: Codable {
    let response: Response
}

// MARK: - Response
struct Response: Codable {
    let header: Header
    let body: Body
}

// MARK: - Body
struct Body: Codable {
    let items: Items
    let numOfRows, pageNo, totalCount: Int
}

// MARK: - Items
struct Items: Codable {
    let item: [Item]
}

// MARK: - Item
struct Item: Codable {
    let tmnCD: Int
    let tmnNm: String

    enum CodingKeys: String, CodingKey {
        case tmnCD = "tmnCd"
        case tmnNm
    }
}

// MARK: - Header
struct Header: Codable {
    let resultCode, resultMsg: String
}
