//
//  ContentView.swift
//  Week9
//
//  Created by 이안진 on 2023/05/31.
//

import GoogleSignIn
import GoogleSignInSwift
import SwiftUI

struct ContentView: View {
    @StateObject private var apiTest = ApiTest()
    @StateObject private var kakaoAuthVM = KakaoAuthViewModel(isLoggedIn: false)
    
    @State private var responseText = ""
    @State private var loginResponseText = ""
    @State private var loginSocial = ""
    
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
                        responseText = String(response.title)
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
            
            Text("Login Response \(loginSocial): ")
                .font(.title2)
            Text(loginResponseText)
                
            Button {
                kakaoAuthVM.login { idToken in
                    print("DEBUG kakao login idToken: \(idToken)")
                    loginSocial = "KAKAO"
                    loginResponseText = idToken
                }
            } label: {
                kakaoLoginButton
            }
            
            GoogleSignInButton {
                handleSignInButton { email in
                    print("DEBUG google login email: \(email)")
                    loginSocial = "Google"
                    loginResponseText = email
                }
            }
            
            HStack {
                Button {
                    kakaoAuthVM.logout()
                    loginSocial = ""
                    loginResponseText = ""
                } label: {
                    Text("KAKAO logout")
                }
                
                Divider()
                    .frame(height: 16)
                
                Button {
                    GIDSignIn.sharedInstance.signOut()
                    loginSocial = ""
                    loginResponseText = ""
                } label: {
                    Text("Google logout")
                }
                .disabled(true)
            }
        }
    }
    
    func handleSignInButton(completion: @escaping (String) -> Void) {
        GIDSignIn.sharedInstance.signIn(withPresenting: UIHostingController(rootView: ContentView())) { signInResult, error in
            if let error = error {
                print("DEBUG google login error: \(error)")
                return
            }
            
            guard let result = signInResult else { return }
            
            let user = result.user
            let email = user.profile?.email ?? ""
            
            completion(email)
//            let fullName = user.profile?.name ?? ""
//            let givenName = user.profile?.givenName ?? ""
//            let familyName = user.profile?.familyName ?? ""
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
