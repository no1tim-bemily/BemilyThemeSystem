//public struct BemilyThemeSystem {
//    public private(set) var text = "Hello, World!"
//
//    public init() {
//    }
//}

import SwiftUI

public enum ThemeName {
    case light
    case dark
}

/** 테마는 서버에서 Json 정보를 수신하고 그에 맞게 셋팅합니다.
 일단 셋팅이 끝나면 기본 테마 정보는 로컬에 저장하고 향후 변경 시 설정을 통해 변경합니다.
 */
public class BemilyThemeSystem: ObservableObject {
    @Published public var activeTheme:BemilyTheme
    
    public struct BemilyTheme: Hashable {
        public private(set) var themeName: ThemeName
        
        //MARK: material design defauls ColorPalette
        public private(set) var primary: Color
        public private(set) var secondary: Color        //unused
        public private(set) var primaryVariant: Color   //unused
        public private(set) var secondaryVariant: Color //unused
        public private(set) var background: Color
        public private(set) var surface: Color          //unused
        public private(set) var error: Color            //unused

        public private(set) var onPrimary: Color        //unused
        public private(set) var onSecondary: Color      //unused
        public private(set) var onBackground: Color     //unused
        public private(set) var onSurface: Color        //unused
        public private(set) var onError: Color          //unused
    
        //MARK: user define ColorPalette
        public private(set) var foreground: Color
        public private(set) var primary200: Color
        public private(set) var primary400: Color
        public private(set) var primaryDisabled: Color
        
        public private(set) var warn: Color
        public private(set) var warnP70: Color
        public private(set) var warnLight: Color
        public private(set) var accent: Color
        
        //MARK: common (material, theme와 상관없이 사용되는 값 정의)
        public private(set) var logoColor: Color
        public private(set) var logoRadial00: Color
        public private(set) var logoLight: Color
        
        public private(set) var securityWarn: Color
        public private(set) var securitySafety: Color
        public private(set) var securityDanger: Color
        
        public private(set) var groupBarLabel00: Color
        public private(set) var groupBarLabel01: Color
        public private(set) var groupBarLabel02: Color
        public private(set) var groupBarLabel03: Color
        public private(set) var groupBarLabel04: Color
        public private(set) var groupBarLabelPurple: Color
        
        public private(set) var stateOnline: Color
        public private(set) var stateOffline: Color
        public private(set) var stateEtc: Color
        
        public private(set) var fontLineBlack: Color
        public private(set) var fontLineBlackP87: Color
        public private(set) var fontLineBlackP65: Color
        public private(set) var fontLineBlackP47: Color
        public private(set) var fontLineBlackP25: Color
        public private(set) var fontLineBlackP15: Color
        public private(set) var fontLineGrayBF: Color
        
        
        public private(set) var backgroundBgGray01: Color
        public private(set) var backgroundBgGray02: Color
        public private(set) var backgroundBgColor00: Color
        public private(set) var backgroundBgColor01: Color
        
        //public private(set) var gradation: Color
        
        //MARK: material design defauls Typography
        
        //MARK: user define Typography
        
        
        public init(name:ThemeName = .light) {
            if name == .dark {
                self.themeName          = .dark
                
                self.primary            = Color(hex: 0xBB86FC)
                self.secondary              = Color(hex: 0xffffff)    //unused
                self.primaryVariant         = Color(hex: 0xffffff)    //unused
                self.secondaryVariant       = Color(hex: 0xffffff)    //unused
                
                self.background         = Color(hex: 0x000000)
                self.surface                = Color(hex: 0xffffff)
                self.error                  = Color(hex: 0xffffff)
                
                self.onPrimary              = Color(hex: 0xffffff)    //unused
                self.onSecondary            = Color(hex: 0xffffff)    //unused
                self.onBackground           = Color(hex: 0xffffff)    //unused
                self.onSurface              = Color(hex: 0xffffff)    //unused
                self.onError                = Color(hex: 0xffffff)    //unused
                
                self.foreground         = Color(hex: 0xffffff)
                self.primary200         = Color(hex: 0x000000)
                self.primary400         = Color(hex: 0x000000)
                self.primaryDisabled    = Color(hex: 0x000000)
                self.warn               = Color(hex: 0x000000)
                self.warnP70            = Color(hex: 0x000000)
                self.warnLight          = Color(hex: 0x000000)
                self.accent             = Color(hex: 0xFF4081)
                
            } else {
                self.themeName          = .light
                
                self.primary            = Color(hex: 0x673AB7)
                self.secondary              = Color(hex: 0xffffff)    //unused
                self.primaryVariant         = Color(hex: 0xffffff)    //unused
                self.secondaryVariant       = Color(hex: 0xffffff)    //unused
                
                self.background         = Color(hex: 0xffffff)
                self.surface                = Color(hex: 0xffffff)
                self.error                  = Color(hex: 0xffffff)
                
                self.onPrimary              = Color(hex: 0xffffff)    //unused
                self.onSecondary            = Color(hex: 0xffffff)    //unused
                self.onBackground           = Color(hex: 0xffffff)    //unused
                self.onSurface              = Color(hex: 0xffffff)    //unused
                self.onError                = Color(hex: 0xffffff)    //unused
                
                self.foreground         = Color(hex: 0x000000)
                self.primary200         = Color(hex: 0x000000)
                self.primary400         = Color(hex: 0x000000)
                self.primaryDisabled    = Color(hex: 0x000000)
                self.warn               = Color(hex: 0x000000)
                self.warnP70            = Color(hex: 0x000000)
                self.warnLight          = Color(hex: 0x000000)
                self.accent             = Color(hex: 0xFF4081)
            }
            
            self.logoColor = Color(hex: 0xffffff)
            self.logoRadial00 = Color(hex: 0xffffff)
            self.logoLight = Color(hex: 0xffffff)
            
            self.securityWarn = Color(hex: 0xffffff)
            self.securitySafety = Color(hex: 0xffffff)
            self.securityDanger = Color(hex: 0xffffff)
            
            self.groupBarLabel00 = Color(hex: 0xffffff)
            self.groupBarLabel01 = Color(hex: 0xffffff)
            self.groupBarLabel02 = Color(hex: 0xffffff)
            self.groupBarLabel03 = Color(hex: 0xffffff)
            self.groupBarLabel04 = Color(hex: 0xffffff)
            self.groupBarLabelPurple = Color(hex: 0xffffff)
            
            self.stateOnline = Color(hex: 0xffffff)
            self.stateOffline = Color(hex: 0xffffff)
            self.stateEtc = Color(hex: 0xffffff)
            
            self.fontLineBlack = Color(hex: 0xffffff)
            self.fontLineBlackP87 = Color(hex: 0xffffff)
            self.fontLineBlackP65 = Color(hex: 0xffffff)
            self.fontLineBlackP47 = Color(hex: 0xffffff)
            self.fontLineBlackP25 = Color(hex: 0xffffff)
            self.fontLineBlackP15 = Color(hex: 0xffffff)
            self.fontLineGrayBF = Color(hex: 0xffffff)
            
            self.backgroundBgGray01 = Color(hex: 0xffffff)
            self.backgroundBgGray02 = Color(hex: 0xffffff)
            self.backgroundBgColor00 = Color(hex: 0xffffff)
            self.backgroundBgColor01 = Color(hex: 0xffffff)
        }
    }
    
    public init(themeName: ThemeName) {
        self.activeTheme = BemilyTheme(name: themeName)
    }
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

