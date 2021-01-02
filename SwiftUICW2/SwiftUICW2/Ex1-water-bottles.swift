//
//  ContentView.swift
//  SwiftUICW2
//
//  Created by Omar Alibrahim on 12/19/20.
//  Copyright: Kuwait Codes 2020 code.kw
import SwiftUI

struct Exercise1: View {
    @State var name = ""
    @State var water = 0
    
    var body: some View {
        ZStack {
            Image("charter")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("عهدة الماء 🚰")
                    .font(.largeTitle)
                    .fontWeight(.black)
                
//                ADD THE CODE HERE
                TextField("your name here", text: $name)
                Stepper("كم بطلاً من الماء تتعهد ان تشرب؟", value: $water, in: 0...20)
                Spacer()
                Text("أتعهد أنا")
                Text("\(name)")
                Text("أن اشرب")
                Text("\(water)")
                Text("من أكواب الماء يومياً \n والله على ما اقول شهيد")
                    .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Spacer()        
            }.padding(.horizontal, 80.0)
        }
    }
}

struct Exercise1_Previews: PreviewProvider {
    static var previews: some View {
        Exercise1()
    }
}
