// Created by Florian Schweizer on 01.11.22

import SwiftUI

public struct HoverHighlightedButton<Label: View>: View {
    public let highlightColor: Color
    public let action: () -> Void
    public let label: () -> Label
    
    @State private var isHovered: Bool = false
    
    public init(highlightColor: Color = .accentColor, action: @escaping () -> Void, label: @escaping () -> Label) {
        self.highlightColor = highlightColor
        self.action = action
        self.label = label
    }
    
    public var body: some View {
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
