//
//  ContentView.swift
//  replic_instagram
//
//  Created by  Denis on 05.04.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).ignoresSafeArea(.all)
            VStack {
                TopNav()
                
                Story()
                InstaText()
                
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack (spacing: 30) {
                        ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                            CardView()
                        }
                        .padding(.bottom, 180)
                    }
                    .frame(height: 500)
                    .padding(.leading, 25)
                }
                
                Spacer()
                
                TaskBar()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TopNav: View {
    var body: some View {
        HStack {
            Image(systemName: "camera")
                .resizable().frame(width: 28, height: 24)
                .padding(.leading, 25)
            Spacer()
            Text("Instagram")
            Spacer()
            Image(systemName: "paperplane")
                .resizable().frame(width: 28, height: 24)
                .padding(.trailing, 25)
            
        }
    }
}

struct Story: View {
    var body: some View {
        HStack {
            VStack {
                ZStack {
                    VStack
                    {
                        Spacer()
                        Image(systemName: "person.fill")
                            .resizable().frame(width: 35, height: 35)
                            .foregroundColor(.white)
                    }
                    .frame(width: 50, height: 50)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .cornerRadius(25)
                    
                    VStack{
                        Image(systemName: "plus")
                            .resizable().frame(width: 12, height: 12)
                            .foregroundColor(.white)
                    }
                    .frame(width: 22, height: 22)
                    .background(Color.blue)
                    .cornerRadius(11)
                    .offset(x: 20, y: 12)
                }
                
                Text("Your Story")
                    .font(.system(size: 14, weight: .medium, design: .rounded))
            }
            .padding(.leading, 25)
            .padding(.top, 25)
            Spacer()
        }
    }
}

struct InstaText: View {
    var body: some View {
        VStack{
            Text("Welcome to Instagram")
                .font(.system(size: 18, weight: .bold, design: .rounded))
            Text("When you follow people, you will see the photos and videos they post here.")
                .font(.system(size: 15, weight: .medium, design: .rounded))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .frame(width: 325)
        }
        .padding(.top, 25)
    }
}

struct TaskBar: View {
    var body: some View {
        HStack(spacing: 50){
            Image(systemName: "house")
                .resizable().frame(width: 22, height: 22)
            Image(systemName: "magnifyingglass")
                .resizable().frame(width: 22, height: 22)
            Image(systemName: "plus.app")
                .resizable().frame(width: 22, height: 22)
            Image(systemName: "heart")
                .resizable().frame(width: 22, height: 22)
            Image(systemName: "person")
                .resizable().frame(width: 22, height: 22)
        }
    }
}

struct CardView: View {
    var body: some View {
        VStack {
            Image("one")
                .resizable()
                .frame(width: 65, height: 65)
                .cornerRadius(30)
            Text("user")
                .font(.system(size: 15, weight: .bold, design: .rounded))
            Text("User Name")
                .font(.system(size: 12, weight: .medium, design: .rounded))
                .foregroundColor(.gray)
                .padding(.top, 3)
            HStack(spacing:5){
                Image("one_rec")
                    .resizable()
                    .frame(width: 60, height: 60)
                Image("one_rec")
                    .resizable()
                    .frame(width: 60, height: 60)
                Image("one_rec")
                    .resizable()
                    .frame(width: 60, height: 60)
            }
            Text("Suggest for you")
                .font(.system(size: 12, weight: .medium, design: .rounded))
                .foregroundColor(.gray)
                .padding(.vertical, 20)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Follow")
                    .foregroundColor(.white)
                    .font(.system(size: 15, weight: .medium, design: .rounded))
            }
            .frame(width: 140, height: 34)
            .background(Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)))
            .cornerRadius(10)
            
            
        }.frame(width: 200, height: 300)
        .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
        .cornerRadius(20)
        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.1), radius: 20, x: 0, y: 20)
    }
}
