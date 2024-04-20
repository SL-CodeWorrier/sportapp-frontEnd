//
//  RoundButton.swift
//  ECommerceSportSwiftUi
//
//  Created by Chathura Aththanayaka on 2024-04-16.
//

import SwiftUI

struct RoundButton: View {
    @State var title: String = "Title"
    var didTap: (()->())?
    var body: some View {
        Button() {
            didTap?()
        } label: {
            Text(title)
                .font(.customfont(.bold, fontSize: 18))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
        .background(Color.primaryApp)
        .cornerRadius(20)
    }
}

#Preview {
    RoundButton()
        .padding(20)
}
