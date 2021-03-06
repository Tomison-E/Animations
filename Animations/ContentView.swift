//
//  ContentView.swift
//  Animations
//
//  Created by Lanre ESAN on 31/03/2020.
//  Copyright © 2020 tomisinesan.com. All rights reserved.
//

import SwiftUI
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


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
