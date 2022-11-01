// Created by Florian Schweizer on 01.11.22

import SwiftUI

struct LabeledSection: View {
    let title: String
    let systemImage: String
    let description: String
    
    var body: some View {
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
