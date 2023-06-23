//
//  dataModel.swift
//  week9
//
//  Created by YoonSub Lim on 2023/05/31.
//


// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct ResponseJSON: Codable {
    let errorMessage: ErrorMessage
    let realtimeArrivalList: [RealtimeArrivalList]
}

// MARK: - ErrorMessage
struct ErrorMessage: Codable {
    let status: Int
    let code, message, link, developerMessage: String
    let total: Int
}

// MARK: - RealtimeArrivalList
struct RealtimeArrivalList: Codable {
    let beginRow, endRow, curPage, pageRow: JSONNull?
    let totalCount, rowNum, selectedCount: Int
    let subwayID: String
    let subwayNm: JSONNull?
    let updnLine, trainLineNm: String
    let subwayHeading: JSONNull?
    let statnFid, statnTid, statnID, statnNm: String
    let trainCo: JSONNull?
    let trnsitCo, ordkey, subwayList, statnList: String
    let btrainSttus, barvlDt, btrainNo, bstatnID: String
    let bstatnNm, recptnDt, arvlMsg2, arvlMsg3: String
    let arvlCD: String

    enum CodingKeys: String, CodingKey {
        case beginRow, endRow, curPage, pageRow, totalCount, rowNum, selectedCount
        case subwayID = "subwayId"
        case subwayNm, updnLine, trainLineNm, subwayHeading, statnFid, statnTid
        case statnID = "statnId"
        case statnNm, trainCo, trnsitCo, ordkey, subwayList, statnList, btrainSttus, barvlDt, btrainNo
        case bstatnID = "bstatnId"
        case bstatnNm, recptnDt, arvlMsg2, arvlMsg3
        case arvlCD = "arvlCd"
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
