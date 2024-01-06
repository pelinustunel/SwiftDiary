//
//  UserSingleton.swift
//  SnapchatClone
//
//  Created by Pelin Üstünel on 27.08.2023.
//

import Foundation

class UserSingleton {
    
    static let sharedUserInfo = UserSingleton()
    
    var email = ""
    var username = ""
    
    private init(){
        
         
    }
    
}
