// Created by Florian Schweizer on 01.11.22

import SwiftUI

struct OnboardingScreen: View {
    let image: Image
    let appName: String
    let sections: [LabeledSection]
    
    var body: some View {
        VStack {
            image
                .resizable()
                .scaledToFit()
                .frame(width: 75, height: 75)
            
            Text(appName)
                .font(.largeTitle)
            
            Form {
                ForEach(sections, id: \.title) { $0.body }
            }
            
            Spacer()
            
            Link("Made by Flo writes Code",
                 destination: URL(string: "https://twitter.com/FloWritesCode")!)
            .font(.footnote)
            .foregroundColor(.secondary)
        }
        .padding()
        .frame(width: 400, alignment: .leading)
        .frame(minHeight: 400)
    }
}
