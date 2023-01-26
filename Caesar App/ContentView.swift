//
//  ContentView.swift
//  Caesar App
//
//  Created by  on 08.12.22.
//

import SwiftUI

struct ContentView: View {
    @State private var toEcryptText: String = "";
    @State private var resultText: String = "";
    @State private var option: String = "Caesar";
    
    var body: some View {
        VStack {
            Text("Simple Cypher")
                .multilineTextAlignment(.center)
            TextField("Enter text to Encrypt/Decrypt here", text: $toEcryptText, axis: .vertical)
                .lineLimit(5...10)
                .background(Color(red: 0.9, green: 0.9, blue: 0.9))
                .padding()
           
            Picker("Option", selection: $option) {
                Text("Caesar").tag("Caesar")
                Text("FBI").tag("FBI")
            }
                .padding()
                .pickerStyle(SegmentedPickerStyle())
                 
            HStack {
                Button("Encrypt") {
                    var cyph: Cypher = Caesar();
                    if (option == "Caesar") {
                        cyph = Caesar()
                    }else if (option == "FBI") {
                        cyph = FBI()
                    }
                    resultText = toEcryptText.encrypt(cypher: cyph, params: [30000])
                }
                    .padding()
                    .background(Color(red: 0, green: 0, blue: 0.5))
                    .clipShape(Capsule())
                Button("Decrypt") {
                    var cyph: Cypher = Caesar();
                    if (option == "Caesar") {
                        cyph = Caesar()
                    }else if (option == "FBI") {
                        cyph = FBI()
                    }
                    resultText = toEcryptText.decrypt(cypher: cyph, params: [30000])
                }
                    .padding()
                    .background(Color(red: 0, green: 0, blue: 0.5))
                    .clipShape(Capsule())
            }
            Text("Result")
                .padding()
            TextField("Result", text: $resultText, axis: .vertical)
                .lineLimit(5...10)
                .background(Color(red: 0.9, green: 0.9, blue: 0.9))
                .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
