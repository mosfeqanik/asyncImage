//
//  ContentView.swift
//  starter_guide
//
//  Created by md mosfeq anik
//

import SwiftUI
extension Image{
    func imageModifier()-> some View {
        self
            .resizable()
            .scaledToFit()
    }
    func iconModifier()-> some View {
        self
            .imageModifier()
            .frame(maxWidth:128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}
struct ContentView: View {
    private let imageUrl:String = "https://credo.academy/credo-academy@3x-png"
    var body: some View {
//        AsyncImage(url: URL(string: imageUrl), scale: 3.0)
//        AsyncImage(url: URL(string: imageUrl)) { image in
//              image
//                  .resizable()
//                  .scaledToFit()
//          } placeholder: {
//              Image(systemName: "photo.circle.fill")
//                  .resizable()
//                  .scaledToFit()
//                  .frame(maxWidth: 128)
//                  .foregroundColor(.purple)
//                  .opacity(0.5)
//          }
//          .padding(40)
//        AsyncImage(url: URL(string: imageUrl)) { image in
//            image.imageModifier()
//
//        } placeholder: {
//            Image(systemName: "photo.circle.fill").iconModifier()
//        }
//        .padding(40)

        AsyncImage(url: URL(string:imageUrl)){ phase in
            if let image = phase.image{
                image.imageModifier()
            } else if phase.error != nil {
                Image(systemName: "ant.circle.fill").iconModifier()
            } else{
                Image(systemName: "photo.circle.fill").iconModifier()
            }
        }.padding(40)
    }
}

#Preview {
    ContentView()
}
