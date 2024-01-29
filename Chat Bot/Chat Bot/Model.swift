////
////  Model.swift
////  Chat Bot
////
////  Created by Carver Wambold24 on 1/26/24.
////
//
//import Foundation
//import SwiftUI
//
//struct APIResponse: Decodable {
//    let id: String?
//    let object: String
//    let created: Int
//    let model: String
//    let choices: [Choice]
//    let usage: Usage
//}
//
//struct Usage: Decodable {
//    let prompt_tokens: Int
//    let completion_tokens: Int
//    let total_tokens: Int
//}
//
//struct APIRequest: Encodable {
//    let model: Model
//    let messages: [Message]
//}
//
//struct Choice: Decodable {
//    let index: Int
//    let message: Message
//    let finish_reason: String
//}
//
//struct Message: Codable {
//    let role: Role
//    let content: String
//}
//
//
//enum Role: String, Codable {
//    case system
//    case user
//    case assistant
//    case function
//}
//
//enum Model: String, Codable {
//    case gpt_3_5_turbo = "gpt-3.5-turbo"
//}
