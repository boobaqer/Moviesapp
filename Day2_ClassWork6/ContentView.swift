//
//  ContentView.swift
//  Day2_ClassWork6
//
//  Created by Ali-mac Baqer on 5/4/20.
//  Copyright © 2020 AliBaqer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        List{
            NavigationLink(destination: MoviesDetailsView(movieName: "Aladdin", mainCharacter: ["Aladdin","Jasmine","Genie"], movieImage: #imageLiteral(resourceName: "Aladdin")))
            {
            MovieRow(movieName: "Aladdin", mainCharacter: ["Aladdin","Jasmine","Genie"], movieImage: #imageLiteral(resourceName: "Aladdin")) // image literal: to download the image
                }
            MovieRow(movieName: "Aladdin", mainCharacter: ["Aladdin","Jasmine","Genie"], movieImage: #imageLiteral(resourceName: "Aladdin"))
            
            MovieRow(movieName: "Aladdin", mainCharacter: ["Aladdin","Jasmine","Genie"], movieImage: #imageLiteral(resourceName: "Aladdin"))
        }
        .navigationBarTitle("Movies")
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// extracting a subview
struct MovieRow: View {
    var movieName: String
    var mainCharacter: [String]
    var movieImage: UIImage
    
    var body: some View {
        HStack(alignment:.center){
            Image(uiImage: movieImage)
                .resizable()
                .scaledToFit()
                .frame(height:100)
                .clipShape(Circle())
            
            
            VStack(alignment: .leading){
                Text(movieName)
                    .font(.largeTitle)
                Text(mainCharacter.joined(separator: ","))
            }
        }.padding()
    }
}
