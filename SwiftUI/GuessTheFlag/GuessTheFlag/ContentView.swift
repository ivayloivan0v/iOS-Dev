//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ivaylo Ivanov on 10/19/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var isGameOver = false
    @State private var scoreTitle = ""
    @State private var gameOver = "Game Over"
    @State private var score = 0
    @State private var round = 1
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius: 1)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Round: \(round) of 3")
                    .foregroundColor(.white)
                    .font(.title.bold())
                
                Text("Score: \(score)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button(round == 3 ? "End Game" : "Continue", action: askQuestion)
        } message: {
            Text("Your score is \(score)")
        }
        .alert(gameOver, isPresented: $isGameOver) {
            Button("Restart", action: reset)
        } message: {
            Text("Game Over, your score is \(score)")
        }
    }
    
    func flagTapped (_ number: Int) {
        
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong this is the flag of \(countries[number])."
            score = score
        }
        
        showingScore = true
        
        

        
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)

        if round != 3 {
            round += 1
        } else {
            isGameOver = true
        }
    }
    
    func reset(){
        score = 0
        round = 1
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
