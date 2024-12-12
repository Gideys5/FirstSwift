import SwiftUI

struct UserManager {
    @State var users: [String: User] = [:]
    @State var currentUser: User? = nil
    
    func register(username: String, password: String, email: String) -> Bool {
           if users[username] != nil {
               return false
           }
           users[username] = User(username: username, password: password, email: email)
           return true
       }
       
       func login(username: String, password: String) -> Bool {
           guard let user = users[username], user.password == password else {
               return false
           }
           currentUser = user
           return true
       }
       
       func logout() {
           currentUser = nil
       }

   
}


