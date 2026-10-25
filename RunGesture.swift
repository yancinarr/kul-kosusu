import Foundation

// Selected input-resolution excerpt from the game engine.
enum RunGesture: String {
    case jump, descend, dash, slash, ignored
    static func resolve(dx: Double, dy: Double, ended: Bool = false) -> RunGesture? {
        guard max(abs(dx),abs(dy)) >= 30 else { return ended ? .slash : nil }
        if dy > abs(dx) { return .jump }
        if -dy > abs(dx) { return .descend }
        if dx > abs(dy) { return .dash }
        return .ignored
    }
}

