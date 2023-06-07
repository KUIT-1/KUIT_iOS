//
//  DataModel.swift
//  baemin
//
//  Created by 황재상 on 2023/06/02.
//

import Foundation

// MARK: - ImgRP
struct ImgRP: Codable {
    let code, status: Int
    let message: String
    let result: [Result]
}

// MARK: - Result
struct Result: Codable {
    let img: String
}
