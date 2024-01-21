//
//  OnboardingView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 20/01/24.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var sectionNumber = 0
    @AppStorage("name")  var name = ""
    @AppStorage("age")  var age = 35.0
    @AppStorage("gender") var gender = "Male"
    @AppStorage("is_signIn") var isSignin = false
    
    @State var showAlert = false
    @State var messageAlert = ""
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.pink.opacity(0.7), .purple], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Spacer()
                switch sectionNumber {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                default:
                    Text("default")
                }
                Spacer()
                signInButton
            }
            .padding()
        }.alert(messageAlert, isPresented: $showAlert) {
            Button("ok", role: .cancel) {
                
            }
        }
    }
}

//MARK: - components
extension OnboardingView {
    
    private var signInButton: some View {
        Text(sectionNumber == 0 ? "SIGN UP" : sectionNumber == 3 ? "FINISH" : "NEXT" )
            .foregroundStyle(.purple)
            .font(.headline)
            .frame(maxWidth: .infinity)
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .onTapGesture(perform: signUpClick)
    }
    
    private  var welcomeSection: some View {
        VStack(alignment: .center, spacing: 13) {
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("Find your match.")
                .font(.largeTitle.weight(.semibold))
            Text("This is the #1 app for finding your match online! In this tutorial we are practicing using AppStorage and other SwiftUl techniques.")
                .font(.body)
                .multilineTextAlignment(.center)
        }.foregroundStyle(.white)
    }
    
    private var addNameSection: some View {
        VStack(alignment: .center, spacing: 13) {
            Text("What's is your name?")
                .foregroundStyle(.white)
                .font(.largeTitle.weight(.semibold))
            TextField("Enter your name", text: $name)
                .padding()
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 13))
        }
    }
    
    private var addAgeSection: some View {
        VStack(alignment: .center, spacing: 13) {
            Text("What's your age?")
                .font(.largeTitle.weight(.semibold))
            Text(String(format: "%0.0f", age))
                .font(.largeTitle.weight(.semibold))
            Slider(value: $age, in: 18...50)
        }
        .foregroundStyle(.white)
        .tint(.white)
    }
    
    private var addGenderSection: some View {
        VStack(alignment: .center, spacing: 13) {
            Text("What's your gender")
                .font(.largeTitle.weight(.semibold))
            
            Picker(gender, selection: $gender) {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
            }.pickerStyle(.menu)
                .tint(.purple)
                .frame(maxWidth: .infinity, maxHeight: 55)
                .padding(.horizontal, 20)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .foregroundStyle(.white)
        .tint(.white)
    }
}

//MARK: - functions
extension OnboardingView {
    private func signUpClick() {
        if sectionNumber == 1 {
            guard name.count >= 3 else {
                showMessageAlert("Must a least 3 or more characher")
                return
            }
        }
        
        if sectionNumber == 3 {
            withAnimation(.spring) {
                isSignin = true
            }
        } else {
            withAnimation(.spring) {
                sectionNumber += 1
            }
        }
    }
    
    private func showMessageAlert(_ message: String) {
        showAlert = true
        messageAlert = message
    }
}

#Preview {
    OnboardingView()
}
