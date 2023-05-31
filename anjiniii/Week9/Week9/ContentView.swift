//
//  ContentView.swift
//  Week9
//
//  Created by 이안진 on 2023/05/31.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var apiTest = ApiTest()
    @StateObject var kakaoAuthVM = KakaoAuthViewModel(isLoggedIn: false)
    
    @State private var responseText = ""
    @State private var loginResponseText = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            apiTestView
            Divider()
            loginTestView
        }
        .padding()
    }
    
    var apiTestView: some View {
        VStack(alignment: .leading) {
            HStack {
                Button {
                    apiTest.urlSessionApi { response in
                        responseText = String(response.description)
                    }
                } label: {
                    Text("URLSession Api")
                }
                
                Divider()
                    .frame(height: 16)
                
                Button {
                    apiTest.alamofireApi { response in
                        responseText = String(response.description)
                    }
                } label: {
                    Text("Alamofire Api")
                }
            }
            
            Text("Response:")
                .font(.title2)
            Text(responseText)
        }
    }
    
    var loginTestView: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Login: ")
                Text(kakaoAuthVM.isLoggedIn ?? false ? "true" : "false")
            }
            .font(.title2)
            
            Text("Login Response (idToken): ")
                .font(.title2)
            Text(loginResponseText)
                
            Button {
                kakaoAuthVM.login { idToken in
                    print("DEBUG kakao login idToken: \(idToken)")
                    loginResponseText = idToken
                }
            } label: {
                kakaoLoginButton
            }
        }
    }
    
    var kakaoLoginButton: some View {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(Color("KakaoColor"))
                    .frame(height: 60)
                HStack {
                    Image("KakaoLoginLogo")
                    Text("Login with Kakao")
                        .font(.system(size: 24))
                        .foregroundColor(.black.opacity(0.85))
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
