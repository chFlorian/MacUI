// Created by Florian Schweizer on 01.11.22

import SwiftUI

public struct LabeledSection: View {
    public let title: String
    public let systemImage: String
    public let description: String
    
    public init(title: String, systemImage: String, description: String) {
        self.title = title
        self.systemImage = systemImage
        self.description = description
    }
    
    public var body: some View {
        HStack(spacing: 16) {
            Image(systemName: systemImage)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading, spacing: 16) {
                Text(title)
                    .font(.title)
                    .foregroundColor(.accentColor)
                
                Text(description)
            }
        }
        .padding(.vertical, 8)
    }
}
