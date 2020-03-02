//
// Created by Raizal Travlr on 02/03/20.
// Copyright (c) 2020 Saurabh Rane. All rights reserved.
//

import SwiftUI
import CoreLocation

public struct FontelloGlyph: Hashable, Decodable {
    
    fileprivate var css: String
    
    var name: String {
        self.css
    }
    fileprivate var code: Int
    var icon: String {
        String(format:"\u{%x}", self.code)
    }
}

struct FontelloFormat: Hashable, Decodable {
    public var name: String
    public var glyphs: [FontelloGlyph]
}

extension FontelloFormat {
    public var iconNames: [String] {
        glyphs.map({ (glyph) -> String in
            return glyph.name
        })
    }
    public var iconsCode: [String] {
        glyphs.map({ (glyph) -> String in
            return glyph.icon
        })
    }
}
