//
//  HomeViewModel.swift
//  Chat Bot
//
//  Created by Christopher Zhao24 on 2/2/24.
//

import Foundation

struct HomeViewModel {
    func getLanguageIndex(_ language: String) -> Int? {
        let languages = ["English", "Español", "Français"]
        for i in 0...languages.count-1 {
            if languages[i] == language {
                return i
            }
        }
        print("Language not found.")
        return nil
    }
}
