//
//  snippets.swift
//  Animations
//
//  Created by Lanre ESAN on 03/04/2020.
//  Copyright © 2020 tomisinesan.com. All rights reserved.
//

import Foundation

/*
 struct ContentView: View {
     @State private var animationAmount: CGFloat = 1

     var body: some View {
         Button("Tap Me") {
             // do nothing
             self.animationAmount += 1
         }
         .padding(50)
         .background(Color.red)
         .foregroundColor(.white)
         .clipShape(Circle())
         .scaleEffect(animationAmount)
         .animation(.default)
     }
 }
 */


/*
 struct ContentView: View {
     @State private var animationAmount: CGFloat = 1

     var body: some View {
         Button("Tap Me") {
             // do nothing
             self.animationAmount += 1
         }
         .padding(50)
         .background(Color.red)
         .foregroundColor(.white)
         .clipShape(Circle())
         .scaleEffect(animationAmount)
         .animation(.interpolatingSpring(stiffness: 50, damping: 1))
     }
 }
 */


/*
 struct ContentView: View {
     @State private var animationAmount: CGFloat = 1

     var body: some View {
         Button("Tap Me") {
             // do nothing
             self.animationAmount += 1
         }
         .padding(50)
         .background(Color.red)
         .foregroundColor(.white)
         .clipShape(Circle())
         .scaleEffect(animationAmount)
         .animation(.easeOut(duration: 2.0))
     }
 }

 */


/*
 struct ContentView: View {
     @State private var animationAmount: CGFloat = 1

     var body: some View {
         Button("Tap Me") {
             // do nothing
             self.animationAmount += 1
         }
         .padding(50)
         .background(Color.red)
         .foregroundColor(.white)
         .clipShape(Circle())
         .scaleEffect(animationAmount)
         .animation(Animation.easeOut(duration: 2.0).repeatCount(3, autoreverses: true))
     }
 }
 */

/*
 struct ContentView: View {
     @State private var animationAmount: CGFloat = 1

     var body: some View {
         Button("Tap Me") {
             // do nothing
             self.animationAmount += 1
         }
         .padding(50)
         .background(Color.red)
         .foregroundColor(.white)
         .clipShape(Circle())
         .scaleEffect(animationAmount)
         .animation(Animation.easeOut(duration: 2.0).repeatForever(autoreverses: true))
     }
 }
 */

/*
 struct ContentView: View {
     @State private var animationAmount: CGFloat = 1

     var body: some View {
         Button("Tap Me") {
             // self.animationAmount += 1
         }
         .padding(40)
         .background(Color.red)
         .foregroundColor(.white)
         .clipShape(Circle())
         .overlay(
             Circle()
                 .stroke(Color.red)
                 .scaleEffect(animationAmount)
                 .opacity(Double(2 - animationAmount))
                 .animation(
                     Animation.easeOut(duration: 1)
                         .repeatForever(autoreverses: false)
                 )
         )
         .onAppear {
             self.animationAmount = 2
         }
         //.animation(Animation.easeOut(duration: 2.0).repeatForever(autoreverses: true))
     }
 }
 */

/*
 struct ContentView: View {
     @State private var animationAmount: CGFloat = 1

     var body: some View {
         Button("Tap Me") {
             // self.animationAmount += 1
         }
         .padding(40)
         .background(Color.red)
         .foregroundColor(.white)
         .clipShape(Circle())
         .overlay(
             Circle()
                 .stroke(Color.red)
                 .scaleEffect(animationAmount)
                 .opacity(Double(2 - animationAmount))
                 .animation(
                     Animation.easeOut(duration: 1)
                         .repeatForever(autoreverses: false)
                 )
         )
         .onAppear {
             self.animationAmount = 2
         }
         //.animation(Animation.easeOut(duration: 2.0).repeatForever(autoreverses: true))
     }
 }
 */

/*
 struct ContentView: View {
     @State private var animationAmount: CGFloat = 1

     var body: some View {
       VStack {
                  Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)

                  Spacer()

                  Button("Tap Me") {
                      self.animationAmount += 1
                  }
                  .padding(40)
                  .background(Color.red)
                  .foregroundColor(.white)
                  .clipShape(Circle())
                  .scaleEffect(animationAmount)
                  .animation(.easeOut(duration: 2.0))
              }
     }
 }
 */

/*
struct ContentView: View {
    @State private var animationAmount = 0.0

    var body: some View {
      Button("Tap Me") {
          withAnimation {
              self.animationAmount += 360
          }      }
      .padding(50)
      .background(Color.red)
      .foregroundColor(.white)
      .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
    }
}
*/

/*
 struct ContentView: View {
     @State private var animationAmount = 0.0

     var body: some View {
       Button("Tap Me") {
           withAnimation {
               self.animationAmount += 360
           }      }
       .padding(50)
       .background(Color.red)
       .foregroundColor(.white)
       .clipShape(Circle())
         .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
     }
 }
 */

/*
 struct ContentView: View {
     @State private var enabled = false
     @State private var dragAmount = CGSize.zero
     
     var body: some View {
    LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
    .frame(width: 300, height: 200)
    .clipShape(RoundedRectangle(cornerRadius: 10))
         .offset(dragAmount)
         .gesture(
             DragGesture()
                 .onChanged { self.dragAmount = $0.translation }
                 .onEnded {  _ in  withAnimation(.spring()) {
                      self.dragAmount = .zero
                  } }
         )
         //.animation(.spring())
     }
 }

 */

/*
 struct ContentView: View {
      let letters = Array("Hello SwiftUI")
      @State private var enabled = false
      @State private var dragAmount = CGSize.zero
     
     var body: some View {
           HStack(spacing: 0) {
         ForEach(0..<letters.count) { num in
             Text(String(self.letters[num]))
                 .padding(5)
                 .font(.title)
                 .background(self.enabled ? Color.blue : Color.red)
                 .offset(self.dragAmount)
                 .animation(Animation.default.delay(Double(num) / 20))
         }
     }
     .gesture(
         DragGesture()
             .onChanged { self.dragAmount = $0.translation }
             .onEnded { _ in
                 self.dragAmount = .zero
                 self.enabled.toggle()
             }
     )
     }
 }
 */

/*
 struct ContentView: View {
   @State private var isShowingRed = false
     
     var body: some View {
          VStack {
               Button("Tap Me") {
                withAnimation {
                     self.isShowingRed.toggle()
                 }
               }

           if isShowingRed {
                   Rectangle()
                       .fill(Color.red)
                       .frame(width: 200, height: 200)
                     .transition(.scale)
               }
           }
     }
 }
 */

/*
 struct CornerRotateModifier: ViewModifier {
     let amount: Double
     let anchor: UnitPoint

     func body(content: Content) -> some View {
         content.rotationEffect(.degrees(amount), anchor: anchor).clipped()
     }
 }
 */

/*
 extension AnyTransition {
     static var pivot: AnyTransition {
         .modifier(
             active: CornerRotateModifier(amount: -90, anchor: .topLeading),
             identity: CornerRotateModifier(amount: 0, anchor: .topLeading)
         )
     }
 }
 */
