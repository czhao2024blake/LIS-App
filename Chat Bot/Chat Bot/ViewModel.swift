////
////  ViewModel.swift
////  Chat Bot
////
////  Created by Carver Wambold24 on 1/26/24.
////
//
//import Foundation
//import SwiftUI
//import Combine
//
//class ViewModel: ObservableObject {
//    
//    
//    func submit(prompt: String) -> String? {
//        
//        
//        let apiKey: String = "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"
//        var resultText: String = ""
//        var cancellable: AnyCancellable? = nil
//        @State var messages: [Message] = []
//        @State var timesRan: Int = 0
//        
//        guard let url = URL(string: "https://api.openai.com/v1/chat/completions") else {
//            print("Invalid URL")
//            return nil
//        }
//        
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        request.setValue("Bearer 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", forHTTPHeaderField: "Authorization")
//        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//        
//        messages.append(Message(role: .user, content: prompt))
//        
//        do {
//            let payload = APIRequest(model: .gpt_3_5_turbo, messages: messages)
//            let jsonData = try JSONEncoder().encode(payload)
//            request.httpBody = jsonData
//        } catch {
//            print("Error: \(error)")
//            return nil
//        }
//        
//        cancellable = URLSession.shared.dataTaskPublisher(for: request)
//            .tryMap { $0.data }
//            .decode(type: APIResponse.self, decoder: JSONDecoder())
//            .receive(on: DispatchQueue.main)
//            .sink(
//                receiveCompletion: { completion in
//                    switch completion {
//                    case .failure(let error):
//                        resultText = "Error: \(error.localizedDescription)"
//                    case .finished:
//                        break
//                    }
//                },
//                receiveValue: { response in
//                    resultText = response.choices.first?.message.content ?? "No response"
//                    print("hey i ran this fella")
////                    if (timesRan == 0){
////                        messages.append(Message(role: .system, content: "You are an English learning assistant helping users practice making essential appointments, such as scheduling doctor appointments.  YOU ARE ROLEPLAYING AS THE OTHER END OF THE TEXT STRING."))
////                        timesRan += 1
////                        
////                    } else {
////                        messages.append(Message(role: .system, content: resultText))
////                    }
//                    
//                }
//            )
//        print("hey i just ran")
//        return resultText
//    }
//}
