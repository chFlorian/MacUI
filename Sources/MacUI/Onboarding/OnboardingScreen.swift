// Created by Florian Schweizer on 01.11.22

import SwiftUI

public struct OnboardingScreen: View {
    public let image: Image
    public let appName: String
    public let sections: [LabeledSection]
    
    public init(image: Image, appName: String, sections: [LabeledSection]) {
        self.image = image
        self.appName = appName
        self.sections = sections
    }
    
    public var body: some View {
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
