//
//  ContentView.swift
//  navYT
//
//  Created by Irianda on 29/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Beranda")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "paperplane.fill")
                        Text("Eksplorasi")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "tray.fill")
                        Text("Subscription")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "envelope.fill")
                        Text("Kotak Masuk")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "play.rectangle.fill")
                        Text("Koleksi")
                    }
            }
            .accentColor(.red)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    var body: some View{
        NavigationView{
            Kontent()
                .navigationBarItems(leading:
                                        HStack{
                                            Button(action:{print("hello button")
                                                
                                            }){
                                                Image("yt")
                                                    .renderingMode(.original)
                                                    .resizable()
                                                    .frame(width: 50, height: 50)
                                            }
                                        },
                                    trailing:
                                        HStack(spacing : 20){
                                            Button(action: {print("Hello print")}){
                                                Image(systemName: "tray.full")
                                                    .foregroundColor(Color.secondary)
                                            }
                                            Button(action: {print("Hello print")}){
                                                Image(systemName: "video.fill")
                                                    .foregroundColor(Color.secondary)
                                            }
                                            Button(action: {print("Hello print")}){
                                                Image(systemName: "magnifyingglass")
                                                    .foregroundColor(Color.secondary)
                                            }
                                            
                                            Button(action: {print("Hello print")}){
                                                Image("poto")
                                                    .renderingMode(.original)
                                                    .resizable()
                                                    .frame(width: 20, height: 20)
                                                    .clipShape(Circle())
                                            }
                                        }
                                    )
                .navigationBarTitle("",displayMode: .inline)
                .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

struct Kontent : View{
    var body : some View{
        List{
            CellKontent(imageKontent: "itu" , profileKontent: "Poto", judul: "Swift UI Part 1", deskripsi: "ditonton 10x", durasi: "24:20")
            CellKontent(imageKontent: "lah", profileKontent: "Poto", judul: "Swift UI Part 2", deskripsi: "ditonton 10x", durasi: "24:20")
            CellKontent(imageKontent: "pokonya", profileKontent: "Poto", judul: "Swift UI Part 3", deskripsi: "ditonton 10x", durasi: "24:20")
        }
    }
}

struct CellKontent : View{
    var imageKontent : String
    var profileKontent : String
    var judul : String
    var deskripsi : String
    var durasi : String
    
    var body: some View{
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image(imageKontent)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Text(durasi)
                    .padding(.all,2)
                    .foregroundColor(.white)
                    .font(.caption)
                    .background(Color.black)
                    .cornerRadius(5)
                    .padding(.trailing,5)
                    .padding(.bottom,5)
            }
            
            HStack(spacing: 20){
                Image(profileKontent)
                    .resizable()
                    .frame(width: 25, height: 30)
                    .clipShape(Circle())
                VStack(alignment : .leading){
                    Text(judul).font(.headline)
                    HStack{
                        Text(deskripsi).font(.caption)
                        Spacer()
                        Image(systemName: "list.bullet")
                    }
                }
                
            }
        }
    }
}
