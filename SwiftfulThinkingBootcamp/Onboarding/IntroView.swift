//
//  IntroView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rizal Fahrudin on 20/01/24.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("is_signIn") var isSignin = false
    var body: some View {
        if isSignin {
            ProfileView()
        } else {
            OnboardingView()
        }
    }
}

#Preview {
    IntroView()
}
