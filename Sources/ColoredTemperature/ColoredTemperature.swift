import SwiftUI

@available(iOS 15.0, *)
@available(macOS 12.0, *)
@available(tvOS 15.0, *)
@available(watchOS 8.0, *)
public struct ColoredTemperature {
    public init() {}
    
    public func getTemperatureColor(_ temp: Double) -> Color {
        switch temp {
        case ..<(-17.8):
            return Color(red: 156/255, green: 47/255, blue: 174/255)
        case (-17.8)...(-12.2):
            return Color(red: 102/255, green: 63/255, blue: 180/255)
        case (-12.2)...(-6.7):
            return Color(red: 64/255, green: 85/255, blue: 178/255)
        case (-6.7)...(-1.1):
            return Color(red: 88/255, green: 124/255, blue: 247/255)
        case (-1.1)...(4.4):
            return Color(red: 29/255, green: 170/255, blue: 241/255)
        case (4.4)...(10):
            return Color(red: 30/255, green: 189/255, blue: 208/255)
        case (10)...(15.6):
            return Color(red: 21/255, green: 149/255, blue: 136/255)
        case (15.6)...(21.1):
            return Color(red: 45/255, green: 154/255, blue: 45/255)
        case (21.1)...(26.7):
            return Color(red: 140/255, green: 192/255, blue: 81/255)
        case (26.7)...(32.2):
            return Color(red: 253/255, green: 193/255, blue: 47/255)
        case (32.2)...(37.8):
            return Color(red: 253/255, green: 151/255, blue: 40/255)
        case (37.8)...:
            return Color(red: 251/255, green: 88/255, blue: 47/255)
        default:
            return Color.primary
        }
    }
}
