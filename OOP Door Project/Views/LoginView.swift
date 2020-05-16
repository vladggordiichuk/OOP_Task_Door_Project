//
//  LoginView.swift
//  OOP Door Project
//
//  Created by Vlad Gordiichuk on 16.05.2020.
//  Copyright © 2020 Vlad Gordiichuk. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State private var userId: String = ""
    
    var body: some View {
        HStack {
            Form {
                Section {
                    TextField("User ID", text: $userId)
                    Button(action: {
                        print(self.userId)
                        User(id: Int(self.userId) ?? 0, name: "Ted Baker")
                    }) {
                        Text("Log In")
                    }
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
