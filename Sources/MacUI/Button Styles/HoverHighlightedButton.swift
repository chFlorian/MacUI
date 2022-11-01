// Created by Florian Schweizer on 01.11.22

import SwiftUI

struct HoverHighlightedButton<Label: View>: View {
    var highlightColor: Color = .accentColor
    let action: () -> Void
    let label: () -> Label
    
    @State private var isHovered: Bool = false
    
    var body: some View {
        Button {
            action()
        } label: {
            label()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(2)
                .background {
                    if isHovered {
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                            .fill(highlightColor)
                    }
                }
                .onHover { isHovered = $0 }
        }
        .buttonStyle(.plain)
        .contentShape(Rectangle())
    }
}
