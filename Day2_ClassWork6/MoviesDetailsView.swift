//
//  MoviesDetailsView.swift
//  Day2_ClassWork6
//
//  Created by Ali-mac Baqer on 5/5/20.
//  Copyright © 2020 AliBaqer. All rights reserved.
//

import SwiftUI

struct MoviesDetailsView: View {
    var movieName: String
    var mainCharacter: [String]
    var movieImage: UIImage
    
    var body: some View {
        
        
        
        ZStack{
            Text("")
            Image(uiImage: movieImage)
                .resizable()
                
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 40)
           
            
            Color.black.opacity(0.2)
               
            
            VStack(alignment: .center)
            {
                Image(uiImage: movieImage)
                    
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width:300)
                    .overlay(Circle().stroke(Color.white,lineWidth: 6))
                    .padding()
              
                
            
                Text(movieName)
                    .font(.system(size:100))
                    .bold()
                
                Text(mainCharacter.joined(separator: ","))
                    .font(.title)
               // Spacer()
            }
            .padding(.vertical)
            .foregroundColor(.white)
            .shadow(radius: 8)
            
        }
        
         
        
//        HStack(alignment: .center){
//            Image(uiImage: movieImage)
//                .resizable()
//                .scaledToFit()
//                .frame(height:100)
//                .clipShape(Circle())
//
//            VStack(alignment: .leading){
//                Text(movieName)
//                    .font(.largeTitle)
//                Text(mainCharacter.joined(separator: ","))
//
//            }
           
        }
        
    }
    


struct MoviesDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesDetailsView(movieName: "Aladdin", mainCharacter: ["Aladdin","Jasmin","Genie"], movieImage: #imageLiteral(resourceName: "Aladdin"))
    }
}
