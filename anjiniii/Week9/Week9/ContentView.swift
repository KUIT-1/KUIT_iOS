//
//  ContentView.swift
//  Week9
//
//  Created by 이안진 on 2023/05/31.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var apiTest = ApiTest()
    @State private var responseText = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Button {
                apiTest.urlSessionApi { response in
                    responseText = String(response.description)
                }
            } label: {
                Text("URLSession Api")
            }
            
            Text("Response")
                .font(.title)
            Text(responseText)
            
            HStack {
                Spacer()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
