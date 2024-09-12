//
//  BodyPartShape.swift
//  ScoradFunctionTest
//
//  Created by 張銘育 on 2024/7/23.
//

import SwiftUI

// MARK: - AdultFront
struct HeadShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.48492*width, y: 0.00901*height))
        path.addCurve(to: CGPoint(x: 0.44953*width, y: 0.01563*height), control1: CGPoint(x: 0.47199*width, y: 0.00976*height), control2: CGPoint(x: 0.465*width, y: 0.01104*height))
        path.addCurve(to: CGPoint(x: 0.42961*width, y: 0.02441*height), control1: CGPoint(x: 0.44*width, y: 0.01839*height), control2: CGPoint(x: 0.43602*width, y: 0.02019*height))
        path.addCurve(to: CGPoint(x: 0.41*width, y: 0.04249*height), control1: CGPoint(x: 0.41965*width, y: 0.03077*height), control2: CGPoint(x: 0.4134*width, y: 0.03664*height))
        path.addCurve(to: CGPoint(x: 0.4077*width, y: 0.05946*height), control1: CGPoint(x: 0.40801*width, y: 0.04609*height), control2: CGPoint(x: 0.40758*width, y: 0.04933*height))
        path.addLine(to: CGPoint(x: 0.40801*width, y: 0.07207*height))
        path.addLine(to: CGPoint(x: 0.40387*width, y: 0.07207*height))
        path.addCurve(to: CGPoint(x: 0.39535*width, y: 0.08836*height), control1: CGPoint(x: 0.3966*width, y: 0.07207*height), control2: CGPoint(x: 0.39305*width, y: 0.07883*height))
        path.addCurve(to: CGPoint(x: 0.41566*width, y: 0.11028*height), control1: CGPoint(x: 0.39703*width, y: 0.0952*height), control2: CGPoint(x: 0.39902*width, y: 0.09737*height))
        path.addCurve(to: CGPoint(x: 0.43074*width, y: 0.1232*height), control1: CGPoint(x: 0.4225*width, y: 0.11562*height), control2: CGPoint(x: 0.42934*width, y: 0.12147*height))
        path.addCurve(to: CGPoint(x: 0.43828*width, y: 0.13926*height), control1: CGPoint(x: 0.43359*width, y: 0.12651*height), control2: CGPoint(x: 0.43758*width, y: 0.13507*height))
        path.addCurve(to: CGPoint(x: 0.46289*width, y: 0.14602*height), control1: CGPoint(x: 0.43887*width, y: 0.14211*height), control2: CGPoint(x: 0.44324*width, y: 0.14331*height))
        path.addCurve(to: CGPoint(x: 0.49844*width, y: 0.14842*height), control1: CGPoint(x: 0.47398*width, y: 0.14759*height), control2: CGPoint(x: 0.4818*width, y: 0.14813*height))
        path.addCurve(to: CGPoint(x: 0.55531*width, y: 0.14474*height), control1: CGPoint(x: 0.52176*width, y: 0.14887*height), control2: CGPoint(x: 0.53711*width, y: 0.1479*height))
        path.addLine(to: CGPoint(x: 0.56527*width, y: 0.14302*height))
        path.addLine(to: CGPoint(x: 0.56613*width, y: 0.13738*height))
        path.addCurve(to: CGPoint(x: 0.58164*width, y: 0.11448*height), control1: CGPoint(x: 0.56785*width, y: 0.12703*height), control2: CGPoint(x: 0.57039*width, y: 0.12326*height))
        path.addCurve(to: CGPoint(x: 0.59156*width, y: 0.10586*height), control1: CGPoint(x: 0.58531*width, y: 0.11157*height), control2: CGPoint(x: 0.58988*width, y: 0.10774*height))
        path.addCurve(to: CGPoint(x: 0.59797*width, y: 0.10016*height), control1: CGPoint(x: 0.59328*width, y: 0.10398*height), control2: CGPoint(x: 0.59629*width, y: 0.10142*height))
        path.addCurve(to: CGPoint(x: 0.60609*width, y: 0.08251*height), control1: CGPoint(x: 0.60309*width, y: 0.09654*height), control2: CGPoint(x: 0.60621*width, y: 0.08995*height))
        path.addCurve(to: CGPoint(x: 0.59727*width, y: 0.07013*height), control1: CGPoint(x: 0.60594*width, y: 0.07424*height), control2: CGPoint(x: 0.6034*width, y: 0.07073*height))
        path.addLine(to: CGPoint(x: 0.59301*width, y: 0.06959*height))
        path.addLine(to: CGPoint(x: 0.59301*width, y: 0.06314*height))
        path.addCurve(to: CGPoint(x: 0.59086*width, y: 0.04865*height), control1: CGPoint(x: 0.59301*width, y: 0.05961*height), control2: CGPoint(x: 0.59199*width, y: 0.05308*height))
        path.addCurve(to: CGPoint(x: 0.58148*width, y: 0.03297*height), control1: CGPoint(x: 0.58918*width, y: 0.04144*height), control2: CGPoint(x: 0.58801*width, y: 0.03972*height))
        path.addCurve(to: CGPoint(x: 0.56188*width, y: 0.0199*height), control1: CGPoint(x: 0.5748*width, y: 0.02612*height), control2: CGPoint(x: 0.57297*width, y: 0.02484*height))
        path.addCurve(to: CGPoint(x: 0.53969*width, y: 0.01246*height), control1: CGPoint(x: 0.55246*width, y: 0.01563*height), control2: CGPoint(x: 0.54734*width, y: 0.01389*height))
        path.addCurve(to: CGPoint(x: 0.48492*width, y: 0.00901*height), control1: CGPoint(x: 0.51805*width, y: 0.00841*height), control2: CGPoint(x: 0.50813*width, y: 0.00781*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.48492*width, y: 0.00901*height))
        return path
    }
}

struct MainBodyShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.42426*width, y: 0.14943*height))
        path.addCurve(to: CGPoint(x: 0.36195*width, y: 0.17028*height), control1: CGPoint(x: 0.40758*width, y: 0.15838*height), control2: CGPoint(x: 0.38543*width, y: 0.16576*height))
        path.addCurve(to: CGPoint(x: 0.34801*width, y: 0.17394*height), control1: CGPoint(x: 0.35348*width, y: 0.17194*height), control2: CGPoint(x: 0.34801*width, y: 0.17338*height))
        path.addCurve(to: CGPoint(x: 0.3518*width, y: 0.17882*height), control1: CGPoint(x: 0.34801*width, y: 0.17442*height), control2: CGPoint(x: 0.34973*width, y: 0.17663*height))
        path.addCurve(to: CGPoint(x: 0.36758*width, y: 0.20126*height), control1: CGPoint(x: 0.35715*width, y: 0.18461*height), control2: CGPoint(x: 0.36457*width, y: 0.19506*height))
        path.addCurve(to: CGPoint(x: 0.33434*width, y: 0.27216*height), control1: CGPoint(x: 0.37996*width, y: 0.22708*height), control2: CGPoint(x: 0.36859*width, y: 0.25145*height))
        path.addLine(to: CGPoint(x: 0.32574*width, y: 0.27739*height))
        path.addLine(to: CGPoint(x: 0.33422*width, y: 0.34327*height))
        path.addCurve(to: CGPoint(x: 0.33746*width, y: 0.42772*height), control1: CGPoint(x: 0.3432*width, y: 0.41443*height), control2: CGPoint(x: 0.3432*width, y: 0.41361*height))
        path.addCurve(to: CGPoint(x: 0.33082*width, y: 0.44012*height), control1: CGPoint(x: 0.33602*width, y: 0.43144*height), control2: CGPoint(x: 0.33305*width, y: 0.43702*height))
        path.addCurve(to: CGPoint(x: 0.33785*width, y: 0.45147*height), control1: CGPoint(x: 0.32418*width, y: 0.44961*height), control2: CGPoint(x: 0.32379*width, y: 0.44893*height))
        path.addCurve(to: CGPoint(x: 0.41449*width, y: 0.47681*height), control1: CGPoint(x: 0.3643*width, y: 0.45637*height), control2: CGPoint(x: 0.3918*width, y: 0.46544*height))
        path.addLine(to: CGPoint(x: 0.42699*width, y: 0.48307*height))
        path.addLine(to: CGPoint(x: 0.43184*width, y: 0.47811*height))
        path.addCurve(to: CGPoint(x: 0.54066*width, y: 0.45953*height), control1: CGPoint(x: 0.45203*width, y: 0.45732*height), control2: CGPoint(x: 0.49988*width, y: 0.44914*height))
        path.addCurve(to: CGPoint(x: 0.57352*width, y: 0.47536*height), control1: CGPoint(x: 0.55227*width, y: 0.46249*height), control2: CGPoint(x: 0.56609*width, y: 0.4691*height))
        path.addCurve(to: CGPoint(x: 0.57949*width, y: 0.47977*height), control1: CGPoint(x: 0.57637*width, y: 0.47776*height), control2: CGPoint(x: 0.5791*width, y: 0.47977*height))
        path.addCurve(to: CGPoint(x: 0.58914*width, y: 0.47549*height), control1: CGPoint(x: 0.57988*width, y: 0.47977*height), control2: CGPoint(x: 0.58422*width, y: 0.47784*height))
        path.addCurve(to: CGPoint(x: 0.66242*width, y: 0.45348*height), control1: CGPoint(x: 0.61039*width, y: 0.46544*height), control2: CGPoint(x: 0.63594*width, y: 0.4578*height))
        path.addCurve(to: CGPoint(x: 0.67648*width, y: 0.45029*height), control1: CGPoint(x: 0.67074*width, y: 0.45215*height), control2: CGPoint(x: 0.67648*width, y: 0.45085*height))
        path.addCurve(to: CGPoint(x: 0.67336*width, y: 0.44618*height), control1: CGPoint(x: 0.67648*width, y: 0.44982*height), control2: CGPoint(x: 0.67504*width, y: 0.44796*height))
        path.addCurve(to: CGPoint(x: 0.65641*width, y: 0.41266*height), control1: CGPoint(x: 0.66539*width, y: 0.43785*height), control2: CGPoint(x: 0.65812*width, y: 0.42347*height))
        path.addCurve(to: CGPoint(x: 0.66527*width, y: 0.34313*height), control1: CGPoint(x: 0.6559*width, y: 0.40949*height), control2: CGPoint(x: 0.65902*width, y: 0.38519*height))
        path.addLine(to: CGPoint(x: 0.6748*width, y: 0.27842*height))
        path.addLine(to: CGPoint(x: 0.66996*width, y: 0.27534*height))
        path.addCurve(to: CGPoint(x: 0.6327*width, y: 0.23526*height), control1: CGPoint(x: 0.65184*width, y: 0.2637*height), control2: CGPoint(x: 0.63867*width, y: 0.24952*height))
        path.addCurve(to: CGPoint(x: 0.6332*width, y: 0.20327*height), control1: CGPoint(x: 0.62941*width, y: 0.22755*height), control2: CGPoint(x: 0.62969*width, y: 0.21214*height))
        path.addCurve(to: CGPoint(x: 0.64859*width, y: 0.17917*height), control1: CGPoint(x: 0.63648*width, y: 0.19542*height), control2: CGPoint(x: 0.6418*width, y: 0.18702*height))
        path.addCurve(to: CGPoint(x: 0.65211*width, y: 0.17338*height), control1: CGPoint(x: 0.65105*width, y: 0.17628*height), control2: CGPoint(x: 0.65262*width, y: 0.17367*height))
        path.addCurve(to: CGPoint(x: 0.64063*width, y: 0.1714*height), control1: CGPoint(x: 0.65145*width, y: 0.17312*height), control2: CGPoint(x: 0.64637*width, y: 0.17223*height))
        path.addCurve(to: CGPoint(x: 0.58094*width, y: 0.15329*height), control1: CGPoint(x: 0.6216*width, y: 0.16871*height), control2: CGPoint(x: 0.60074*width, y: 0.16237*height))
        path.addCurve(to: CGPoint(x: 0.57145*width, y: 0.14786*height), control1: CGPoint(x: 0.57676*width, y: 0.15137*height), control2: CGPoint(x: 0.57246*width, y: 0.14889*height))
        path.addLine(to: CGPoint(x: 0.56961*width, y: 0.146*height))
        path.addLine(to: CGPoint(x: 0.56281*width, y: 0.14724*height))
        path.addCurve(to: CGPoint(x: 0.49348*width, y: 0.15247*height), control1: CGPoint(x: 0.54262*width, y: 0.15088*height), control2: CGPoint(x: 0.51172*width, y: 0.15321*height))
        path.addCurve(to: CGPoint(x: 0.44656*width, y: 0.1473*height), control1: CGPoint(x: 0.47875*width, y: 0.15185*height), control2: CGPoint(x: 0.45961*width, y: 0.14972*height))
        path.addCurve(to: CGPoint(x: 0.43379*width, y: 0.14523*height), control1: CGPoint(x: 0.44055*width, y: 0.14612*height), control2: CGPoint(x: 0.43469*width, y: 0.14523*height))
        path.addCurve(to: CGPoint(x: 0.42426*width, y: 0.14943*height), control1: CGPoint(x: 0.43273*width, y: 0.14523*height), control2: CGPoint(x: 0.42855*width, y: 0.14709*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.42426*width, y: 0.14943*height))
        return path
    }
}

struct RightHandShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.32586*width, y: 0.17566*height))
        path.addCurve(to: CGPoint(x: 0.27281*width, y: 0.1896*height), control1: CGPoint(x: 0.30996*width, y: 0.17877*height), control2: CGPoint(x: 0.2848*width, y: 0.18532*height))
        path.addCurve(to: CGPoint(x: 0.21102*width, y: 0.24013*height), control1: CGPoint(x: 0.23461*width, y: 0.20313*height), control2: CGPoint(x: 0.2148*width, y: 0.21929*height))
        path.addCurve(to: CGPoint(x: 0.20254*width, y: 0.27886*height), control1: CGPoint(x: 0.21023*width, y: 0.24414*height), control2: CGPoint(x: 0.20648*width, y: 0.26159*height))
        path.addCurve(to: CGPoint(x: 0.18418*width, y: 0.33579*height), control1: CGPoint(x: 0.19539*width, y: 0.30984*height), control2: CGPoint(x: 0.19527*width, y: 0.31061*height))
        path.addLine(to: CGPoint(x: 0.17297*width, y: 0.36133*height))
        path.addLine(to: CGPoint(x: 0.1302*width, y: 0.42794*height))
        path.addCurve(to: CGPoint(x: 0.08473*width, y: 0.49834*height), control1: CGPoint(x: 0.10676*width, y: 0.46459*height), control2: CGPoint(x: 0.08629*width, y: 0.49628*height))
        path.addCurve(to: CGPoint(x: 0.08016*width, y: 0.5047*height), control1: CGPoint(x: 0.08316*width, y: 0.50042*height), control2: CGPoint(x: 0.08105*width, y: 0.5033*height))
        path.addCurve(to: CGPoint(x: 0.06543*width, y: 0.52167*height), control1: CGPoint(x: 0.07809*width, y: 0.50758*height), control2: CGPoint(x: 0.07051*width, y: 0.51629*height))
        path.addCurve(to: CGPoint(x: 0.05488*width, y: 0.53029*height), control1: CGPoint(x: 0.06348*width, y: 0.52367*height), control2: CGPoint(x: 0.05879*width, y: 0.52753*height))
        path.addCurve(to: CGPoint(x: 0.04133*width, y: 0.53975*height), control1: CGPoint(x: 0.05098*width, y: 0.53306*height), control2: CGPoint(x: 0.04484*width, y: 0.53728*height))
        path.addCurve(to: CGPoint(x: 0.02309*width, y: 0.55805*height), control1: CGPoint(x: 0.03402*width, y: 0.54486*height), control2: CGPoint(x: 0.02594*width, y: 0.553*height))
        path.addCurve(to: CGPoint(x: 0.02645*width, y: 0.5646*height), control1: CGPoint(x: 0.02074*width, y: 0.56225*height), control2: CGPoint(x: 0.02203*width, y: 0.5646*height))
        path.addCurve(to: CGPoint(x: 0.04551*width, y: 0.55776*height), control1: CGPoint(x: 0.03074*width, y: 0.5646*height), control2: CGPoint(x: 0.04039*width, y: 0.56115*height))
        path.addCurve(to: CGPoint(x: 0.05098*width, y: 0.55535*height), control1: CGPoint(x: 0.04785*width, y: 0.55625*height), control2: CGPoint(x: 0.05031*width, y: 0.55508*height))
        path.addCurve(to: CGPoint(x: 0.04887*width, y: 0.58359*height), control1: CGPoint(x: 0.05277*width, y: 0.55598*height), control2: CGPoint(x: 0.05238*width, y: 0.56254*height))
        path.addCurve(to: CGPoint(x: 0.05148*width, y: 0.60601*height), control1: CGPoint(x: 0.04535*width, y: 0.6047*height), control2: CGPoint(x: 0.04551*width, y: 0.60601*height))
        path.addCurve(to: CGPoint(x: 0.06711*width, y: 0.58353*height), control1: CGPoint(x: 0.0584*width, y: 0.60601*height), control2: CGPoint(x: 0.06426*width, y: 0.59739*height))
        path.addCurve(to: CGPoint(x: 0.06973*width, y: 0.57303*height), control1: CGPoint(x: 0.06816*width, y: 0.57792*height), control2: CGPoint(x: 0.06934*width, y: 0.57316*height))
        path.addCurve(to: CGPoint(x: 0.07184*width, y: 0.57468*height), control1: CGPoint(x: 0.07*width, y: 0.57283*height), control2: CGPoint(x: 0.07105*width, y: 0.57357*height))
        path.addCurve(to: CGPoint(x: 0.07418*width, y: 0.59257*height), control1: CGPoint(x: 0.07285*width, y: 0.57592*height), control2: CGPoint(x: 0.07379*width, y: 0.5827*height))
        path.addCurve(to: CGPoint(x: 0.08539*width, y: 0.61043*height), control1: CGPoint(x: 0.0752*width, y: 0.61168*height), control2: CGPoint(x: 0.07637*width, y: 0.61355*height))
        path.addCurve(to: CGPoint(x: 0.09137*width, y: 0.59153*height), control1: CGPoint(x: 0.0902*width, y: 0.60877*height), control2: CGPoint(x: 0.09125*width, y: 0.60553*height))
        path.addCurve(to: CGPoint(x: 0.09426*width, y: 0.57497*height), control1: CGPoint(x: 0.09137*width, y: 0.57833*height), control2: CGPoint(x: 0.09266*width, y: 0.57158*height))
        path.addCurve(to: CGPoint(x: 0.09777*width, y: 0.59988*height), control1: CGPoint(x: 0.09555*width, y: 0.57744*height), control2: CGPoint(x: 0.09777*width, y: 0.59352*height))
        path.addCurve(to: CGPoint(x: 0.09984*width, y: 0.60809*height), control1: CGPoint(x: 0.09777*width, y: 0.60327*height), control2: CGPoint(x: 0.09855*width, y: 0.60636*height))
        path.addCurve(to: CGPoint(x: 0.10609*width, y: 0.6107*height), control1: CGPoint(x: 0.1018*width, y: 0.61064*height), control2: CGPoint(x: 0.10246*width, y: 0.61091*height))
        path.addCurve(to: CGPoint(x: 0.11289*width, y: 0.59028*height), control1: CGPoint(x: 0.11289*width, y: 0.61037*height), control2: CGPoint(x: 0.11379*width, y: 0.60761*height))
        path.addCurve(to: CGPoint(x: 0.11328*width, y: 0.57565*height), control1: CGPoint(x: 0.11223*width, y: 0.58097*height), control2: CGPoint(x: 0.1125*width, y: 0.57565*height))
        path.addCurve(to: CGPoint(x: 0.1168*width, y: 0.58841*height), control1: CGPoint(x: 0.11508*width, y: 0.57565*height), control2: CGPoint(x: 0.11574*width, y: 0.57827*height))
        path.addCurve(to: CGPoint(x: 0.12422*width, y: 0.60187*height), control1: CGPoint(x: 0.1177*width, y: 0.5987*height), control2: CGPoint(x: 0.11953*width, y: 0.60187*height))
        path.addCurve(to: CGPoint(x: 0.13687*width, y: 0.58669*height), control1: CGPoint(x: 0.13035*width, y: 0.60187*height), control2: CGPoint(x: 0.1318*width, y: 0.60009*height))
        path.addCurve(to: CGPoint(x: 0.14285*width, y: 0.57289*height), control1: CGPoint(x: 0.13844*width, y: 0.5827*height), control2: CGPoint(x: 0.14117*width, y: 0.57648*height))
        path.addCurve(to: CGPoint(x: 0.14742*width, y: 0.55288*height), control1: CGPoint(x: 0.14535*width, y: 0.56784*height), control2: CGPoint(x: 0.14637*width, y: 0.56323*height))
        path.addCurve(to: CGPoint(x: 0.15105*width, y: 0.5263*height), control1: CGPoint(x: 0.1482*width, y: 0.54548*height), control2: CGPoint(x: 0.14988*width, y: 0.53347*height))
        path.addLine(to: CGPoint(x: 0.1534*width, y: 0.51317*height))
        path.addLine(to: CGPoint(x: 0.16578*width, y: 0.49869*height))
        path.addCurve(to: CGPoint(x: 0.19289*width, y: 0.47143*height), control1: CGPoint(x: 0.17414*width, y: 0.48895*height), control2: CGPoint(x: 0.18313*width, y: 0.47999*height))
        path.addCurve(to: CGPoint(x: 0.23254*width, y: 0.43553*height), control1: CGPoint(x: 0.2216*width, y: 0.44658*height), control2: CGPoint(x: 0.22434*width, y: 0.44409*height))
        path.addCurve(to: CGPoint(x: 0.2552*width, y: 0.40793*height), control1: CGPoint(x: 0.24191*width, y: 0.4258*height), control2: CGPoint(x: 0.24949*width, y: 0.41656*height))
        path.addCurve(to: CGPoint(x: 0.29195*width, y: 0.33787*height), control1: CGPoint(x: 0.2573*width, y: 0.40467*height), control2: CGPoint(x: 0.27387*width, y: 0.37313*height))
        path.addLine(to: CGPoint(x: 0.32496*width, y: 0.27367*height))
        path.addLine(to: CGPoint(x: 0.335*width, y: 0.2656*height))
        path.addCurve(to: CGPoint(x: 0.35375*width, y: 0.18561*height), control1: CGPoint(x: 0.36652*width, y: 0.24034*height), control2: CGPoint(x: 0.37266*width, y: 0.21424*height))
        path.addCurve(to: CGPoint(x: 0.34109*width, y: 0.17325*height), control1: CGPoint(x: 0.34723*width, y: 0.17574*height), control2: CGPoint(x: 0.34477*width, y: 0.17325*height))
        path.addCurve(to: CGPoint(x: 0.32586*width, y: 0.17566*height), control1: CGPoint(x: 0.33953*width, y: 0.17331*height), control2: CGPoint(x: 0.33266*width, y: 0.17441*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.32586*width, y: 0.17566*height))
        return path
    }
}

struct LeftHandShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.65539*width, y: 0.17584*height))
        path.addCurve(to: CGPoint(x: 0.64836*width, y: 0.18537*height), control1: CGPoint(x: 0.6543*width, y: 0.17681*height), control2: CGPoint(x: 0.65105*width, y: 0.18105*height))
        path.addCurve(to: CGPoint(x: 0.66723*width, y: 0.26877*height), control1: CGPoint(x: 0.63121*width, y: 0.213*height), control2: CGPoint(x: 0.63727*width, y: 0.24018*height))
        path.addCurve(to: CGPoint(x: 0.68469*width, y: 0.29632*height), control1: CGPoint(x: 0.67766*width, y: 0.27873*height), control2: CGPoint(x: 0.68047*width, y: 0.28305*height))
        path.addCurve(to: CGPoint(x: 0.73902*width, y: 0.40203*height), control1: CGPoint(x: 0.68918*width, y: 0.31*height), control2: CGPoint(x: 0.72887*width, y: 0.38721*height))
        path.addCurve(to: CGPoint(x: 0.80418*width, y: 0.47193*height), control1: CGPoint(x: 0.75801*width, y: 0.42973*height), control2: CGPoint(x: 0.77844*width, y: 0.45153*height))
        path.addCurve(to: CGPoint(x: 0.82867*width, y: 0.49576*height), control1: CGPoint(x: 0.80953*width, y: 0.47625*height), control2: CGPoint(x: 0.82066*width, y: 0.48698*height))
        path.addCurve(to: CGPoint(x: 0.84473*width, y: 0.51742*height), control1: CGPoint(x: 0.8418*width, y: 0.51004*height), control2: CGPoint(x: 0.84359*width, y: 0.51244*height))
        path.addCurve(to: CGPoint(x: 0.85176*width, y: 0.56543*height), control1: CGPoint(x: 0.84602*width, y: 0.5236*height), control2: CGPoint(x: 0.84937*width, y: 0.5469*height))
        path.addCurve(to: CGPoint(x: 0.86668*width, y: 0.60065*height), control1: CGPoint(x: 0.85418*width, y: 0.58472*height), control2: CGPoint(x: 0.85992*width, y: 0.59828*height))
        path.addCurve(to: CGPoint(x: 0.87414*width, y: 0.59945*height), control1: CGPoint(x: 0.86965*width, y: 0.60162*height), control2: CGPoint(x: 0.8702*width, y: 0.60154*height))
        path.addCurve(to: CGPoint(x: 0.87867*width, y: 0.58949*height), control1: CGPoint(x: 0.87824*width, y: 0.59722*height), control2: CGPoint(x: 0.87836*width, y: 0.59702*height))
        path.addLine(to: CGPoint(x: 0.87879*width, y: 0.58182*height))
        path.addLine(to: CGPoint(x: 0.88008*width, y: 0.58964*height))
        path.addCurve(to: CGPoint(x: 0.89457*width, y: 0.61124*height), control1: CGPoint(x: 0.8823*width, y: 0.60408*height), control2: CGPoint(x: 0.88727*width, y: 0.61124*height))
        path.addCurve(to: CGPoint(x: 0.90047*width, y: 0.60921*height), control1: CGPoint(x: 0.89684*width, y: 0.61124*height), control2: CGPoint(x: 0.89895*width, y: 0.61049*height))
        path.addCurve(to: CGPoint(x: 0.90289*width, y: 0.59493*height), control1: CGPoint(x: 0.90258*width, y: 0.60749*height), control2: CGPoint(x: 0.90301*width, y: 0.60549*height))
        path.addCurve(to: CGPoint(x: 0.90398*width, y: 0.59001*height), control1: CGPoint(x: 0.90258*width, y: 0.58271*height), control2: CGPoint(x: 0.90258*width, y: 0.58263*height))
        path.addCurve(to: CGPoint(x: 0.92242*width, y: 0.61004*height), control1: CGPoint(x: 0.90738*width, y: 0.60958*height), control2: CGPoint(x: 0.91258*width, y: 0.61524*height))
        path.addCurve(to: CGPoint(x: 0.93059*width, y: 0.59671*height), control1: CGPoint(x: 0.92695*width, y: 0.60772*height), control2: CGPoint(x: 0.92836*width, y: 0.60534*height))
        path.addLine(to: CGPoint(x: 0.9323*width, y: 0.59001*height))
        path.addLine(to: CGPoint(x: 0.93426*width, y: 0.59619*height))
        path.addCurve(to: CGPoint(x: 0.94496*width, y: 0.60675*height), control1: CGPoint(x: 0.93664*width, y: 0.60446*height), control2: CGPoint(x: 0.93906*width, y: 0.60675*height))
        path.addCurve(to: CGPoint(x: 0.95215*width, y: 0.6058*height), control1: CGPoint(x: 0.9475*width, y: 0.60675*height), control2: CGPoint(x: 0.95074*width, y: 0.60632*height))
        path.addCurve(to: CGPoint(x: 0.95297*width, y: 0.57288*height), control1: CGPoint(x: 0.95793*width, y: 0.60357*height), control2: CGPoint(x: 0.9582*width, y: 0.59224*height))
        path.addCurve(to: CGPoint(x: 0.94945*width, y: 0.55888*height), control1: CGPoint(x: 0.95156*width, y: 0.56752*height), control2: CGPoint(x: 0.94988*width, y: 0.56128*height))
        path.addLine(to: CGPoint(x: 0.94848*width, y: 0.5545*height))
        path.addLine(to: CGPoint(x: 0.95328*width, y: 0.5574*height))
        path.addCurve(to: CGPoint(x: 0.96129*width, y: 0.5626*height), control1: CGPoint(x: 0.95594*width, y: 0.55897*height), control2: CGPoint(x: 0.95945*width, y: 0.56134*height))
        path.addCurve(to: CGPoint(x: 0.96973*width, y: 0.56506*height), control1: CGPoint(x: 0.96395*width, y: 0.56463*height), control2: CGPoint(x: 0.96539*width, y: 0.56506*height))
        path.addCurve(to: CGPoint(x: 0.97945*width, y: 0.55888*height), control1: CGPoint(x: 0.97719*width, y: 0.56506*height), control2: CGPoint(x: 0.98027*width, y: 0.56314*height))
        path.addCurve(to: CGPoint(x: 0.95355*width, y: 0.53536*height), control1: CGPoint(x: 0.97859*width, y: 0.55525*height), control2: CGPoint(x: 0.96313*width, y: 0.54103*height))
        path.addCurve(to: CGPoint(x: 0.94453*width, y: 0.52933*height), control1: CGPoint(x: 0.95047*width, y: 0.5335*height), control2: CGPoint(x: 0.94637*width, y: 0.53075*height))
        path.addCurve(to: CGPoint(x: 0.93441*width, y: 0.52286*height), control1: CGPoint(x: 0.94258*width, y: 0.52792*height), control2: CGPoint(x: 0.93805*width, y: 0.52495*height))
        path.addCurve(to: CGPoint(x: 0.90793*width, y: 0.49093*height), control1: CGPoint(x: 0.92637*width, y: 0.51817*height), control2: CGPoint(x: 0.92777*width, y: 0.5198*height))
        path.addCurve(to: CGPoint(x: 0.78758*width, y: 0.24456*height), control1: CGPoint(x: 0.8325*width, y: 0.38095*height), control2: CGPoint(x: 0.79277*width, y: 0.29967*height))
        path.addCurve(to: CGPoint(x: 0.77422*width, y: 0.21701*height), control1: CGPoint(x: 0.78645*width, y: 0.23303*height), control2: CGPoint(x: 0.78363*width, y: 0.22737*height))
        path.addCurve(to: CGPoint(x: 0.67383*width, y: 0.17636*height), control1: CGPoint(x: 0.7552*width, y: 0.19655*height), control2: CGPoint(x: 0.72113*width, y: 0.18271*height))
        path.addCurve(to: CGPoint(x: 0.65992*width, y: 0.1745*height), control1: CGPoint(x: 0.6675*width, y: 0.17555*height), control2: CGPoint(x: 0.66117*width, y: 0.17467*height))
        path.addCurve(to: CGPoint(x: 0.65539*width, y: 0.17584*height), control1: CGPoint(x: 0.65852*width, y: 0.17429*height), control2: CGPoint(x: 0.65668*width, y: 0.17481*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.65539*width, y: 0.17584*height))
        return path
    }
}

struct GroinShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.48363*width, y: 0.45823*height))
        path.addCurve(to: CGPoint(x: 0.45059*width, y: 0.46873*height), control1: CGPoint(x: 0.4709*width, y: 0.46015*height), control2: CGPoint(x: 0.46082*width, y: 0.46333*height))
        path.addCurve(to: CGPoint(x: 0.45199*width, y: 0.5255*height), control1: CGPoint(x: 0.42063*width, y: 0.4844*height), control2: CGPoint(x: 0.42133*width, y: 0.50969*height))
        path.addCurve(to: CGPoint(x: 0.50461*width, y: 0.53667*height), control1: CGPoint(x: 0.46473*width, y: 0.53201*height), control2: CGPoint(x: 0.48641*width, y: 0.53667*height))
        path.addCurve(to: CGPoint(x: 0.57797*width, y: 0.50502*height), control1: CGPoint(x: 0.53848*width, y: 0.53667*height), control2: CGPoint(x: 0.57109*width, y: 0.52261*height))
        path.addCurve(to: CGPoint(x: 0.52254*width, y: 0.45794*height), control1: CGPoint(x: 0.58609*width, y: 0.48419*height), control2: CGPoint(x: 0.5616*width, y: 0.46333*height))
        path.addCurve(to: CGPoint(x: 0.48363*width, y: 0.45823*height), control1: CGPoint(x: 0.51203*width, y: 0.45645*height), control2: CGPoint(x: 0.4941*width, y: 0.45662*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.48363*width, y: 0.45823*height))
        return path
    }
}

struct RightLegShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.31797*width, y: 0.46296*height))
        path.addCurve(to: CGPoint(x: 0.29145*width, y: 0.63213*height), control1: CGPoint(x: 0.28937*width, y: 0.51625*height), control2: CGPoint(x: 0.28031*width, y: 0.57418*height))
        path.addCurve(to: CGPoint(x: 0.29723*width, y: 0.65575*height), control1: CGPoint(x: 0.29246*width, y: 0.63742*height), control2: CGPoint(x: 0.29504*width, y: 0.64811*height))
        path.addCurve(to: CGPoint(x: 0.30102*width, y: 0.68715*height), control1: CGPoint(x: 0.30078*width, y: 0.66869*height), control2: CGPoint(x: 0.30102*width, y: 0.67082*height))
        path.addCurve(to: CGPoint(x: 0.29367*width, y: 0.7302*height), control1: CGPoint(x: 0.30102*width, y: 0.70558*height), control2: CGPoint(x: 0.29992*width, y: 0.71199*height))
        path.addCurve(to: CGPoint(x: 0.27602*width, y: 0.76697*height), control1: CGPoint(x: 0.29*width, y: 0.74095*height), control2: CGPoint(x: 0.28238*width, y: 0.7568*height))
        path.addCurve(to: CGPoint(x: 0.26988*width, y: 0.88192*height), control1: CGPoint(x: 0.26324*width, y: 0.78762*height), control2: CGPoint(x: 0.26203*width, y: 0.81039*height))
        path.addCurve(to: CGPoint(x: 0.27477*width, y: 0.92996*height), control1: CGPoint(x: 0.27258*width, y: 0.90639*height), control2: CGPoint(x: 0.27477*width, y: 0.92801*height))
        path.addCurve(to: CGPoint(x: 0.26766*width, y: 0.93746*height), control1: CGPoint(x: 0.27477*width, y: 0.93345*height), control2: CGPoint(x: 0.27453*width, y: 0.93366*height))
        path.addCurve(to: CGPoint(x: 0.20781*width, y: 0.96259*height), control1: CGPoint(x: 0.25676*width, y: 0.94362*height), control2: CGPoint(x: 0.21137*width, y: 0.96259*height))
        path.addCurve(to: CGPoint(x: 0.18254*width, y: 0.9708*height), control1: CGPoint(x: 0.2057*width, y: 0.96259*height), control2: CGPoint(x: 0.18621*width, y: 0.96894*height))
        path.addCurve(to: CGPoint(x: 0.18203*width, y: 0.98582*height), control1: CGPoint(x: 0.17344*width, y: 0.97534*height), control2: CGPoint(x: 0.1732*width, y: 0.98342*height))
        path.addCurve(to: CGPoint(x: 0.22398*width, y: 0.9921*height), control1: CGPoint(x: 0.19062*width, y: 0.9881*height), control2: CGPoint(x: 0.21504*width, y: 0.99177*height))
        path.addCurve(to: CGPoint(x: 0.26789*width, y: 0.98518*height), control1: CGPoint(x: 0.23809*width, y: 0.99268*height), control2: CGPoint(x: 0.2441*width, y: 0.99177*height))
        path.addCurve(to: CGPoint(x: 0.28902*width, y: 0.97941*height), control1: CGPoint(x: 0.27918*width, y: 0.982*height), control2: CGPoint(x: 0.28875*width, y: 0.97941*height))
        path.addCurve(to: CGPoint(x: 0.30203*width, y: 0.97625*height), control1: CGPoint(x: 0.28926*width, y: 0.97941*height), control2: CGPoint(x: 0.29516*width, y: 0.97799*height))
        path.addCurve(to: CGPoint(x: 0.32937*width, y: 0.97009*height), control1: CGPoint(x: 0.30902*width, y: 0.9745*height), control2: CGPoint(x: 0.32129*width, y: 0.97171*height))
        path.addCurve(to: CGPoint(x: 0.35746*width, y: 0.96083*height), control1: CGPoint(x: 0.34629*width, y: 0.9666*height), control2: CGPoint(x: 0.35242*width, y: 0.9646*height))
        path.addCurve(to: CGPoint(x: 0.35637*width, y: 0.94194*height), control1: CGPoint(x: 0.36324*width, y: 0.95649*height), control2: CGPoint(x: 0.36297*width, y: 0.95358*height))
        path.addCurve(to: CGPoint(x: 0.34629*width, y: 0.91301*height), control1: CGPoint(x: 0.34813*width, y: 0.92743*height), control2: CGPoint(x: 0.34715*width, y: 0.92452*height))
        path.addCurve(to: CGPoint(x: 0.36113*width, y: 0.87176*height), control1: CGPoint(x: 0.3452*width, y: 0.89683*height), control2: CGPoint(x: 0.34766*width, y: 0.88982*height))
        path.addCurve(to: CGPoint(x: 0.40848*width, y: 0.74411*height), control1: CGPoint(x: 0.39242*width, y: 0.82982*height), control2: CGPoint(x: 0.40836*width, y: 0.78677*height))
        path.addCurve(to: CGPoint(x: 0.41758*width, y: 0.68746*height), control1: CGPoint(x: 0.40848*width, y: 0.73673*height), control2: CGPoint(x: 0.4107*width, y: 0.72301*height))
        path.addLine(to: CGPoint(x: 0.42676*width, y: 0.64054*height))
        path.addLine(to: CGPoint(x: 0.43363*width, y: 0.62986*height))
        path.addCurve(to: CGPoint(x: 0.49043*width, y: 0.53941*height), control1: CGPoint(x: 0.46113*width, y: 0.58753*height), control2: CGPoint(x: 0.49078*width, y: 0.54032*height))
        path.addCurve(to: CGPoint(x: 0.4827*width, y: 0.53729*height), control1: CGPoint(x: 0.4902*width, y: 0.53877*height), control2: CGPoint(x: 0.48738*width, y: 0.53801*height))
        path.addCurve(to: CGPoint(x: 0.42492*width, y: 0.50492*height), control1: CGPoint(x: 0.45301*width, y: 0.53288*height), control2: CGPoint(x: 0.43129*width, y: 0.52071*height))
        path.addCurve(to: CGPoint(x: 0.42555*width, y: 0.48731*height), control1: CGPoint(x: 0.42285*width, y: 0.49973*height), control2: CGPoint(x: 0.42309*width, y: 0.49055*height))
        path.addCurve(to: CGPoint(x: 0.41793*width, y: 0.48136*height), control1: CGPoint(x: 0.42676*width, y: 0.48564*height), control2: CGPoint(x: 0.42629*width, y: 0.48531*height))
        path.addCurve(to: CGPoint(x: 0.34641*width, y: 0.45637*height), control1: CGPoint(x: 0.39793*width, y: 0.47191*height), control2: CGPoint(x: 0.37414*width, y: 0.46356*height))
        path.addCurve(to: CGPoint(x: 0.32543*width, y: 0.45118*height), control1: CGPoint(x: 0.33551*width, y: 0.45352*height), control2: CGPoint(x: 0.32605*width, y: 0.45118*height))
        path.addCurve(to: CGPoint(x: 0.31797*width, y: 0.46296*height), control1: CGPoint(x: 0.32484*width, y: 0.45118*height), control2: CGPoint(x: 0.32141*width, y: 0.45649*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.31797*width, y: 0.46296*height))
        return path
    }
}

struct LeftLegShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.66238*width, y: 0.45654*height))
        path.addCurve(to: CGPoint(x: 0.58602*width, y: 0.48006*height), control1: CGPoint(x: 0.62805*width, y: 0.4634*height), control2: CGPoint(x: 0.60195*width, y: 0.47137*height))
        path.addLine(to: CGPoint(x: 0.5809*width, y: 0.48291*height))
        path.addLine(to: CGPoint(x: 0.58344*width, y: 0.48834*height))
        path.addCurve(to: CGPoint(x: 0.58543*width, y: 0.5*height), control1: CGPoint(x: 0.58566*width, y: 0.49287*height), control2: CGPoint(x: 0.58602*width, y: 0.49496*height))
        path.addCurve(to: CGPoint(x: 0.56188*width, y: 0.52759*height), control1: CGPoint(x: 0.58406*width, y: 0.51153*height), control2: CGPoint(x: 0.57734*width, y: 0.51943*height))
        path.addCurve(to: CGPoint(x: 0.52145*width, y: 0.53919*height), control1: CGPoint(x: 0.55012*width, y: 0.53387*height), control2: CGPoint(x: 0.53699*width, y: 0.5377*height))
        path.addCurve(to: CGPoint(x: 0.51066*width, y: 0.54074*height), control1: CGPoint(x: 0.51605*width, y: 0.53977*height), control2: CGPoint(x: 0.51129*width, y: 0.54041*height))
        path.addCurve(to: CGPoint(x: 0.54043*width, y: 0.59334*height), control1: CGPoint(x: 0.51016*width, y: 0.54101*height), control2: CGPoint(x: 0.52352*width, y: 0.56471*height))
        path.addLine(to: CGPoint(x: 0.57121*width, y: 0.6454*height))
        path.addLine(to: CGPoint(x: 0.57535*width, y: 0.66094*height))
        path.addCurve(to: CGPoint(x: 0.59313*width, y: 0.77298*height), control1: CGPoint(x: 0.58555*width, y: 0.69845*height), control2: CGPoint(x: 0.5902*width, y: 0.72778*height))
        path.addCurve(to: CGPoint(x: 0.60305*width, y: 0.81477*height), control1: CGPoint(x: 0.59437*width, y: 0.79152*height), control2: CGPoint(x: 0.59582*width, y: 0.79787*height))
        path.addCurve(to: CGPoint(x: 0.63785*width, y: 0.87403*height), control1: CGPoint(x: 0.60945*width, y: 0.82947*height), control2: CGPoint(x: 0.62305*width, y: 0.85253*height))
        path.addCurve(to: CGPoint(x: 0.64988*width, y: 0.91419*height), control1: CGPoint(x: 0.64621*width, y: 0.88608*height), control2: CGPoint(x: 0.64988*width, y: 0.89852*height))
        path.addCurve(to: CGPoint(x: 0.64277*width, y: 0.94546*height), control1: CGPoint(x: 0.64988*width, y: 0.92617*height), control2: CGPoint(x: 0.64781*width, y: 0.93537*height))
        path.addCurve(to: CGPoint(x: 0.64781*width, y: 0.96042*height), control1: CGPoint(x: 0.63801*width, y: 0.95505*height), control2: CGPoint(x: 0.63824*width, y: 0.95577*height))
        path.addCurve(to: CGPoint(x: 0.70699*width, y: 0.97799*height), control1: CGPoint(x: 0.65516*width, y: 0.96393*height), control2: CGPoint(x: 0.66164*width, y: 0.96588*height))
        path.addCurve(to: CGPoint(x: 0.77867*width, y: 0.99223*height), control1: CGPoint(x: 0.76215*width, y: 0.99275*height), control2: CGPoint(x: 0.76531*width, y: 0.99339*height))
        path.addCurve(to: CGPoint(x: 0.81738*width, y: 0.98524*height), control1: CGPoint(x: 0.78848*width, y: 0.99138*height), control2: CGPoint(x: 0.80613*width, y: 0.98822*height))
        path.addCurve(to: CGPoint(x: 0.82535*width, y: 0.97636*height), control1: CGPoint(x: 0.82781*width, y: 0.98251*height), control2: CGPoint(x: 0.82891*width, y: 0.98127*height))
        path.addCurve(to: CGPoint(x: 0.81582*width, y: 0.97119*height), control1: CGPoint(x: 0.82379*width, y: 0.9741*height), control2: CGPoint(x: 0.82195*width, y: 0.97313*height))
        path.addCurve(to: CGPoint(x: 0.73309*width, y: 0.93634*height), control1: CGPoint(x: 0.78027*width, y: 0.95972*height), control2: CGPoint(x: 0.7473*width, y: 0.94585*height))
        path.addCurve(to: CGPoint(x: 0.7234*width, y: 0.91257*height), control1: CGPoint(x: 0.7223*width, y: 0.92915*height), control2: CGPoint(x: 0.72254*width, y: 0.92985*height))
        path.addCurve(to: CGPoint(x: 0.72551*width, y: 0.89151*height), control1: CGPoint(x: 0.72379*width, y: 0.9042*height), control2: CGPoint(x: 0.72477*width, y: 0.8947*height))
        path.addCurve(to: CGPoint(x: 0.73062*width, y: 0.78627*height), control1: CGPoint(x: 0.73039*width, y: 0.86899*height), control2: CGPoint(x: 0.7332*width, y: 0.81062*height))
        path.addCurve(to: CGPoint(x: 0.72437*width, y: 0.76788*height), control1: CGPoint(x: 0.72941*width, y: 0.77532*height), control2: CGPoint(x: 0.72918*width, y: 0.77468*height))
        path.addCurve(to: CGPoint(x: 0.69891*width, y: 0.70304*height), control1: CGPoint(x: 0.7093*width, y: 0.7469*height), control2: CGPoint(x: 0.70023*width, y: 0.72371*height))
        path.addCurve(to: CGPoint(x: 0.70207*width, y: 0.67293*height), control1: CGPoint(x: 0.69828*width, y: 0.69351*height), control2: CGPoint(x: 0.69879*width, y: 0.68944*height))
        path.addCurve(to: CGPoint(x: 0.71164*width, y: 0.57577*height), control1: CGPoint(x: 0.71004*width, y: 0.63271*height), control2: CGPoint(x: 0.71262*width, y: 0.60642*height))
        path.addCurve(to: CGPoint(x: 0.69977*width, y: 0.50221*height), control1: CGPoint(x: 0.71066*width, y: 0.54663*height), control2: CGPoint(x: 0.70723*width, y: 0.52565*height))
        path.addCurve(to: CGPoint(x: 0.67637*width, y: 0.4542*height), control1: CGPoint(x: 0.6934*width, y: 0.48218*height), control2: CGPoint(x: 0.67988*width, y: 0.45447*height))
        path.addCurve(to: CGPoint(x: 0.66238*width, y: 0.45654*height), control1: CGPoint(x: 0.67535*width, y: 0.45414*height), control2: CGPoint(x: 0.6691*width, y: 0.45517*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.66238*width, y: 0.45654*height))
        return path
    }
}

// MARK: - AdultBack

struct BackHeadShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.47004*width, y: 0.01095*height))
        path.addCurve(to: CGPoint(x: 0.43324*width, y: 0.02196*height), control1: CGPoint(x: 0.45656*width, y: 0.0132*height), control2: CGPoint(x: 0.43875*width, y: 0.01858*height))
        path.addCurve(to: CGPoint(x: 0.415*width, y: 0.03558*height), control1: CGPoint(x: 0.42277*width, y: 0.02844*height), control2: CGPoint(x: 0.41926*width, y: 0.03107*height))
        path.addCurve(to: CGPoint(x: 0.40734*width, y: 0.05888*height), control1: CGPoint(x: 0.40797*width, y: 0.04325*height), control2: CGPoint(x: 0.40734*width, y: 0.04513*height))
        path.addLine(to: CGPoint(x: 0.40734*width, y: 0.07084*height))
        path.addLine(to: CGPoint(x: 0.40422*width, y: 0.07084*height))
        path.addCurve(to: CGPoint(x: 0.39457*width, y: 0.08347*height), control1: CGPoint(x: 0.39727*width, y: 0.07084*height), control2: CGPoint(x: 0.39437*width, y: 0.07466*height))
        path.addCurve(to: CGPoint(x: 0.40535*width, y: 0.10118*height), control1: CGPoint(x: 0.3948*width, y: 0.09146*height), control2: CGPoint(x: 0.39727*width, y: 0.09549*height))
        path.addCurve(to: CGPoint(x: 0.43117*width, y: 0.12227*height), control1: CGPoint(x: 0.41656*width, y: 0.10901*height), control2: CGPoint(x: 0.42898*width, y: 0.11921*height))
        path.addCurve(to: CGPoint(x: 0.43812*width, y: 0.13712*height), control1: CGPoint(x: 0.43336*width, y: 0.12516*height), control2: CGPoint(x: 0.43625*width, y: 0.13156*height))
        path.addLine(to: CGPoint(x: 0.43895*width, y: 0.13982*height))
        path.addLine(to: CGPoint(x: 0.4457*width, y: 0.14105*height))
        path.addCurve(to: CGPoint(x: 0.55359*width, y: 0.14277*height), control1: CGPoint(x: 0.48031*width, y: 0.14755*height), control2: CGPoint(x: 0.51824*width, y: 0.14813*height))
        path.addCurve(to: CGPoint(x: 0.56594*width, y: 0.13563*height), control1: CGPoint(x: 0.56582*width, y: 0.14089*height), control2: CGPoint(x: 0.56594*width, y: 0.14083*height))
        path.addCurve(to: CGPoint(x: 0.57215*width, y: 0.12022*height), control1: CGPoint(x: 0.56594*width, y: 0.13085*height), control2: CGPoint(x: 0.56895*width, y: 0.12354*height))
        path.addCurve(to: CGPoint(x: 0.58168*width, y: 0.11233*height), control1: CGPoint(x: 0.57316*width, y: 0.11921*height), control2: CGPoint(x: 0.57742*width, y: 0.11567*height))
        path.addCurve(to: CGPoint(x: 0.59316*width, y: 0.10268*height), control1: CGPoint(x: 0.58582*width, y: 0.10905*height), control2: CGPoint(x: 0.59102*width, y: 0.10472*height))
        path.addCurve(to: CGPoint(x: 0.59961*width, y: 0.09687*height), control1: CGPoint(x: 0.59535*width, y: 0.10069*height), control2: CGPoint(x: 0.59824*width, y: 0.09806*height))
        path.addCurve(to: CGPoint(x: 0.605*width, y: 0.07551*height), control1: CGPoint(x: 0.6048*width, y: 0.09241*height), control2: CGPoint(x: 0.60707*width, y: 0.08331*height))
        path.addCurve(to: CGPoint(x: 0.59586*width, y: 0.06924*height), control1: CGPoint(x: 0.60395*width, y: 0.07171*height), control2: CGPoint(x: 0.60031*width, y: 0.06924*height))
        path.addCurve(to: CGPoint(x: 0.59285*width, y: 0.06693*height), control1: CGPoint(x: 0.59309*width, y: 0.06924*height), control2: CGPoint(x: 0.59285*width, y: 0.06912*height))
        path.addCurve(to: CGPoint(x: 0.58965*width, y: 0.04507*height), control1: CGPoint(x: 0.59285*width, y: 0.06284*height), control2: CGPoint(x: 0.59078*width, y: 0.04922*height))
        path.addCurve(to: CGPoint(x: 0.5682*width, y: 0.02303*height), control1: CGPoint(x: 0.58789*width, y: 0.03864*height), control2: CGPoint(x: 0.57516*width, y: 0.02566*height))
        path.addCurve(to: CGPoint(x: 0.5573*width, y: 0.01836*height), control1: CGPoint(x: 0.56707*width, y: 0.02259*height), control2: CGPoint(x: 0.56219*width, y: 0.0205*height))
        path.addCurve(to: CGPoint(x: 0.5393*width, y: 0.01283*height), control1: CGPoint(x: 0.54984*width, y: 0.01514*height), control2: CGPoint(x: 0.54695*width, y: 0.01423*height))
        path.addCurve(to: CGPoint(x: 0.49719*width, y: 0.00913*height), control1: CGPoint(x: 0.52238*width, y: 0.00972*height), control2: CGPoint(x: 0.51555*width, y: 0.00913*height))
        path.addCurve(to: CGPoint(x: 0.47004*width, y: 0.01095*height), control1: CGPoint(x: 0.48102*width, y: 0.00917*height), control2: CGPoint(x: 0.48*width, y: 0.00923*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.47004*width, y: 0.01095*height))
        return path
    }
}

struct BackMainBodyShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.42637*width, y: 0.14453*height))
        path.addCurve(to: CGPoint(x: 0.35734*width, y: 0.16698*height), control1: CGPoint(x: 0.40777*width, y: 0.15439*height), control2: CGPoint(x: 0.38355*width, y: 0.16226*height))
        path.addCurve(to: CGPoint(x: 0.34816*width, y: 0.17032*height), control1: CGPoint(x: 0.34762*width, y: 0.16874*height), control2: CGPoint(x: 0.34754*width, y: 0.16874*height))
        path.addCurve(to: CGPoint(x: 0.35398*width, y: 0.17748*height), control1: CGPoint(x: 0.34859*width, y: 0.17119*height), control2: CGPoint(x: 0.35113*width, y: 0.17443*height))
        path.addCurve(to: CGPoint(x: 0.36887*width, y: 0.19981*height), control1: CGPoint(x: 0.3602*width, y: 0.18432*height), control2: CGPoint(x: 0.3659*width, y: 0.19292*height))
        path.addCurve(to: CGPoint(x: 0.37035*width, y: 0.22772*height), control1: CGPoint(x: 0.37203*width, y: 0.20738*height), control2: CGPoint(x: 0.37277*width, y: 0.22033*height))
        path.addCurve(to: CGPoint(x: 0.33293*width, y: 0.26692*height), control1: CGPoint(x: 0.3659*width, y: 0.24158*height), control2: CGPoint(x: 0.35324*width, y: 0.25482*height))
        path.addLine(to: CGPoint(x: 0.32543*width, y: 0.27139*height))
        path.addLine(to: CGPoint(x: 0.32863*width, y: 0.29538*height))
        path.addCurve(to: CGPoint(x: 0.33863*width, y: 0.42349*height), control1: CGPoint(x: 0.34445*width, y: 0.41534*height), control2: CGPoint(x: 0.34371*width, y: 0.40538*height))
        path.addCurve(to: CGPoint(x: 0.31984*width, y: 0.47328*height), control1: CGPoint(x: 0.33559*width, y: 0.43432*height), control2: CGPoint(x: 0.32648*width, y: 0.45835*height))
        path.addLine(to: CGPoint(x: 0.31824*width, y: 0.47679*height))
        path.addLine(to: CGPoint(x: 0.3225*width, y: 0.48178*height))
        path.addCurve(to: CGPoint(x: 0.42098*width, y: 0.53202*height), control1: CGPoint(x: 0.34762*width, y: 0.51182*height), control2: CGPoint(x: 0.3802*width, y: 0.52846*height))
        path.addCurve(to: CGPoint(x: 0.46406*width, y: 0.5307*height), control1: CGPoint(x: 0.43184*width, y: 0.53295*height), control2: CGPoint(x: 0.45148*width, y: 0.53234*height))
        path.addCurve(to: CGPoint(x: 0.49766*width, y: 0.52402*height), control1: CGPoint(x: 0.47527*width, y: 0.52917*height), control2: CGPoint(x: 0.49598*width, y: 0.52506*height))
        path.addCurve(to: CGPoint(x: 0.5093*width, y: 0.49881*height), control1: CGPoint(x: 0.49957*width, y: 0.52287*height), control2: CGPoint(x: 0.50699*width, y: 0.50668*height))
        path.addCurve(to: CGPoint(x: 0.50813*width, y: 0.45015*height), control1: CGPoint(x: 0.51363*width, y: 0.48363*height), control2: CGPoint(x: 0.5132*width, y: 0.46569*height))
        path.addCurve(to: CGPoint(x: 0.50551*width, y: 0.4411*height), control1: CGPoint(x: 0.50687*width, y: 0.44653*height), control2: CGPoint(x: 0.5057*width, y: 0.44248*height))
        path.addLine(to: CGPoint(x: 0.50508*width, y: 0.43865*height))
        path.addLine(to: CGPoint(x: 0.50719*width, y: 0.44106*height))
        path.addCurve(to: CGPoint(x: 0.51457*width, y: 0.46152*height), control1: CGPoint(x: 0.50973*width, y: 0.44386*height), control2: CGPoint(x: 0.51277*width, y: 0.4525*height))
        path.addCurve(to: CGPoint(x: 0.51258*width, y: 0.5*height), control1: CGPoint(x: 0.51648*width, y: 0.47106*height), control2: CGPoint(x: 0.51543*width, y: 0.49146*height))
        path.addCurve(to: CGPoint(x: 0.5041*width, y: 0.51949*height), control1: CGPoint(x: 0.51023*width, y: 0.50716*height), control2: CGPoint(x: 0.50738*width, y: 0.51368*height))
        path.addCurve(to: CGPoint(x: 0.51375*width, y: 0.52617*height), control1: CGPoint(x: 0.5016*width, y: 0.52409*height), control2: CGPoint(x: 0.50168*width, y: 0.52419*height))
        path.addCurve(to: CGPoint(x: 0.56266*width, y: 0.53*height), control1: CGPoint(x: 0.53242*width, y: 0.52923*height), control2: CGPoint(x: 0.54215*width, y: 0.53*height))
        path.addCurve(to: CGPoint(x: 0.60852*width, y: 0.52534*height), control1: CGPoint(x: 0.58473*width, y: 0.53*height), control2: CGPoint(x: 0.59332*width, y: 0.52917*height))
        path.addCurve(to: CGPoint(x: 0.66187*width, y: 0.49644*height), control1: CGPoint(x: 0.63082*width, y: 0.51988*height), control2: CGPoint(x: 0.64855*width, y: 0.51024*height))
        path.addCurve(to: CGPoint(x: 0.67605*width, y: 0.47844*height), control1: CGPoint(x: 0.66812*width, y: 0.4901*height), control2: CGPoint(x: 0.67328*width, y: 0.48342*height))
        path.addCurve(to: CGPoint(x: 0.67613*width, y: 0.47033*height), control1: CGPoint(x: 0.67816*width, y: 0.47466*height), control2: CGPoint(x: 0.67816*width, y: 0.47456*height))
        path.addCurve(to: CGPoint(x: 0.66316*width, y: 0.43701*height), control1: CGPoint(x: 0.67266*width, y: 0.46274*height), control2: CGPoint(x: 0.6659*width, y: 0.44543*height))
        path.addCurve(to: CGPoint(x: 0.66602*width, y: 0.3311*height), control1: CGPoint(x: 0.65426*width, y: 0.40959*height), control2: CGPoint(x: 0.65426*width, y: 0.40817*height))
        path.addCurve(to: CGPoint(x: 0.67309*width, y: 0.27091*height), control1: CGPoint(x: 0.67457*width, y: 0.27431*height), control2: CGPoint(x: 0.67488*width, y: 0.27168*height))
        path.addCurve(to: CGPoint(x: 0.65406*width, y: 0.25745*height), control1: CGPoint(x: 0.66992*width, y: 0.26953*height), control2: CGPoint(x: 0.65965*width, y: 0.26231*height))
        path.addCurve(to: CGPoint(x: 0.64855*width, y: 0.17497*height), control1: CGPoint(x: 0.62414*width, y: 0.23189*height), control2: CGPoint(x: 0.62234*width, y: 0.2042*height))
        path.addCurve(to: CGPoint(x: 0.64613*width, y: 0.16801*height), control1: CGPoint(x: 0.65395*width, y: 0.169*height), control2: CGPoint(x: 0.65395*width, y: 0.16906*height))
        path.addCurve(to: CGPoint(x: 0.60195*width, y: 0.15763*height), control1: CGPoint(x: 0.62953*width, y: 0.16578*height), control2: CGPoint(x: 0.61687*width, y: 0.16281*height))
        path.addCurve(to: CGPoint(x: 0.57164*width, y: 0.14427*height), control1: CGPoint(x: 0.5898*width, y: 0.1534*height), control2: CGPoint(x: 0.57164*width, y: 0.14536*height))
        path.addCurve(to: CGPoint(x: 0.55937*width, y: 0.14394*height), control1: CGPoint(x: 0.57164*width, y: 0.14241*height), control2: CGPoint(x: 0.56898*width, y: 0.14235*height))
        path.addCurve(to: CGPoint(x: 0.44684*width, y: 0.1436*height), control1: CGPoint(x: 0.52176*width, y: 0.15018*height), control2: CGPoint(x: 0.48266*width, y: 0.15006*height))
        path.addCurve(to: CGPoint(x: 0.43406*width, y: 0.14174*height), control1: CGPoint(x: 0.44113*width, y: 0.14257*height), control2: CGPoint(x: 0.43535*width, y: 0.14174*height))
        path.addCurve(to: CGPoint(x: 0.42637*width, y: 0.14453*height), control1: CGPoint(x: 0.4325*width, y: 0.14174*height), control2: CGPoint(x: 0.42961*width, y: 0.14273*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.42637*width, y: 0.14453*height))
        return path
    }
}

struct BackRightHandShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.32523*width, y: 0.17287*height))
        path.addCurve(to: CGPoint(x: 0.2098*width, y: 0.23535*height), control1: CGPoint(x: 0.25457*width, y: 0.18634*height), control2: CGPoint(x: 0.21469*width, y: 0.20795*height))
        path.addCurve(to: CGPoint(x: 0.20105*width, y: 0.27386*height), control1: CGPoint(x: 0.20926*width, y: 0.23848*height), control2: CGPoint(x: 0.20531*width, y: 0.25576*height))
        path.addLine(to: CGPoint(x: 0.19336*width, y: 0.3067*height))
        path.addLine(to: CGPoint(x: 0.18234*width, y: 0.33105*height))
        path.addCurve(to: CGPoint(x: 0.15441*width, y: 0.38141*height), control1: CGPoint(x: 0.17156*width, y: 0.35502*height), control2: CGPoint(x: 0.17113*width, y: 0.35577*height))
        path.addCurve(to: CGPoint(x: 0.08375*width, y: 0.48848*height), control1: CGPoint(x: 0.1218*width, y: 0.43117*height), control2: CGPoint(x: 0.08633*width, y: 0.48497*height))
        path.addCurve(to: CGPoint(x: 0.07855*width, y: 0.49575*height), control1: CGPoint(x: 0.08238*width, y: 0.49042*height), control2: CGPoint(x: 0.08*width, y: 0.49365*height))
        path.addCurve(to: CGPoint(x: 0.0743*width, y: 0.50069*height), control1: CGPoint(x: 0.07699*width, y: 0.49778*height), control2: CGPoint(x: 0.07512*width, y: 0.5*height))
        path.addCurve(to: CGPoint(x: 0.06961*width, y: 0.50592*height), control1: CGPoint(x: 0.07348*width, y: 0.50134*height), control2: CGPoint(x: 0.07137*width, y: 0.50372*height))
        path.addCurve(to: CGPoint(x: 0.0457*width, y: 0.5259*height), control1: CGPoint(x: 0.06496*width, y: 0.51213*height), control2: CGPoint(x: 0.06109*width, y: 0.51534*height))
        path.addCurve(to: CGPoint(x: 0.02059*width, y: 0.54944*height), control1: CGPoint(x: 0.03074*width, y: 0.53625*height), control2: CGPoint(x: 0.02297*width, y: 0.54352*height))
        path.addCurve(to: CGPoint(x: 0.02535*width, y: 0.55418*height), control1: CGPoint(x: 0.0191*width, y: 0.55304*height), control2: CGPoint(x: 0.02027*width, y: 0.55418*height))
        path.addCurve(to: CGPoint(x: 0.04445*width, y: 0.54738*height), control1: CGPoint(x: 0.02961*width, y: 0.55418*height), control2: CGPoint(x: 0.04*width, y: 0.55052*height))
        path.addCurve(to: CGPoint(x: 0.04883*width, y: 0.54502*height), control1: CGPoint(x: 0.04633*width, y: 0.5461*height), control2: CGPoint(x: 0.04832*width, y: 0.54502*height))
        path.addCurve(to: CGPoint(x: 0.04707*width, y: 0.57395*height), control1: CGPoint(x: 0.0507*width, y: 0.54502*height), control2: CGPoint(x: 0.04996*width, y: 0.55558*height))
        path.addCurve(to: CGPoint(x: 0.04988*width, y: 0.59485*height), control1: CGPoint(x: 0.04387*width, y: 0.5941*height), control2: CGPoint(x: 0.04395*width, y: 0.59485*height))
        path.addCurve(to: CGPoint(x: 0.05684*width, y: 0.59135*height), control1: CGPoint(x: 0.05332*width, y: 0.59485*height), control2: CGPoint(x: 0.05371*width, y: 0.59462*height))
        path.addCurve(to: CGPoint(x: 0.06496*width, y: 0.57475*height), control1: CGPoint(x: 0.06184*width, y: 0.58616*height), control2: CGPoint(x: 0.06316*width, y: 0.58348*height))
        path.addCurve(to: CGPoint(x: 0.06859*width, y: 0.56281*height), control1: CGPoint(x: 0.06703*width, y: 0.56447*height), control2: CGPoint(x: 0.06754*width, y: 0.56281*height))
        path.addCurve(to: CGPoint(x: 0.07262*width, y: 0.58191*height), control1: CGPoint(x: 0.07098*width, y: 0.56281*height), control2: CGPoint(x: 0.07199*width, y: 0.56769*height))
        path.addCurve(to: CGPoint(x: 0.07824*width, y: 0.60028*height), control1: CGPoint(x: 0.07336*width, y: 0.5977*height), control2: CGPoint(x: 0.07398*width, y: 0.59959*height))
        path.addCurve(to: CGPoint(x: 0.08738*width, y: 0.59684*height), control1: CGPoint(x: 0.08082*width, y: 0.60071*height), control2: CGPoint(x: 0.0852*width, y: 0.5991*height))
        path.addCurve(to: CGPoint(x: 0.08969*width, y: 0.57971*height), control1: CGPoint(x: 0.08875*width, y: 0.59548*height), control2: CGPoint(x: 0.08914*width, y: 0.59231*height))
        path.addCurve(to: CGPoint(x: 0.09133*width, y: 0.56372*height), control1: CGPoint(x: 0.09*width, y: 0.5706*height), control2: CGPoint(x: 0.0907*width, y: 0.56403*height))
        path.addCurve(to: CGPoint(x: 0.09559*width, y: 0.58272*height), control1: CGPoint(x: 0.09332*width, y: 0.56268*height), control2: CGPoint(x: 0.09445*width, y: 0.56765*height))
        path.addCurve(to: CGPoint(x: 0.10078*width, y: 0.59914*height), control1: CGPoint(x: 0.09664*width, y: 0.59495*height), control2: CGPoint(x: 0.09746*width, y: 0.5976*height))
        path.addCurve(to: CGPoint(x: 0.10578*width, y: 0.59963*height), control1: CGPoint(x: 0.10246*width, y: 0.59996*height), control2: CGPoint(x: 0.10348*width, y: 0.60006*height))
        path.addCurve(to: CGPoint(x: 0.11141*width, y: 0.58004*height), control1: CGPoint(x: 0.11141*width, y: 0.59861*height), control2: CGPoint(x: 0.11172*width, y: 0.59747*height))
        path.addCurve(to: CGPoint(x: 0.11223*width, y: 0.56474*height), control1: CGPoint(x: 0.11117*width, y: 0.56883*height), control2: CGPoint(x: 0.11141*width, y: 0.56431*height))
        path.addCurve(to: CGPoint(x: 0.11535*width, y: 0.57841*height), control1: CGPoint(x: 0.11355*width, y: 0.56543*height), control2: CGPoint(x: 0.11535*width, y: 0.57304*height))
        path.addCurve(to: CGPoint(x: 0.11906*width, y: 0.58978*height), control1: CGPoint(x: 0.11535*width, y: 0.58374*height), control2: CGPoint(x: 0.11691*width, y: 0.58854*height))
        path.addCurve(to: CGPoint(x: 0.1277*width, y: 0.58978*height), control1: CGPoint(x: 0.12137*width, y: 0.59106*height), control2: CGPoint(x: 0.1252*width, y: 0.59106*height))
        path.addCurve(to: CGPoint(x: 0.1352*width, y: 0.57654*height), control1: CGPoint(x: 0.1302*width, y: 0.58848*height), control2: CGPoint(x: 0.13113*width, y: 0.58687*height))
        path.addCurve(to: CGPoint(x: 0.14078*width, y: 0.5636*height), control1: CGPoint(x: 0.13684*width, y: 0.57206*height), control2: CGPoint(x: 0.13945*width, y: 0.56624*height))
        path.addCurve(to: CGPoint(x: 0.14641*width, y: 0.53963*height), control1: CGPoint(x: 0.14441*width, y: 0.55654*height), control2: CGPoint(x: 0.14527*width, y: 0.5531*height))
        path.addCurve(to: CGPoint(x: 0.1516*width, y: 0.50588*height), control1: CGPoint(x: 0.14754*width, y: 0.52671*height), control2: CGPoint(x: 0.15004*width, y: 0.5105*height))
        path.addCurve(to: CGPoint(x: 0.1648*width, y: 0.48918*height), control1: CGPoint(x: 0.15223*width, y: 0.50435*height), control2: CGPoint(x: 0.15805*width, y: 0.49683*height))
        path.addCurve(to: CGPoint(x: 0.21457*width, y: 0.4435*height), control1: CGPoint(x: 0.17707*width, y: 0.47518*height), control2: CGPoint(x: 0.17871*width, y: 0.47367*height))
        path.addCurve(to: CGPoint(x: 0.255*width, y: 0.3988*height), control1: CGPoint(x: 0.23047*width, y: 0.43016*height), control2: CGPoint(x: 0.24605*width, y: 0.41292*height))
        path.addCurve(to: CGPoint(x: 0.29187*width, y: 0.33004*height), control1: CGPoint(x: 0.25758*width, y: 0.39465*height), control2: CGPoint(x: 0.27422*width, y: 0.36369*height))
        path.addLine(to: CGPoint(x: 0.32398*width, y: 0.2688*height))
        path.addLine(to: CGPoint(x: 0.3325*width, y: 0.26223*height))
        path.addCurve(to: CGPoint(x: 0.36305*width, y: 0.21328*height), control1: CGPoint(x: 0.35402*width, y: 0.24552*height), control2: CGPoint(x: 0.36305*width, y: 0.23104*height))
        path.addCurve(to: CGPoint(x: 0.35566*width, y: 0.18742*height), control1: CGPoint(x: 0.36305*width, y: 0.20308*height), control2: CGPoint(x: 0.36129*width, y: 0.19706*height))
        path.addCurve(to: CGPoint(x: 0.34289*width, y: 0.17072*height), control1: CGPoint(x: 0.35172*width, y: 0.18052*height), control2: CGPoint(x: 0.34414*width, y: 0.17072*height))
        path.addCurve(to: CGPoint(x: 0.34063*width, y: 0.17045*height), control1: CGPoint(x: 0.34238*width, y: 0.17072*height), control2: CGPoint(x: 0.34145*width, y: 0.17061*height))
        path.addCurve(to: CGPoint(x: 0.32523*width, y: 0.17287*height), control1: CGPoint(x: 0.33988*width, y: 0.17035*height), control2: CGPoint(x: 0.33293*width, y: 0.17143*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.10805*width, y: 0.58403*height))
        path.addCurve(to: CGPoint(x: 0.10703*width, y: 0.58462*height), control1: CGPoint(x: 0.10805*width, y: 0.58417*height), control2: CGPoint(x: 0.10766*width, y: 0.58445*height))
        path.addCurve(to: CGPoint(x: 0.10598*width, y: 0.58439*height), control1: CGPoint(x: 0.10652*width, y: 0.58478*height), control2: CGPoint(x: 0.10598*width, y: 0.58466*height))
        path.addCurve(to: CGPoint(x: 0.10703*width, y: 0.5838*height), control1: CGPoint(x: 0.10598*width, y: 0.58407*height), control2: CGPoint(x: 0.10652*width, y: 0.5838*height))
        path.addCurve(to: CGPoint(x: 0.10805*width, y: 0.58403*height), control1: CGPoint(x: 0.10766*width, y: 0.5838*height), control2: CGPoint(x: 0.10805*width, y: 0.5839*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.10805*width, y: 0.58403*height))
        return path
    }
}

struct BackLeftHandShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.65359*width, y: 0.17454*height))
        path.addCurve(to: CGPoint(x: 0.64195*width, y: 0.19452*height), control1: CGPoint(x: 0.64953*width, y: 0.17957*height), control2: CGPoint(x: 0.64434*width, y: 0.18827*height))
        path.addCurve(to: CGPoint(x: 0.63953*width, y: 0.21246*height), control1: CGPoint(x: 0.63984*width, y: 0.19981*height), control2: CGPoint(x: 0.63953*width, y: 0.20223*height))
        path.addCurve(to: CGPoint(x: 0.64203*width, y: 0.23024*height), control1: CGPoint(x: 0.63953*width, y: 0.2228*height), control2: CGPoint(x: 0.63984*width, y: 0.22506*height))
        path.addCurve(to: CGPoint(x: 0.66832*width, y: 0.26508*height), control1: CGPoint(x: 0.64684*width, y: 0.24198*height), control2: CGPoint(x: 0.65598*width, y: 0.25409*height))
        path.addCurve(to: CGPoint(x: 0.6777*width, y: 0.27547*height), control1: CGPoint(x: 0.67156*width, y: 0.26782*height), control2: CGPoint(x: 0.6757*width, y: 0.27252*height))
        path.addCurve(to: CGPoint(x: 0.68629*width, y: 0.29567*height), control1: CGPoint(x: 0.68121*width, y: 0.28054*height), control2: CGPoint(x: 0.68234*width, y: 0.28345*height))
        path.addCurve(to: CGPoint(x: 0.73523*width, y: 0.389*height), control1: CGPoint(x: 0.68848*width, y: 0.30261*height), control2: CGPoint(x: 0.72816*width, y: 0.37813*height))
        path.addCurve(to: CGPoint(x: 0.8027*width, y: 0.46208*height), control1: CGPoint(x: 0.75363*width, y: 0.41705*height), control2: CGPoint(x: 0.77578*width, y: 0.44102*height))
        path.addCurve(to: CGPoint(x: 0.82523*width, y: 0.48283*height), control1: CGPoint(x: 0.80953*width, y: 0.46747*height), control2: CGPoint(x: 0.81754*width, y: 0.47479*height))
        path.addCurve(to: CGPoint(x: 0.84582*width, y: 0.51272*height), control1: CGPoint(x: 0.84539*width, y: 0.50372*height), control2: CGPoint(x: 0.84457*width, y: 0.50242*height))
        path.addCurve(to: CGPoint(x: 0.84789*width, y: 0.5259*height), control1: CGPoint(x: 0.84641*width, y: 0.51762*height), control2: CGPoint(x: 0.84734*width, y: 0.52354*height))
        path.addCurve(to: CGPoint(x: 0.85203*width, y: 0.55579*height), control1: CGPoint(x: 0.84902*width, y: 0.53103*height), control2: CGPoint(x: 0.85047*width, y: 0.5413*height))
        path.addCurve(to: CGPoint(x: 0.8591*width, y: 0.58148*height), control1: CGPoint(x: 0.85328*width, y: 0.56663*height), control2: CGPoint(x: 0.85559*width, y: 0.57481*height))
        path.addCurve(to: CGPoint(x: 0.86691*width, y: 0.5894*height), control1: CGPoint(x: 0.8618*width, y: 0.58649*height), control2: CGPoint(x: 0.86336*width, y: 0.58805*height))
        path.addLine(to: CGPoint(x: 0.86969*width, y: 0.59047*height))
        path.addLine(to: CGPoint(x: 0.87262*width, y: 0.5894*height))
        path.addCurve(to: CGPoint(x: 0.87906*width, y: 0.57654*height), control1: CGPoint(x: 0.8775*width, y: 0.58746*height), control2: CGPoint(x: 0.87832*width, y: 0.58586*height))
        path.addLine(to: CGPoint(x: 0.87957*width, y: 0.56791*height))
        path.addLine(to: CGPoint(x: 0.88051*width, y: 0.57762*height))
        path.addCurve(to: CGPoint(x: 0.8882*width, y: 0.59753*height), control1: CGPoint(x: 0.88145*width, y: 0.58854*height), control2: CGPoint(x: 0.88363*width, y: 0.59414*height))
        path.addCurve(to: CGPoint(x: 0.89828*width, y: 0.5992*height), control1: CGPoint(x: 0.89141*width, y: 0.59996*height), control2: CGPoint(x: 0.89453*width, y: 0.60044*height))
        path.addCurve(to: CGPoint(x: 0.90234*width, y: 0.58407*height), control1: CGPoint(x: 0.90242*width, y: 0.5978*height), control2: CGPoint(x: 0.90316*width, y: 0.59501*height))
        path.addCurve(to: CGPoint(x: 0.90273*width, y: 0.57389*height), control1: CGPoint(x: 0.90191*width, y: 0.57749*height), control2: CGPoint(x: 0.90203*width, y: 0.57416*height))
        path.addCurve(to: CGPoint(x: 0.90449*width, y: 0.57857*height), control1: CGPoint(x: 0.90336*width, y: 0.57367*height), control2: CGPoint(x: 0.90398*width, y: 0.57534*height))
        path.addCurve(to: CGPoint(x: 0.91551*width, y: 0.6005*height), control1: CGPoint(x: 0.90648*width, y: 0.59332*height), control2: CGPoint(x: 0.91012*width, y: 0.6005*height))
        path.addCurve(to: CGPoint(x: 0.92551*width, y: 0.59688*height), control1: CGPoint(x: 0.91918*width, y: 0.6005*height), control2: CGPoint(x: 0.92312*width, y: 0.59904*height))
        path.addCurve(to: CGPoint(x: 0.93195*width, y: 0.58083*height), control1: CGPoint(x: 0.92758*width, y: 0.59495*height), control2: CGPoint(x: 0.9284*width, y: 0.59285*height))
        path.addCurve(to: CGPoint(x: 0.93297*width, y: 0.57959*height), control1: CGPoint(x: 0.93266*width, y: 0.57825*height), control2: CGPoint(x: 0.93289*width, y: 0.57804*height))
        path.addCurve(to: CGPoint(x: 0.9391*width, y: 0.59403*height), control1: CGPoint(x: 0.9332*width, y: 0.58331*height), control2: CGPoint(x: 0.93723*width, y: 0.59269*height))
        path.addCurve(to: CGPoint(x: 0.94543*width, y: 0.59554*height), control1: CGPoint(x: 0.94055*width, y: 0.59501*height), control2: CGPoint(x: 0.94223*width, y: 0.59544*height))
        path.addCurve(to: CGPoint(x: 0.95656*width, y: 0.58995*height), control1: CGPoint(x: 0.95137*width, y: 0.59576*height), control2: CGPoint(x: 0.95543*width, y: 0.59371*height))
        path.addCurve(to: CGPoint(x: 0.95293*width, y: 0.56091*height), control1: CGPoint(x: 0.95762*width, y: 0.58639*height), control2: CGPoint(x: 0.95555*width, y: 0.57017*height))
        path.addCurve(to: CGPoint(x: 0.94941*width, y: 0.54858*height), control1: CGPoint(x: 0.95168*width, y: 0.55676*height), control2: CGPoint(x: 0.95012*width, y: 0.55121*height))
        path.addLine(to: CGPoint(x: 0.94805*width, y: 0.54384*height))
        path.addLine(to: CGPoint(x: 0.95273*width, y: 0.54647*height))
        path.addCurve(to: CGPoint(x: 0.96113*width, y: 0.55182*height), control1: CGPoint(x: 0.95531*width, y: 0.54793*height), control2: CGPoint(x: 0.95918*width, y: 0.55029*height))
        path.addCurve(to: CGPoint(x: 0.96957*width, y: 0.55461*height), control1: CGPoint(x: 0.96445*width, y: 0.55424*height), control2: CGPoint(x: 0.9652*width, y: 0.55444*height))
        path.addCurve(to: CGPoint(x: 0.97984*width, y: 0.54999*height), control1: CGPoint(x: 0.97652*width, y: 0.55483*height), control2: CGPoint(x: 0.97984*width, y: 0.55332*height))
        path.addCurve(to: CGPoint(x: 0.97734*width, y: 0.54476*height), control1: CGPoint(x: 0.97984*width, y: 0.54846*height), control2: CGPoint(x: 0.97879*width, y: 0.54637*height))
        path.addCurve(to: CGPoint(x: 0.95242*width, y: 0.52466*height), control1: CGPoint(x: 0.9732*width, y: 0.54012*height), control2: CGPoint(x: 0.95832*width, y: 0.52822*height))
        path.addCurve(to: CGPoint(x: 0.94328*width, y: 0.5188*height), control1: CGPoint(x: 0.94918*width, y: 0.52279*height), control2: CGPoint(x: 0.94516*width, y: 0.52014*height))
        path.addCurve(to: CGPoint(x: 0.93352*width, y: 0.51265*height), control1: CGPoint(x: 0.94148*width, y: 0.5174*height), control2: CGPoint(x: 0.93703*width, y: 0.51465*height))
        path.addCurve(to: CGPoint(x: 0.92063*width, y: 0.49994*height), control1: CGPoint(x: 0.92746*width, y: 0.50922*height), control2: CGPoint(x: 0.92676*width, y: 0.5085*height))
        path.addCurve(to: CGPoint(x: 0.84434*width, y: 0.38346*height), control1: CGPoint(x: 0.89402*width, y: 0.46257*height), control2: CGPoint(x: 0.86109*width, y: 0.41237*height))
        path.addCurve(to: CGPoint(x: 0.78762*width, y: 0.24154*height), control1: CGPoint(x: 0.80891*width, y: 0.32206*height), control2: CGPoint(x: 0.79105*width, y: 0.27757*height))
        path.addCurve(to: CGPoint(x: 0.77797*width, y: 0.21757*height), control1: CGPoint(x: 0.78648*width, y: 0.22959*height), control2: CGPoint(x: 0.78512*width, y: 0.22626*height))
        path.addCurve(to: CGPoint(x: 0.7477*width, y: 0.19415*height), control1: CGPoint(x: 0.76965*width, y: 0.20756*height), control2: CGPoint(x: 0.76152*width, y: 0.20125*height))
        path.addCurve(to: CGPoint(x: 0.67375*width, y: 0.17342*height), control1: CGPoint(x: 0.72879*width, y: 0.18435*height), control2: CGPoint(x: 0.70418*width, y: 0.17745*height))
        path.addCurve(to: CGPoint(x: 0.65359*width, y: 0.17454*height), control1: CGPoint(x: 0.65691*width, y: 0.17116*height), control2: CGPoint(x: 0.65637*width, y: 0.1712*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.93172*width, y: 0.57556*height))
        path.addCurve(to: CGPoint(x: 0.93133*width, y: 0.57438*height), control1: CGPoint(x: 0.93152*width, y: 0.57642*height), control2: CGPoint(x: 0.93133*width, y: 0.57583*height))
        path.addCurve(to: CGPoint(x: 0.93172*width, y: 0.57288*height), control1: CGPoint(x: 0.93133*width, y: 0.57288*height), control2: CGPoint(x: 0.93152*width, y: 0.57222*height))
        path.addCurve(to: CGPoint(x: 0.93172*width, y: 0.57556*height), control1: CGPoint(x: 0.93195*width, y: 0.57357*height), control2: CGPoint(x: 0.93195*width, y: 0.57475*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.93172*width, y: 0.57556*height))
        return path
    }
}

struct BackRightLegShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.31637*width, y: 0.48421*height))
        path.addCurve(to: CGPoint(x: 0.30266*width, y: 0.54279*height), control1: CGPoint(x: 0.31355*width, y: 0.48994*height), control2: CGPoint(x: 0.30527*width, y: 0.52542*height))
        path.addCurve(to: CGPoint(x: 0.29871*width, y: 0.64718*height), control1: CGPoint(x: 0.2984*width, y: 0.57043*height), control2: CGPoint(x: 0.2984*width, y: 0.57096*height))
        path.addLine(to: CGPoint(x: 0.29914*width, y: 0.72128*height))
        path.addLine(to: CGPoint(x: 0.29578*width, y: 0.72966*height))
        path.addCurve(to: CGPoint(x: 0.27445*width, y: 0.76692*height), control1: CGPoint(x: 0.29043*width, y: 0.74334*height), control2: CGPoint(x: 0.28063*width, y: 0.76061*height))
        path.addCurve(to: CGPoint(x: 0.26434*width, y: 0.78327*height), control1: CGPoint(x: 0.27059*width, y: 0.77089*height), control2: CGPoint(x: 0.26559*width, y: 0.77888*height))
        path.addCurve(to: CGPoint(x: 0.26434*width, y: 0.79841*height), control1: CGPoint(x: 0.26336*width, y: 0.78635*height), control2: CGPoint(x: 0.26336*width, y: 0.79003*height))
        path.addCurve(to: CGPoint(x: 0.27695*width, y: 0.92293*height), control1: CGPoint(x: 0.27027*width, y: 0.85342*height), control2: CGPoint(x: 0.27695*width, y: 0.91908*height))
        path.addCurve(to: CGPoint(x: 0.27047*width, y: 0.9325*height), control1: CGPoint(x: 0.27695*width, y: 0.92855*height), control2: CGPoint(x: 0.27527*width, y: 0.93092*height))
        path.addCurve(to: CGPoint(x: 0.24277*width, y: 0.93244*height), control1: CGPoint(x: 0.2659*width, y: 0.93396*height), control2: CGPoint(x: 0.25598*width, y: 0.9339*height))
        path.addCurve(to: CGPoint(x: 0.20539*width, y: 0.93289*height), control1: CGPoint(x: 0.2293*width, y: 0.93092*height), control2: CGPoint(x: 0.21176*width, y: 0.93114*height))
        path.addCurve(to: CGPoint(x: 0.1923*width, y: 0.94343*height), control1: CGPoint(x: 0.19699*width, y: 0.93515*height), control2: CGPoint(x: 0.1923*width, y: 0.93894*height))
        path.addCurve(to: CGPoint(x: 0.20633*width, y: 0.95679*height), control1: CGPoint(x: 0.19242*width, y: 0.94754*height), control2: CGPoint(x: 0.19512*width, y: 0.95019*height))
        path.addCurve(to: CGPoint(x: 0.29496*width, y: 0.99065*height), control1: CGPoint(x: 0.22867*width, y: 0.96992*height), control2: CGPoint(x: 0.25949*width, y: 0.98176*height))
        path.addCurve(to: CGPoint(x: 0.31375*width, y: 0.99399*height), control1: CGPoint(x: 0.30465*width, y: 0.99314*height), control2: CGPoint(x: 0.30844*width, y: 0.99379*height))
        path.addCurve(to: CGPoint(x: 0.34551*width, y: 0.97869*height), control1: CGPoint(x: 0.3307*width, y: 0.9947*height), control2: CGPoint(x: 0.33844*width, y: 0.99097*height))
        path.addLine(to: CGPoint(x: 0.34824*width, y: 0.97387*height))
        path.addLine(to: CGPoint(x: 0.34855*width, y: 0.95223*height))
        path.addCurve(to: CGPoint(x: 0.35324*width, y: 0.90524*height), control1: CGPoint(x: 0.34875*width, y: 0.93034*height), control2: CGPoint(x: 0.34949*width, y: 0.92277*height))
        path.addCurve(to: CGPoint(x: 0.38691*width, y: 0.82918*height), control1: CGPoint(x: 0.35953*width, y: 0.87619*height), control2: CGPoint(x: 0.37164*width, y: 0.84887*height))
        path.addCurve(to: CGPoint(x: 0.405*width, y: 0.77293*height), control1: CGPoint(x: 0.39871*width, y: 0.81394*height), control2: CGPoint(x: 0.40219*width, y: 0.80327*height))
        path.addCurve(to: CGPoint(x: 0.40813*width, y: 0.74913*height), control1: CGPoint(x: 0.40582*width, y: 0.76358*height), control2: CGPoint(x: 0.4073*width, y: 0.75287*height))
        path.addCurve(to: CGPoint(x: 0.4166*width, y: 0.72626*height), control1: CGPoint(x: 0.4098*width, y: 0.74156*height), control2: CGPoint(x: 0.41418*width, y: 0.72978*height))
        path.addCurve(to: CGPoint(x: 0.42379*width, y: 0.7063*height), control1: CGPoint(x: 0.41859*width, y: 0.72332*height), control2: CGPoint(x: 0.42184*width, y: 0.71442*height))
        path.addCurve(to: CGPoint(x: 0.42695*width, y: 0.67368*height), control1: CGPoint(x: 0.4257*width, y: 0.69845*height), control2: CGPoint(x: 0.42641*width, y: 0.69104*height))
        path.addCurve(to: CGPoint(x: 0.43594*width, y: 0.63338*height), control1: CGPoint(x: 0.42734*width, y: 0.65708*height), control2: CGPoint(x: 0.42957*width, y: 0.64755*height))
        path.addCurve(to: CGPoint(x: 0.45004*width, y: 0.61138*height), control1: CGPoint(x: 0.44*width, y: 0.62435*height), control2: CGPoint(x: 0.44324*width, y: 0.61927*height))
        path.addCurve(to: CGPoint(x: 0.49875*width, y: 0.52781*height), control1: CGPoint(x: 0.45789*width, y: 0.60223*height), control2: CGPoint(x: 0.50062*width, y: 0.52878*height))
        path.addCurve(to: CGPoint(x: 0.49246*width, y: 0.52807*height), control1: CGPoint(x: 0.4977*width, y: 0.52726*height), control2: CGPoint(x: 0.49645*width, y: 0.52732*height))
        path.addCurve(to: CGPoint(x: 0.4332*width, y: 0.53461*height), control1: CGPoint(x: 0.46457*width, y: 0.53364*height), control2: CGPoint(x: 0.45496*width, y: 0.53467*height))
        path.addCurve(to: CGPoint(x: 0.4073*width, y: 0.53315*height), control1: CGPoint(x: 0.41828*width, y: 0.53457*height), control2: CGPoint(x: 0.41555*width, y: 0.53445*height))
        path.addCurve(to: CGPoint(x: 0.37551*width, y: 0.52494*height), control1: CGPoint(x: 0.39602*width, y: 0.53137*height), control2: CGPoint(x: 0.3841*width, y: 0.5283*height))
        path.addCurve(to: CGPoint(x: 0.34332*width, y: 0.50682*height), control1: CGPoint(x: 0.36613*width, y: 0.52131*height), control2: CGPoint(x: 0.35098*width, y: 0.51277*height))
        path.addCurve(to: CGPoint(x: 0.3218*width, y: 0.4861*height), control1: CGPoint(x: 0.33633*width, y: 0.5014*height), control2: CGPoint(x: 0.32586*width, y: 0.49134*height))
        path.addCurve(to: CGPoint(x: 0.31637*width, y: 0.48421*height), control1: CGPoint(x: 0.3193*width, y: 0.48286*height), control2: CGPoint(x: 0.3173*width, y: 0.48221*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.31637*width, y: 0.48421*height))
        return path
    }
}

struct BackLeftLegShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.67363*width, y: 0.48655*height))
        path.addCurve(to: CGPoint(x: 0.57234*width, y: 0.53235*height), control1: CGPoint(x: 0.65668*width, y: 0.51499*height), control2: CGPoint(x: 0.62344*width, y: 0.53005*height))
        path.addCurve(to: CGPoint(x: 0.51012*width, y: 0.52877*height), control1: CGPoint(x: 0.55242*width, y: 0.53326*height), control2: CGPoint(x: 0.52383*width, y: 0.5316*height))
        path.addCurve(to: CGPoint(x: 0.50246*width, y: 0.52795*height), control1: CGPoint(x: 0.50566*width, y: 0.52785*height), control2: CGPoint(x: 0.5032*width, y: 0.52759*height))
        path.addCurve(to: CGPoint(x: 0.50938*width, y: 0.55351*height), control1: CGPoint(x: 0.50113*width, y: 0.52865*height), control2: CGPoint(x: 0.50453*width, y: 0.54097*height))
        path.addCurve(to: CGPoint(x: 0.54035*width, y: 0.60545*height), control1: CGPoint(x: 0.51527*width, y: 0.56844*height), control2: CGPoint(x: 0.52766*width, y: 0.58934*height))
        path.addCurve(to: CGPoint(x: 0.5668*width, y: 0.65397*height), control1: CGPoint(x: 0.55492*width, y: 0.62404*height), control2: CGPoint(x: 0.56172*width, y: 0.63645*height))
        path.addCurve(to: CGPoint(x: 0.56926*width, y: 0.67989*height), control1: CGPoint(x: 0.56875*width, y: 0.66056*height), control2: CGPoint(x: 0.56906*width, y: 0.66437*height))
        path.addCurve(to: CGPoint(x: 0.57598*width, y: 0.71706*height), control1: CGPoint(x: 0.56957*width, y: 0.69944*height), control2: CGPoint(x: 0.57008*width, y: 0.7026*height))
        path.addCurve(to: CGPoint(x: 0.58937*width, y: 0.77789*height), control1: CGPoint(x: 0.58102*width, y: 0.72949*height), control2: CGPoint(x: 0.58703*width, y: 0.75659*height))
        path.addCurve(to: CGPoint(x: 0.61707*width, y: 0.84629*height), control1: CGPoint(x: 0.59195*width, y: 0.80098*height), control2: CGPoint(x: 0.59941*width, y: 0.8193*height))
        path.addCurve(to: CGPoint(x: 0.64121*width, y: 0.902*height), control1: CGPoint(x: 0.62832*width, y: 0.86342*height), control2: CGPoint(x: 0.63668*width, y: 0.88261*height))
        path.addCurve(to: CGPoint(x: 0.64359*width, y: 0.94071*height), control1: CGPoint(x: 0.64328*width, y: 0.91089*height), control2: CGPoint(x: 0.64348*width, y: 0.91441*height))
        path.addCurve(to: CGPoint(x: 0.64504*width, y: 0.97434*height), control1: CGPoint(x: 0.64367*width, y: 0.95962*height), control2: CGPoint(x: 0.64418*width, y: 0.97123*height))
        path.addCurve(to: CGPoint(x: 0.65492*width, y: 0.98855*height), control1: CGPoint(x: 0.64656*width, y: 0.98024*height), control2: CGPoint(x: 0.65051*width, y: 0.9858*height))
        path.addCurve(to: CGPoint(x: 0.6759*width, y: 0.99384*height), control1: CGPoint(x: 0.65949*width, y: 0.99121*height), control2: CGPoint(x: 0.66836*width, y: 0.99351*height))
        path.addCurve(to: CGPoint(x: 0.69363*width, y: 0.9916*height), control1: CGPoint(x: 0.68113*width, y: 0.99406*height), control2: CGPoint(x: 0.68301*width, y: 0.99384*height))
        path.addCurve(to: CGPoint(x: 0.74102*width, y: 0.97847*height), control1: CGPoint(x: 0.71109*width, y: 0.98789*height), control2: CGPoint(x: 0.7241*width, y: 0.98431*height))
        path.addCurve(to: CGPoint(x: 0.79801*width, y: 0.95121*height), control1: CGPoint(x: 0.76055*width, y: 0.97178*height), control2: CGPoint(x: 0.78602*width, y: 0.95957*height))
        path.addCurve(to: CGPoint(x: 0.80066*width, y: 0.9354*height), control1: CGPoint(x: 0.80945*width, y: 0.94318*height), control2: CGPoint(x: 0.80996*width, y: 0.94039*height))
        path.addCurve(to: CGPoint(x: 0.77199*width, y: 0.92989*height), control1: CGPoint(x: 0.79344*width, y: 0.9316*height), control2: CGPoint(x: 0.78664*width, y: 0.93028*height))
        path.addCurve(to: CGPoint(x: 0.74152*width, y: 0.93219*height), control1: CGPoint(x: 0.76082*width, y: 0.92957*height), control2: CGPoint(x: 0.7498*width, y: 0.93044*height))
        path.addCurve(to: CGPoint(x: 0.72492*width, y: 0.93188*height), control1: CGPoint(x: 0.73656*width, y: 0.93327*height), control2: CGPoint(x: 0.72883*width, y: 0.93317*height))
        path.addCurve(to: CGPoint(x: 0.71871*width, y: 0.91528*height), control1: CGPoint(x: 0.7184*width, y: 0.92985*height), control2: CGPoint(x: 0.71801*width, y: 0.92877*height))
        path.addCurve(to: CGPoint(x: 0.72883*width, y: 0.83173*height), control1: CGPoint(x: 0.71945*width, y: 0.90259*height), control2: CGPoint(x: 0.72699*width, y: 0.84039*height))
        path.addCurve(to: CGPoint(x: 0.72895*width, y: 0.79451*height), control1: CGPoint(x: 0.73051*width, y: 0.8245*height), control2: CGPoint(x: 0.73051*width, y: 0.80157*height))
        path.addCurve(to: CGPoint(x: 0.71223*width, y: 0.75439*height), control1: CGPoint(x: 0.72574*width, y: 0.78015*height), control2: CGPoint(x: 0.7207*width, y: 0.76799*height))
        path.addCurve(to: CGPoint(x: 0.70047*width, y: 0.72837*height), control1: CGPoint(x: 0.70633*width, y: 0.74502*height), control2: CGPoint(x: 0.70406*width, y: 0.73983*height))
        path.addCurve(to: CGPoint(x: 0.69469*width, y: 0.63517*height), control1: CGPoint(x: 0.69559*width, y: 0.71293*height), control2: CGPoint(x: 0.69551*width, y: 0.71063*height))
        path.addCurve(to: CGPoint(x: 0.69055*width, y: 0.53583*height), control1: CGPoint(x: 0.69395*width, y: 0.56726*height), control2: CGPoint(x: 0.69355*width, y: 0.55719*height))
        path.addCurve(to: CGPoint(x: 0.67887*width, y: 0.48173*height), control1: CGPoint(x: 0.68754*width, y: 0.51493*height), control2: CGPoint(x: 0.68113*width, y: 0.48511*height))
        path.addLine(to: CGPoint(x: 0.67754*width, y: 0.47982*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.67363*width, y: 0.48655*height))
        return path
    }
}

// MARK: - BabyFront

struct BabyHeadShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.47289*width, y: 0.01419*height))
        path.addCurve(to: CGPoint(x: 0.38648*width, y: 0.03043*height), control1: CGPoint(x: 0.44344*width, y: 0.01544*height), control2: CGPoint(x: 0.41348*width, y: 0.02108*height))
        path.addCurve(to: CGPoint(x: 0.35879*width, y: 0.04172*height), control1: CGPoint(x: 0.37602*width, y: 0.03398*height), control2: CGPoint(x: 0.36391*width, y: 0.03897*height))
        path.addCurve(to: CGPoint(x: 0.33324*width, y: 0.05956*height), control1: CGPoint(x: 0.35457*width, y: 0.04407*height), control2: CGPoint(x: 0.33867*width, y: 0.05506*height))
        path.addCurve(to: CGPoint(x: 0.30594*width, y: 0.09194*height), control1: CGPoint(x: 0.32574*width, y: 0.06563*height), control2: CGPoint(x: 0.31043*width, y: 0.0837*height))
        path.addCurve(to: CGPoint(x: 0.29723*width, y: 0.12721*height), control1: CGPoint(x: 0.29844*width, y: 0.10533*height), control2: CGPoint(x: 0.2973*width, y: 0.11013*height))
        path.addCurve(to: CGPoint(x: 0.29793*width, y: 0.14663*height), control1: CGPoint(x: 0.29711*width, y: 0.13552*height), control2: CGPoint(x: 0.2975*width, y: 0.14423*height))
        path.addLine(to: CGPoint(x: 0.29875*width, y: 0.151*height))
        path.addLine(to: CGPoint(x: 0.29473*width, y: 0.15039*height))
        path.addCurve(to: CGPoint(x: 0.28727*width, y: 0.15093*height), control1: CGPoint(x: 0.29137*width, y: 0.14983*height), control2: CGPoint(x: 0.29012*width, y: 0.14994*height))
        path.addCurve(to: CGPoint(x: 0.27852*width, y: 0.17084*height), control1: CGPoint(x: 0.27813*width, y: 0.15413*height), control2: CGPoint(x: 0.27566*width, y: 0.15973*height))
        path.addCurve(to: CGPoint(x: 0.2973*width, y: 0.20656*height), control1: CGPoint(x: 0.28129*width, y: 0.18197*height), control2: CGPoint(x: 0.29258*width, y: 0.2036*height))
        path.addCurve(to: CGPoint(x: 0.31023*width, y: 0.20957*height), control1: CGPoint(x: 0.29988*width, y: 0.20821*height), control2: CGPoint(x: 0.30562*width, y: 0.20957*height))
        path.addCurve(to: CGPoint(x: 0.32062*width, y: 0.21583*height), control1: CGPoint(x: 0.31457*width, y: 0.20957*height), control2: CGPoint(x: 0.3198*width, y: 0.21275*height))
        path.addCurve(to: CGPoint(x: 0.33684*width, y: 0.24059*height), control1: CGPoint(x: 0.32227*width, y: 0.22216*height), control2: CGPoint(x: 0.32953*width, y: 0.23322*height))
        path.addCurve(to: CGPoint(x: 0.37543*width, y: 0.27391*height), control1: CGPoint(x: 0.34359*width, y: 0.24736*height), control2: CGPoint(x: 0.36719*width, y: 0.26777*height))
        path.addCurve(to: CGPoint(x: 0.38012*width, y: 0.27944*height), control1: CGPoint(x: 0.37734*width, y: 0.27532*height), control2: CGPoint(x: 0.37941*width, y: 0.27784*height))
        path.addCurve(to: CGPoint(x: 0.38754*width, y: 0.28417*height), control1: CGPoint(x: 0.38125*width, y: 0.28219*height), control2: CGPoint(x: 0.38176*width, y: 0.28252*height))
        path.addCurve(to: CGPoint(x: 0.51684*width, y: 0.30125*height), control1: CGPoint(x: 0.43113*width, y: 0.2969*height), control2: CGPoint(x: 0.47855*width, y: 0.30316*height))
        path.addCurve(to: CGPoint(x: 0.58848*width, y: 0.28958*height), control1: CGPoint(x: 0.54352*width, y: 0.29984*height), control2: CGPoint(x: 0.56414*width, y: 0.29652*height))
        path.addCurve(to: CGPoint(x: 0.60602*width, y: 0.28238*height), control1: CGPoint(x: 0.60172*width, y: 0.28577*height), control2: CGPoint(x: 0.60285*width, y: 0.28534*height))
        path.addCurve(to: CGPoint(x: 0.61687*width, y: 0.2741*height), control1: CGPoint(x: 0.60777*width, y: 0.28073*height), control2: CGPoint(x: 0.6127*width, y: 0.27697*height))
        path.addCurve(to: CGPoint(x: 0.64582*width, y: 0.2508*height), control1: CGPoint(x: 0.62727*width, y: 0.2669*height), control2: CGPoint(x: 0.63988*width, y: 0.25675*height))
        path.addCurve(to: CGPoint(x: 0.67016*width, y: 0.21148*height), control1: CGPoint(x: 0.65629*width, y: 0.24035*height), control2: CGPoint(x: 0.67016*width, y: 0.21786*height))
        path.addCurve(to: CGPoint(x: 0.67766*width, y: 0.20957*height), control1: CGPoint(x: 0.67016*width, y: 0.21061*height), control2: CGPoint(x: 0.6716*width, y: 0.21023*height))
        path.addCurve(to: CGPoint(x: 0.69582*width, y: 0.19807*height), control1: CGPoint(x: 0.68801*width, y: 0.2084*height), control2: CGPoint(x: 0.69148*width, y: 0.20625*height))
        path.addCurve(to: CGPoint(x: 0.70055*width, y: 0.18806*height), control1: CGPoint(x: 0.69754*width, y: 0.19482*height), control2: CGPoint(x: 0.69973*width, y: 0.19028*height))
        path.addCurve(to: CGPoint(x: 0.70566*width, y: 0.17545*height), control1: CGPoint(x: 0.70137*width, y: 0.18583*height), control2: CGPoint(x: 0.70371*width, y: 0.18018*height))
        path.addCurve(to: CGPoint(x: 0.70875*width, y: 0.16267*height), control1: CGPoint(x: 0.70875*width, y: 0.16832*height), control2: CGPoint(x: 0.70926*width, y: 0.16611*height))
        path.addCurve(to: CGPoint(x: 0.69211*width, y: 0.15192*height), control1: CGPoint(x: 0.70781*width, y: 0.15524*height), control2: CGPoint(x: 0.70195*width, y: 0.1515*height))
        path.addLine(to: CGPoint(x: 0.68738*width, y: 0.15211*height))
        path.addLine(to: CGPoint(x: 0.68719*width, y: 0.12935*height))
        path.addCurve(to: CGPoint(x: 0.6841*width, y: 0.09895*height), control1: CGPoint(x: 0.68688*width, y: 0.1073*height), control2: CGPoint(x: 0.6868*width, y: 0.10639*height))
        path.addCurve(to: CGPoint(x: 0.66625*width, y: 0.06784*height), control1: CGPoint(x: 0.68063*width, y: 0.08923*height), control2: CGPoint(x: 0.67281*width, y: 0.07558*height))
        path.addCurve(to: CGPoint(x: 0.63969*width, y: 0.04565*height), control1: CGPoint(x: 0.66*width, y: 0.06041*height), control2: CGPoint(x: 0.6484*width, y: 0.05076*height))
        path.addCurve(to: CGPoint(x: 0.55152*width, y: 0.01857*height), control1: CGPoint(x: 0.6173*width, y: 0.03269*height), control2: CGPoint(x: 0.58477*width, y: 0.02268*height))
        path.addCurve(to: CGPoint(x: 0.50184*width, y: 0.01414*height), control1: CGPoint(x: 0.53512*width, y: 0.01647*height), control2: CGPoint(x: 0.51559*width, y: 0.01475*height))
        path.addCurve(to: CGPoint(x: 0.47289*width, y: 0.01419*height), control1: CGPoint(x: 0.48777*width, y: 0.01353*height), control2: CGPoint(x: 0.48859*width, y: 0.01353*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.47289*width, y: 0.01419*height))
        return path
    }
}

struct BabyMainBodyShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.37355*width, y: 0.29132*height))
        path.addCurve(to: CGPoint(x: 0.34719*width, y: 0.30151*height), control1: CGPoint(x: 0.36559*width, y: 0.29612*height), control2: CGPoint(x: 0.35598*width, y: 0.29989*height))
        path.addCurve(to: CGPoint(x: 0.3423*width, y: 0.30389*height), control1: CGPoint(x: 0.34238*width, y: 0.30245*height), control2: CGPoint(x: 0.34176*width, y: 0.30276*height))
        path.addCurve(to: CGPoint(x: 0.34406*width, y: 0.31528*height), control1: CGPoint(x: 0.34262*width, y: 0.30459*height), control2: CGPoint(x: 0.34344*width, y: 0.30972*height))
        path.addCurve(to: CGPoint(x: 0.31008*width, y: 0.41263*height), control1: CGPoint(x: 0.34781*width, y: 0.34596*height), control2: CGPoint(x: 0.33613*width, y: 0.37933*height))
        path.addLine(to: CGPoint(x: 0.30527*width, y: 0.4187*height))
        path.addLine(to: CGPoint(x: 0.30477*width, y: 0.44891*height))
        path.addCurve(to: CGPoint(x: 0.30047*width, y: 0.5092*height), control1: CGPoint(x: 0.30434*width, y: 0.47854*height), control2: CGPoint(x: 0.30363*width, y: 0.48767*height))
        path.addCurve(to: CGPoint(x: 0.28531*width, y: 0.57523*height), control1: CGPoint(x: 0.29734*width, y: 0.5301*height), control2: CGPoint(x: 0.29098*width, y: 0.55803*height))
        path.addCurve(to: CGPoint(x: 0.28324*width, y: 0.58276*height), control1: CGPoint(x: 0.28418*width, y: 0.57888*height), control2: CGPoint(x: 0.28324*width, y: 0.58224*height))
        path.addCurve(to: CGPoint(x: 0.29211*width, y: 0.58518*height), control1: CGPoint(x: 0.28324*width, y: 0.58344*height), control2: CGPoint(x: 0.28594*width, y: 0.5842*height))
        path.addCurve(to: CGPoint(x: 0.37156*width, y: 0.61029*height), control1: CGPoint(x: 0.31879*width, y: 0.58956*height), control2: CGPoint(x: 0.34805*width, y: 0.59883*height))
        path.addCurve(to: CGPoint(x: 0.41223*width, y: 0.63594*height), control1: CGPoint(x: 0.38254*width, y: 0.61568*height), control2: CGPoint(x: 0.40289*width, y: 0.62851*height))
        path.addCurve(to: CGPoint(x: 0.4216*width, y: 0.64272*height), control1: CGPoint(x: 0.41672*width, y: 0.63959*height), control2: CGPoint(x: 0.42098*width, y: 0.64258*height))
        path.addCurve(to: CGPoint(x: 0.42465*width, y: 0.63778*height), control1: CGPoint(x: 0.42223*width, y: 0.64277*height), control2: CGPoint(x: 0.42359*width, y: 0.64072*height))
        path.addCurve(to: CGPoint(x: 0.45309*width, y: 0.61109*height), control1: CGPoint(x: 0.42832*width, y: 0.62806*height), control2: CGPoint(x: 0.44023*width, y: 0.61693*height))
        path.addCurve(to: CGPoint(x: 0.53711*width, y: 0.6066*height), control1: CGPoint(x: 0.47742*width, y: 0.60003*height), control2: CGPoint(x: 0.51109*width, y: 0.59822*height))
        path.addCurve(to: CGPoint(x: 0.57754*width, y: 0.63877*height), control1: CGPoint(x: 0.55906*width, y: 0.61368*height), control2: CGPoint(x: 0.57305*width, y: 0.62481*height))
        path.addCurve(to: CGPoint(x: 0.58133*width, y: 0.64559*height), control1: CGPoint(x: 0.57984*width, y: 0.64615*height), control2: CGPoint(x: 0.57973*width, y: 0.64604*height))
        path.addCurve(to: CGPoint(x: 0.59102*width, y: 0.63895*height), control1: CGPoint(x: 0.58203*width, y: 0.6454*height), control2: CGPoint(x: 0.58645*width, y: 0.64239*height))
        path.addCurve(to: CGPoint(x: 0.68961*width, y: 0.58662*height), control1: CGPoint(x: 0.61602*width, y: 0.62013*height), control2: CGPoint(x: 0.65414*width, y: 0.59984*height))
        path.addCurve(to: CGPoint(x: 0.70297*width, y: 0.58043*height), control1: CGPoint(x: 0.69797*width, y: 0.58344*height), control2: CGPoint(x: 0.70254*width, y: 0.58137*height))
        path.addCurve(to: CGPoint(x: 0.70086*width, y: 0.5701*height), control1: CGPoint(x: 0.70328*width, y: 0.57968*height), control2: CGPoint(x: 0.70234*width, y: 0.57504*height))
        path.addCurve(to: CGPoint(x: 0.68699*width, y: 0.50513*height), control1: CGPoint(x: 0.69535*width, y: 0.55196*height), control2: CGPoint(x: 0.69023*width, y: 0.52791*height))
        path.addCurve(to: CGPoint(x: 0.68656*width, y: 0.42388*height), control1: CGPoint(x: 0.68469*width, y: 0.48842*height), control2: CGPoint(x: 0.68437*width, y: 0.44016*height))
        path.addLine(to: CGPoint(x: 0.68801*width, y: 0.41305*height))
        path.addLine(to: CGPoint(x: 0.68531*width, y: 0.41136*height))
        path.addCurve(to: CGPoint(x: 0.65844*width, y: 0.38526*height), control1: CGPoint(x: 0.68008*width, y: 0.40799*height), control2: CGPoint(x: 0.66543*width, y: 0.39385*height))
        path.addCurve(to: CGPoint(x: 0.63734*width, y: 0.3474*height), control1: CGPoint(x: 0.6477*width, y: 0.37206*height), control2: CGPoint(x: 0.6416*width, y: 0.36109*height))
        path.addCurve(to: CGPoint(x: 0.63504*width, y: 0.32643*height), control1: CGPoint(x: 0.63547*width, y: 0.34144*height), control2: CGPoint(x: 0.63504*width, y: 0.33782*height))
        path.addCurve(to: CGPoint(x: 0.63578*width, y: 0.30796*height), control1: CGPoint(x: 0.63492*width, y: 0.31885*height), control2: CGPoint(x: 0.63535*width, y: 0.31052*height))
        path.addLine(to: CGPoint(x: 0.6366*width, y: 0.30328*height))
        path.addLine(to: CGPoint(x: 0.62867*width, y: 0.30113*height))
        path.addCurve(to: CGPoint(x: 0.60828*width, y: 0.292*height), control1: CGPoint(x: 0.61883*width, y: 0.2985*height), control2: CGPoint(x: 0.61246*width, y: 0.29563*height))
        path.addCurve(to: CGPoint(x: 0.60391*width, y: 0.28918*height), control1: CGPoint(x: 0.60648*width, y: 0.29043*height), control2: CGPoint(x: 0.60453*width, y: 0.28918*height))
        path.addCurve(to: CGPoint(x: 0.59145*width, y: 0.29262*height), control1: CGPoint(x: 0.60324*width, y: 0.28918*height), control2: CGPoint(x: 0.59762*width, y: 0.29076*height))
        path.addCurve(to: CGPoint(x: 0.50219*width, y: 0.30546*height), control1: CGPoint(x: 0.56219*width, y: 0.30158*height), control2: CGPoint(x: 0.53543*width, y: 0.30539*height))
        path.addCurve(to: CGPoint(x: 0.39516*width, y: 0.29005*height), control1: CGPoint(x: 0.46738*width, y: 0.30546*height), control2: CGPoint(x: 0.43102*width, y: 0.30019*height))
        path.addCurve(to: CGPoint(x: 0.38211*width, y: 0.28673*height), control1: CGPoint(x: 0.38859*width, y: 0.28819*height), control2: CGPoint(x: 0.38273*width, y: 0.28669*height))
        path.addCurve(to: CGPoint(x: 0.37355*width, y: 0.29132*height), control1: CGPoint(x: 0.38148*width, y: 0.2868*height), control2: CGPoint(x: 0.37762*width, y: 0.2888*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.37355*width, y: 0.29132*height))
        return path
    }
}

struct BabyRightHandShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.32523*width, y: 0.30382*height))
        path.addCurve(to: CGPoint(x: 0.30207*width, y: 0.30901*height), control1: CGPoint(x: 0.32098*width, y: 0.30462*height), control2: CGPoint(x: 0.31059*width, y: 0.30691*height))
        path.addCurve(to: CGPoint(x: 0.20156*width, y: 0.34756*height), control1: CGPoint(x: 0.25895*width, y: 0.3197*height), control2: CGPoint(x: 0.22859*width, y: 0.33131*height))
        path.addCurve(to: CGPoint(x: 0.16812*width, y: 0.37271*height), control1: CGPoint(x: 0.18703*width, y: 0.35631*height), control2: CGPoint(x: 0.18059*width, y: 0.36115*height))
        path.addCurve(to: CGPoint(x: 0.08375*width, y: 0.48777*height), control1: CGPoint(x: 0.12543*width, y: 0.41212*height), control2: CGPoint(x: 0.09828*width, y: 0.4491*height))
        path.addCurve(to: CGPoint(x: 0.07129*width, y: 0.53934*height), control1: CGPoint(x: 0.07793*width, y: 0.50304*height), control2: CGPoint(x: 0.07148*width, y: 0.5298*height))
        path.addLine(to: CGPoint(x: 0.07117*width, y: 0.54648*height))
        path.addLine(to: CGPoint(x: 0.08156*width, y: 0.54971*height))
        path.addCurve(to: CGPoint(x: 0.14234*width, y: 0.55859*height), control1: CGPoint(x: 0.10102*width, y: 0.55574*height), control2: CGPoint(x: 0.12055*width, y: 0.55859*height))
        path.addCurve(to: CGPoint(x: 0.17559*width, y: 0.55642*height), control1: CGPoint(x: 0.15242*width, y: 0.55859*height), control2: CGPoint(x: 0.17*width, y: 0.5574*height))
        path.addCurve(to: CGPoint(x: 0.18227*width, y: 0.54804*height), control1: CGPoint(x: 0.17809*width, y: 0.55593*height), control2: CGPoint(x: 0.18039*width, y: 0.55307*height))
        path.addCurve(to: CGPoint(x: 0.22227*width, y: 0.4804*height), control1: CGPoint(x: 0.19047*width, y: 0.52587*height), control2: CGPoint(x: 0.20582*width, y: 0.49988*height))
        path.addCurve(to: CGPoint(x: 0.28813*width, y: 0.42471*height), control1: CGPoint(x: 0.24066*width, y: 0.4586*height), control2: CGPoint(x: 0.25914*width, y: 0.4429*height))
        path.addCurve(to: CGPoint(x: 0.30602*width, y: 0.40882*height), control1: CGPoint(x: 0.29789*width, y: 0.41858*height), control2: CGPoint(x: 0.29883*width, y: 0.41776*height))
        path.addCurve(to: CGPoint(x: 0.33563*width, y: 0.34801*height), control1: CGPoint(x: 0.32199*width, y: 0.38896*height), control2: CGPoint(x: 0.33055*width, y: 0.3714*height))
        path.addCurve(to: CGPoint(x: 0.3377*width, y: 0.32218*height), control1: CGPoint(x: 0.33719*width, y: 0.34036*height), control2: CGPoint(x: 0.3377*width, y: 0.33465*height))
        path.addCurve(to: CGPoint(x: 0.33707*width, y: 0.30417*height), control1: CGPoint(x: 0.3377*width, y: 0.31337*height), control2: CGPoint(x: 0.33738*width, y: 0.30525*height))
        path.addCurve(to: CGPoint(x: 0.32523*width, y: 0.30382*height), control1: CGPoint(x: 0.33625*width, y: 0.30188*height), control2: CGPoint(x: 0.33582*width, y: 0.30188*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.32523*width, y: 0.30382*height))
        return path
    }
}

struct BabyRightPalmShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.07062*width, y: 0.55257*height))
        path.addCurve(to: CGPoint(x: 0.07062*width, y: 0.55572*height), control1: CGPoint(x: 0.07031*width, y: 0.55311*height), control2: CGPoint(x: 0.07031*width, y: 0.55455*height))
        path.addCurve(to: CGPoint(x: 0.06574*width, y: 0.5681*height), control1: CGPoint(x: 0.07164*width, y: 0.55932*height), control2: CGPoint(x: 0.06949*width, y: 0.56464*height))
        path.addCurve(to: CGPoint(x: 0.06016*width, y: 0.57368*height), control1: CGPoint(x: 0.06379*width, y: 0.56977*height), control2: CGPoint(x: 0.06133*width, y: 0.57231*height))
        path.addCurve(to: CGPoint(x: 0.05199*width, y: 0.58055*height), control1: CGPoint(x: 0.05902*width, y: 0.57497*height), control2: CGPoint(x: 0.05543*width, y: 0.57808*height))
        path.addCurve(to: CGPoint(x: 0.02738*width, y: 0.61138*height), control1: CGPoint(x: 0.03949*width, y: 0.58977*height), control2: CGPoint(x: 0.03113*width, y: 0.60029*height))
        path.addCurve(to: CGPoint(x: 0.02273*width, y: 0.63684*height), control1: CGPoint(x: 0.02523*width, y: 0.61756*height), control2: CGPoint(x: 0.02273*width, y: 0.63145*height))
        path.addCurve(to: CGPoint(x: 0.0332*width, y: 0.64759*height), control1: CGPoint(x: 0.02273*width, y: 0.64383*height), control2: CGPoint(x: 0.02637*width, y: 0.64759*height))
        path.addCurve(to: CGPoint(x: 0.05957*width, y: 0.63213*height), control1: CGPoint(x: 0.03949*width, y: 0.64759*height), control2: CGPoint(x: 0.05211*width, y: 0.64018*height))
        path.addCurve(to: CGPoint(x: 0.06164*width, y: 0.63058*height), control1: CGPoint(x: 0.0609*width, y: 0.63058*height), control2: CGPoint(x: 0.06191*width, y: 0.62989*height))
        path.addCurve(to: CGPoint(x: 0.05582*width, y: 0.65658*height), control1: CGPoint(x: 0.05883*width, y: 0.63775*height), control2: CGPoint(x: 0.05582*width, y: 0.65131*height))
        path.addCurve(to: CGPoint(x: 0.06699*width, y: 0.66987*height), control1: CGPoint(x: 0.05582*width, y: 0.66406*height), control2: CGPoint(x: 0.06078*width, y: 0.66987*height))
        path.addCurve(to: CGPoint(x: 0.07363*width, y: 0.66747*height), control1: CGPoint(x: 0.06926*width, y: 0.66987*height), control2: CGPoint(x: 0.07102*width, y: 0.66922*height))
        path.addLine(to: CGPoint(x: 0.07723*width, y: 0.66512*height))
        path.addLine(to: CGPoint(x: 0.07859*width, y: 0.66933*height))
        path.addCurve(to: CGPoint(x: 0.08242*width, y: 0.67484*height), control1: CGPoint(x: 0.07949*width, y: 0.6726*height), control2: CGPoint(x: 0.08043*width, y: 0.6739*height))
        path.addCurve(to: CGPoint(x: 0.10227*width, y: 0.66995*height), control1: CGPoint(x: 0.08859*width, y: 0.67776*height), control2: CGPoint(x: 0.09801*width, y: 0.67545*height))
        path.addLine(to: CGPoint(x: 0.10473*width, y: 0.66679*height))
        path.addLine(to: CGPoint(x: 0.10711*width, y: 0.67025*height))
        path.addCurve(to: CGPoint(x: 0.11125*width, y: 0.67491*height), control1: CGPoint(x: 0.10836*width, y: 0.67218*height), control2: CGPoint(x: 0.11023*width, y: 0.67423*height))
        path.addCurve(to: CGPoint(x: 0.12809*width, y: 0.66804*height), control1: CGPoint(x: 0.11578*width, y: 0.67788*height), control2: CGPoint(x: 0.12273*width, y: 0.67508*height))
        path.addCurve(to: CGPoint(x: 0.13184*width, y: 0.66524*height), control1: CGPoint(x: 0.13059*width, y: 0.66474*height), control2: CGPoint(x: 0.13129*width, y: 0.66425*height))
        path.addCurve(to: CGPoint(x: 0.13781*width, y: 0.67199*height), control1: CGPoint(x: 0.1343*width, y: 0.66964*height), control2: CGPoint(x: 0.13555*width, y: 0.67093*height))
        path.addCurve(to: CGPoint(x: 0.15031*width, y: 0.66846*height), control1: CGPoint(x: 0.14184*width, y: 0.67378*height), control2: CGPoint(x: 0.14504*width, y: 0.67291*height))
        path.addCurve(to: CGPoint(x: 0.17152*width, y: 0.63707*height), control1: CGPoint(x: 0.16078*width, y: 0.65966*height), control2: CGPoint(x: 0.16512*width, y: 0.65324*height))
        path.addCurve(to: CGPoint(x: 0.17836*width, y: 0.59373*height), control1: CGPoint(x: 0.17742*width, y: 0.62227*height), control2: CGPoint(x: 0.17824*width, y: 0.61707*height))
        path.addCurve(to: CGPoint(x: 0.17969*width, y: 0.5665*height), control1: CGPoint(x: 0.17844*width, y: 0.58196*height), control2: CGPoint(x: 0.17906*width, y: 0.56972*height))
        path.addCurve(to: CGPoint(x: 0.17988*width, y: 0.56005*height), control1: CGPoint(x: 0.18031*width, y: 0.56321*height), control2: CGPoint(x: 0.18043*width, y: 0.56036*height))
        path.addCurve(to: CGPoint(x: 0.17246*width, y: 0.56055*height), control1: CGPoint(x: 0.17949*width, y: 0.55982*height), control2: CGPoint(x: 0.17617*width, y: 0.55998*height))
        path.addCurve(to: CGPoint(x: 0.10133*width, y: 0.55925*height), control1: CGPoint(x: 0.1498*width, y: 0.56389*height), control2: CGPoint(x: 0.12281*width, y: 0.56346*height))
        path.addCurve(to: CGPoint(x: 0.08332*width, y: 0.55466*height), control1: CGPoint(x: 0.09707*width, y: 0.55845*height), control2: CGPoint(x: 0.08902*width, y: 0.55641*height))
        path.addCurve(to: CGPoint(x: 0.07227*width, y: 0.55163*height), control1: CGPoint(x: 0.07773*width, y: 0.55299*height), control2: CGPoint(x: 0.07277*width, y: 0.55163*height))
        path.addCurve(to: CGPoint(x: 0.07062*width, y: 0.55257*height), control1: CGPoint(x: 0.07176*width, y: 0.55163*height), control2: CGPoint(x: 0.07102*width, y: 0.55208*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.07062*width, y: 0.55257*height))
        return path
    }
}

struct BabyLeftHandShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.63891*width, y: 0.30469*height))
        path.addCurve(to: CGPoint(x: 0.63996*width, y: 0.33877*height), control1: CGPoint(x: 0.63758*width, y: 0.30862*height), control2: CGPoint(x: 0.6382*width, y: 0.33074*height))
        path.addCurve(to: CGPoint(x: 0.71285*width, y: 0.42983*height), control1: CGPoint(x: 0.64742*width, y: 0.37245*height), control2: CGPoint(x: 0.67047*width, y: 0.40129*height))
        path.addCurve(to: CGPoint(x: 0.79898*width, y: 0.52243*height), control1: CGPoint(x: 0.74926*width, y: 0.45436*height), control2: CGPoint(x: 0.77875*width, y: 0.48608*height))
        path.addCurve(to: CGPoint(x: 0.81812*width, y: 0.56514*height), control1: CGPoint(x: 0.80555*width, y: 0.53424*height), control2: CGPoint(x: 0.81812*width, y: 0.56229*height))
        path.addCurve(to: CGPoint(x: 0.83723*width, y: 0.56687*height), control1: CGPoint(x: 0.81812*width, y: 0.5665*height), control2: CGPoint(x: 0.82246*width, y: 0.56687*height))
        path.addCurve(to: CGPoint(x: 0.90793*width, y: 0.55986*height), control1: CGPoint(x: 0.86109*width, y: 0.56687*height), control2: CGPoint(x: 0.8859*width, y: 0.56439*height))
        path.addCurve(to: CGPoint(x: 0.92555*width, y: 0.55427*height), control1: CGPoint(x: 0.92484*width, y: 0.55632*height), control2: CGPoint(x: 0.92641*width, y: 0.55581*height))
        path.addCurve(to: CGPoint(x: 0.92297*width, y: 0.54058*height), control1: CGPoint(x: 0.92523*width, y: 0.55352*height), control2: CGPoint(x: 0.92398*width, y: 0.54737*height))
        path.addCurve(to: CGPoint(x: 0.85848*width, y: 0.408*height), control1: CGPoint(x: 0.91445*width, y: 0.48849*height), control2: CGPoint(x: 0.89367*width, y: 0.4458*height))
        path.addCurve(to: CGPoint(x: 0.78957*width, y: 0.35081*height), control1: CGPoint(x: 0.83367*width, y: 0.38127*height), control2: CGPoint(x: 0.81625*width, y: 0.36686*height))
        path.addCurve(to: CGPoint(x: 0.65125*width, y: 0.30401*height), control1: CGPoint(x: 0.75082*width, y: 0.32756*height), control2: CGPoint(x: 0.70535*width, y: 0.31215*height))
        path.addCurve(to: CGPoint(x: 0.63891*width, y: 0.30469*height), control1: CGPoint(x: 0.64027*width, y: 0.30235*height), control2: CGPoint(x: 0.63984*width, y: 0.30235*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.63891*width, y: 0.30469*height))
        return path
    }
}

struct BabyLeftPalmShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.91723*width, y: 0.55993*height))
        path.addCurve(to: CGPoint(x: 0.82953*width, y: 0.5694*height), control1: CGPoint(x: 0.88922*width, y: 0.56781*height), control2: CGPoint(x: 0.85539*width, y: 0.57148*height))
        path.addCurve(to: CGPoint(x: 0.81969*width, y: 0.56928*height), control1: CGPoint(x: 0.82316*width, y: 0.56886*height), control2: CGPoint(x: 0.82023*width, y: 0.56886*height))
        path.addCurve(to: CGPoint(x: 0.82051*width, y: 0.57558*height), control1: CGPoint(x: 0.81941*width, y: 0.56966*height), control2: CGPoint(x: 0.81969*width, y: 0.57246*height))
        path.addCurve(to: CGPoint(x: 0.82074*width, y: 0.58648*height), control1: CGPoint(x: 0.82164*width, y: 0.58023*height), control2: CGPoint(x: 0.82176*width, y: 0.58224*height))
        path.addCurve(to: CGPoint(x: 0.8234*width, y: 0.63143*height), control1: CGPoint(x: 0.81758*width, y: 0.6003*height), control2: CGPoint(x: 0.81848*width, y: 0.61595*height))
        path.addCurve(to: CGPoint(x: 0.84875*width, y: 0.67239*height), control1: CGPoint(x: 0.82809*width, y: 0.64579*height), control2: CGPoint(x: 0.84301*width, y: 0.67*height))
        path.addCurve(to: CGPoint(x: 0.85426*width, y: 0.6733*height), control1: CGPoint(x: 0.84984*width, y: 0.67288*height), control2: CGPoint(x: 0.85242*width, y: 0.6733*height))
        path.addCurve(to: CGPoint(x: 0.86367*width, y: 0.66818*height), control1: CGPoint(x: 0.85855*width, y: 0.6733*height), control2: CGPoint(x: 0.86367*width, y: 0.67049*height))
        path.addCurve(to: CGPoint(x: 0.86754*width, y: 0.66897*height), control1: CGPoint(x: 0.86367*width, y: 0.66591*height), control2: CGPoint(x: 0.865*width, y: 0.66621*height))
        path.addCurve(to: CGPoint(x: 0.8848*width, y: 0.67466*height), control1: CGPoint(x: 0.87215*width, y: 0.67379*height), control2: CGPoint(x: 0.88012*width, y: 0.67644*height))
        path.addCurve(to: CGPoint(x: 0.8882*width, y: 0.66781*height), control1: CGPoint(x: 0.88676*width, y: 0.67393*height), control2: CGPoint(x: 0.8882*width, y: 0.67099*height))
        path.addCurve(to: CGPoint(x: 0.88898*width, y: 0.66451*height), control1: CGPoint(x: 0.8882*width, y: 0.66617*height), control2: CGPoint(x: 0.88859*width, y: 0.66469*height))
        path.addCurve(to: CGPoint(x: 0.89207*width, y: 0.66872*height), control1: CGPoint(x: 0.88953*width, y: 0.66432*height), control2: CGPoint(x: 0.89086*width, y: 0.66621*height))
        path.addCurve(to: CGPoint(x: 0.90895*width, y: 0.67796*height), control1: CGPoint(x: 0.89535*width, y: 0.67534*height), control2: CGPoint(x: 0.90207*width, y: 0.67901*height))
        path.addCurve(to: CGPoint(x: 0.91527*width, y: 0.66879*height), control1: CGPoint(x: 0.91211*width, y: 0.67754*height), control2: CGPoint(x: 0.91445*width, y: 0.6741*height))
        path.addLine(to: CGPoint(x: 0.91598*width, y: 0.66462*height))
        path.addLine(to: CGPoint(x: 0.91863*width, y: 0.66617*height))
        path.addCurve(to: CGPoint(x: 0.93102*width, y: 0.66916*height), control1: CGPoint(x: 0.92437*width, y: 0.66928*height), control2: CGPoint(x: 0.92672*width, y: 0.66989*height))
        path.addCurve(to: CGPoint(x: 0.9398*width, y: 0.64652*height), control1: CGPoint(x: 0.94094*width, y: 0.66738*height), control2: CGPoint(x: 0.94328*width, y: 0.66133*height))
        path.addCurve(to: CGPoint(x: 0.93723*width, y: 0.63784*height), control1: CGPoint(x: 0.93898*width, y: 0.64292*height), control2: CGPoint(x: 0.93777*width, y: 0.63901*height))
        path.addCurve(to: CGPoint(x: 0.93664*width, y: 0.63557*height), control1: CGPoint(x: 0.93672*width, y: 0.63674*height), control2: CGPoint(x: 0.93645*width, y: 0.63571*height))
        path.addCurve(to: CGPoint(x: 0.94082*width, y: 0.63875*height), control1: CGPoint(x: 0.93672*width, y: 0.63546*height), control2: CGPoint(x: 0.93867*width, y: 0.63693*height))
        path.addCurve(to: CGPoint(x: 0.95074*width, y: 0.64549*height), control1: CGPoint(x: 0.94297*width, y: 0.6406*height), control2: CGPoint(x: 0.94734*width, y: 0.64364*height))
        path.addCurve(to: CGPoint(x: 0.96648*width, y: 0.64746*height), control1: CGPoint(x: 0.95777*width, y: 0.6494*height), control2: CGPoint(x: 0.96168*width, y: 0.64989*height))
        path.addCurve(to: CGPoint(x: 0.96914*width, y: 0.64053*height), control1: CGPoint(x: 0.96914*width, y: 0.64603*height), control2: CGPoint(x: 0.96922*width, y: 0.64579*height))
        path.addCurve(to: CGPoint(x: 0.95246*width, y: 0.59197*height), control1: CGPoint(x: 0.96871*width, y: 0.63038*height), control2: CGPoint(x: 0.95902*width, y: 0.60182*height))
        path.addCurve(to: CGPoint(x: 0.94492*width, y: 0.58311*height), control1: CGPoint(x: 0.95074*width, y: 0.58947*height), control2: CGPoint(x: 0.94734*width, y: 0.58542*height))
        path.addCurve(to: CGPoint(x: 0.93215*width, y: 0.5672*height), control1: CGPoint(x: 0.93512*width, y: 0.57382*height), control2: CGPoint(x: 0.93324*width, y: 0.57155*height))
        path.addCurve(to: CGPoint(x: 0.92773*width, y: 0.55792*height), control1: CGPoint(x: 0.93059*width, y: 0.5614*height), control2: CGPoint(x: 0.92926*width, y: 0.55859*height))
        path.addCurve(to: CGPoint(x: 0.91723*width, y: 0.55993*height), control1: CGPoint(x: 0.92691*width, y: 0.55749*height), control2: CGPoint(x: 0.92363*width, y: 0.5581*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.91723*width, y: 0.55993*height))
        return path
    }
}

struct BabyGroinShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.48875*width, y: 0.60375*height))
        path.addCurve(to: CGPoint(x: 0.44637*width, y: 0.61749*height), control1: CGPoint(x: 0.47434*width, y: 0.60493*height), control2: CGPoint(x: 0.45648*width, y: 0.61074*height))
        path.addCurve(to: CGPoint(x: 0.4275*width, y: 0.64255*height), control1: CGPoint(x: 0.43562*width, y: 0.62462*height), control2: CGPoint(x: 0.42957*width, y: 0.63255*height))
        path.addCurve(to: CGPoint(x: 0.44812*width, y: 0.67757*height), control1: CGPoint(x: 0.42488*width, y: 0.65489*height), control2: CGPoint(x: 0.43281*width, y: 0.66825*height))
        path.addCurve(to: CGPoint(x: 0.50375*width, y: 0.69044*height), control1: CGPoint(x: 0.46336*width, y: 0.68682*height), control2: CGPoint(x: 0.48215*width, y: 0.69112*height))
        path.addCurve(to: CGPoint(x: 0.56918*width, y: 0.66032*height), control1: CGPoint(x: 0.53434*width, y: 0.6895*height), control2: CGPoint(x: 0.55949*width, y: 0.67795*height))
        path.addCurve(to: CGPoint(x: 0.5648*width, y: 0.62749*height), control1: CGPoint(x: 0.57512*width, y: 0.64976*height), control2: CGPoint(x: 0.57355*width, y: 0.63844*height))
        path.addCurve(to: CGPoint(x: 0.55102*width, y: 0.61625*height), control1: CGPoint(x: 0.56082*width, y: 0.62255*height), control2: CGPoint(x: 0.55863*width, y: 0.62074*height))
        path.addCurve(to: CGPoint(x: 0.50344*width, y: 0.60349*height), control1: CGPoint(x: 0.53746*width, y: 0.6082*height), control2: CGPoint(x: 0.52266*width, y: 0.6042*height))
        path.addCurve(to: CGPoint(x: 0.48875*width, y: 0.60375*height), control1: CGPoint(x: 0.49887*width, y: 0.6033*height), control2: CGPoint(x: 0.49227*width, y: 0.60345*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.48875*width, y: 0.60375*height))
        return path
    }
}

struct BabyRightLegShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.27789*width, y: 0.58697*height))
        path.addCurve(to: CGPoint(x: 0.27738*width, y: 0.58881*height), control1: CGPoint(x: 0.27789*width, y: 0.58727*height), control2: CGPoint(x: 0.2777*width, y: 0.58807*height))
        path.addCurve(to: CGPoint(x: 0.26422*width, y: 0.64254*height), control1: CGPoint(x: 0.27215*width, y: 0.60573*height), control2: CGPoint(x: 0.2673*width, y: 0.62526*height))
        path.addCurve(to: CGPoint(x: 0.25957*width, y: 0.76279*height), control1: CGPoint(x: 0.25793*width, y: 0.67695*height), control2: CGPoint(x: 0.25578*width, y: 0.73363*height))
        path.addCurve(to: CGPoint(x: 0.30199*width, y: 0.86356*height), control1: CGPoint(x: 0.26441*width, y: 0.79942*height), control2: CGPoint(x: 0.27801*width, y: 0.83187*height))
        path.addCurve(to: CGPoint(x: 0.31188*width, y: 0.8801*height), control1: CGPoint(x: 0.30664*width, y: 0.86964*height), control2: CGPoint(x: 0.30973*width, y: 0.87481*height))
        path.addCurve(to: CGPoint(x: 0.31941*width, y: 0.90534*height), control1: CGPoint(x: 0.31641*width, y: 0.8913*height), control2: CGPoint(x: 0.31941*width, y: 0.90145*height))
        path.addCurve(to: CGPoint(x: 0.31918*width, y: 0.93488*height), control1: CGPoint(x: 0.31941*width, y: 0.90719*height), control2: CGPoint(x: 0.3193*width, y: 0.92047*height))
        path.addCurve(to: CGPoint(x: 0.31973*width, y: 0.96585*height), control1: CGPoint(x: 0.3191*width, y: 0.94929*height), control2: CGPoint(x: 0.31941*width, y: 0.96321*height))
        path.addCurve(to: CGPoint(x: 0.32445*width, y: 0.97366*height), control1: CGPoint(x: 0.32043*width, y: 0.9702*height), control2: CGPoint(x: 0.32086*width, y: 0.97095*height))
        path.addCurve(to: CGPoint(x: 0.36551*width, y: 0.98117*height), control1: CGPoint(x: 0.33195*width, y: 0.97932*height), control2: CGPoint(x: 0.3407*width, y: 0.98091*height))
        path.addCurve(to: CGPoint(x: 0.44398*width, y: 0.97864*height), control1: CGPoint(x: 0.38809*width, y: 0.9814*height), control2: CGPoint(x: 0.4268*width, y: 0.98012*height))
        path.addCurve(to: CGPoint(x: 0.46168*width, y: 0.97544*height), control1: CGPoint(x: 0.45594*width, y: 0.97759*height), control2: CGPoint(x: 0.45758*width, y: 0.97729*height))
        path.addCurve(to: CGPoint(x: 0.47211*width, y: 0.96627*height), control1: CGPoint(x: 0.46727*width, y: 0.97291*height), control2: CGPoint(x: 0.47117*width, y: 0.9694*height))
        path.addCurve(to: CGPoint(x: 0.45984*width, y: 0.94669*height), control1: CGPoint(x: 0.47344*width, y: 0.96152*height), control2: CGPoint(x: 0.4684*width, y: 0.95341*height))
        path.addCurve(to: CGPoint(x: 0.43203*width, y: 0.91642*height), control1: CGPoint(x: 0.44656*width, y: 0.93631*height), control2: CGPoint(x: 0.43543*width, y: 0.92412*height))
        path.addCurve(to: CGPoint(x: 0.41352*width, y: 0.84995*height), control1: CGPoint(x: 0.42504*width, y: 0.90073*height), control2: CGPoint(x: 0.41672*width, y: 0.87063*height))
        path.addCurve(to: CGPoint(x: 0.41145*width, y: 0.7681*height), control1: CGPoint(x: 0.40969*width, y: 0.82569*height), control2: CGPoint(x: 0.4093*width, y: 0.80595*height))
        path.addCurve(to: CGPoint(x: 0.43895*width, y: 0.69054*height), control1: CGPoint(x: 0.41258*width, y: 0.74766*height), control2: CGPoint(x: 0.42535*width, y: 0.7119*height))
        path.addLine(to: CGPoint(x: 0.44348*width, y: 0.68348*height))
        path.addLine(to: CGPoint(x: 0.44047*width, y: 0.67854*height))
        path.addCurve(to: CGPoint(x: 0.41484*width, y: 0.64839*height), control1: CGPoint(x: 0.43594*width, y: 0.67103*height), control2: CGPoint(x: 0.4232*width, y: 0.65597*height))
        path.addCurve(to: CGPoint(x: 0.3641*width, y: 0.61424*height), control1: CGPoint(x: 0.40094*width, y: 0.6356*height), control2: CGPoint(x: 0.3823*width, y: 0.62304*height))
        path.addCurve(to: CGPoint(x: 0.29004*width, y: 0.589*height), control1: CGPoint(x: 0.34391*width, y: 0.60451*height), control2: CGPoint(x: 0.31477*width, y: 0.59455*height))
        path.addCurve(to: CGPoint(x: 0.27789*width, y: 0.58697*height), control1: CGPoint(x: 0.27801*width, y: 0.58636*height), control2: CGPoint(x: 0.27801*width, y: 0.58629*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.27789*width, y: 0.58697*height))
        return path
    }
}

struct BabyLeftLegShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.69227*width, y: 0.59181*height))
        path.addCurve(to: CGPoint(x: 0.55855*width, y: 0.67955*height), control1: CGPoint(x: 0.63871*width, y: 0.61375*height), control2: CGPoint(x: 0.59281*width, y: 0.64383*height))
        path.addLine(to: CGPoint(x: 0.5541*width, y: 0.6842*height))
        path.addLine(to: CGPoint(x: 0.55762*width, y: 0.69258*height))
        path.addCurve(to: CGPoint(x: 0.58098*width, y: 0.77587*height), control1: CGPoint(x: 0.57195*width, y: 0.72616*height), control2: CGPoint(x: 0.57992*width, y: 0.75477*height))
        path.addCurve(to: CGPoint(x: 0.57609*width, y: 0.85198*height), control1: CGPoint(x: 0.58176*width, y: 0.79171*height), control2: CGPoint(x: 0.57906*width, y: 0.83386*height))
        path.addCurve(to: CGPoint(x: 0.56164*width, y: 0.90889*height), control1: CGPoint(x: 0.57184*width, y: 0.87856*height), control2: CGPoint(x: 0.56664*width, y: 0.89891*height))
        path.addCurve(to: CGPoint(x: 0.53996*width, y: 0.93584*height), control1: CGPoint(x: 0.55738*width, y: 0.91729*height), control2: CGPoint(x: 0.54699*width, y: 0.93032*height))
        path.addCurve(to: CGPoint(x: 0.52402*width, y: 0.96199*height), control1: CGPoint(x: 0.53039*width, y: 0.94342*height), control2: CGPoint(x: 0.52402*width, y: 0.95385*height))
        path.addCurve(to: CGPoint(x: 0.5302*width, y: 0.9735*height), control1: CGPoint(x: 0.52414*width, y: 0.96828*height), control2: CGPoint(x: 0.52539*width, y: 0.97088*height))
        path.addCurve(to: CGPoint(x: 0.59492*width, y: 0.98213*height), control1: CGPoint(x: 0.53879*width, y: 0.97832*height), control2: CGPoint(x: 0.5559*width, y: 0.98061*height))
        path.addCurve(to: CGPoint(x: 0.63852*width, y: 0.98206*height), control1: CGPoint(x: 0.62137*width, y: 0.98316*height), control2: CGPoint(x: 0.62352*width, y: 0.98316*height))
        path.addCurve(to: CGPoint(x: 0.65742*width, y: 0.98009*height), control1: CGPoint(x: 0.64711*width, y: 0.98143*height), control2: CGPoint(x: 0.6557*width, y: 0.98054*height))
        path.addCurve(to: CGPoint(x: 0.67199*width, y: 0.97043*height), control1: CGPoint(x: 0.66168*width, y: 0.97909*height), control2: CGPoint(x: 0.66934*width, y: 0.97399*height))
        path.addCurve(to: CGPoint(x: 0.67496*width, y: 0.93495*height), control1: CGPoint(x: 0.67582*width, y: 0.96529*height), control2: CGPoint(x: 0.67707*width, y: 0.95001*height))
        path.addCurve(to: CGPoint(x: 0.67984*width, y: 0.88887*height), control1: CGPoint(x: 0.67348*width, y: 0.92499*height), control2: CGPoint(x: 0.67582*width, y: 0.90393*height))
        path.addCurve(to: CGPoint(x: 0.70133*width, y: 0.84658*height), control1: CGPoint(x: 0.68324*width, y: 0.87659*height), control2: CGPoint(x: 0.68547*width, y: 0.87208*height))
        path.addCurve(to: CGPoint(x: 0.73574*width, y: 0.75281*height), control1: CGPoint(x: 0.72012*width, y: 0.81624*height), control2: CGPoint(x: 0.73035*width, y: 0.78848*height))
        path.addCurve(to: CGPoint(x: 0.73574*width, y: 0.68953*height), control1: CGPoint(x: 0.73746*width, y: 0.74135*height), control2: CGPoint(x: 0.73746*width, y: 0.70167*height))
        path.addCurve(to: CGPoint(x: 0.71961*width, y: 0.62215*height), control1: CGPoint(x: 0.73246*width, y: 0.66664*height), control2: CGPoint(x: 0.72672*width, y: 0.64273*height))
        path.addCurve(to: CGPoint(x: 0.70547*width, y: 0.58793*height), control1: CGPoint(x: 0.71449*width, y: 0.6075*height), control2: CGPoint(x: 0.70684*width, y: 0.589*height))
        path.addCurve(to: CGPoint(x: 0.69227*width, y: 0.59181*height), control1: CGPoint(x: 0.70441*width, y: 0.58704*height), control2: CGPoint(x: 0.70258*width, y: 0.58762*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.69227*width, y: 0.59181*height))
        return path
    }
}

// MARK: - BabyBack

struct BabyBackHeadShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.47145*width, y: 0.00936*height))
        path.addCurve(to: CGPoint(x: 0.37688*width, y: 0.03034*height), control1: CGPoint(x: 0.43977*width, y: 0.01134*height), control2: CGPoint(x: 0.4048*width, y: 0.01911*height))
        path.addCurve(to: CGPoint(x: 0.34543*width, y: 0.04746*height), control1: CGPoint(x: 0.36473*width, y: 0.03518*height), control2: CGPoint(x: 0.35727*width, y: 0.0392*height))
        path.addCurve(to: CGPoint(x: 0.31902*width, y: 0.07195*height), control1: CGPoint(x: 0.3343*width, y: 0.05509*height), control2: CGPoint(x: 0.32984*width, y: 0.0593*height))
        path.addCurve(to: CGPoint(x: 0.3016*width, y: 0.09957*height), control1: CGPoint(x: 0.31012*width, y: 0.08245*height), control2: CGPoint(x: 0.30504*width, y: 0.0905*height))
        path.addCurve(to: CGPoint(x: 0.29691*width, y: 0.1253*height), control1: CGPoint(x: 0.29922*width, y: 0.10582*height), control2: CGPoint(x: 0.29691*width, y: 0.1185*height))
        path.addCurve(to: CGPoint(x: 0.29961*width, y: 0.14647*height), control1: CGPoint(x: 0.29691*width, y: 0.13108*height), control2: CGPoint(x: 0.29848*width, y: 0.14317*height))
        path.addCurve(to: CGPoint(x: 0.29547*width, y: 0.14783*height), control1: CGPoint(x: 0.30016*width, y: 0.14809*height), control2: CGPoint(x: 0.30004*width, y: 0.14813*height))
        path.addCurve(to: CGPoint(x: 0.28125*width, y: 0.15211*height), control1: CGPoint(x: 0.28883*width, y: 0.14734*height), control2: CGPoint(x: 0.28508*width, y: 0.14851*height))
        path.addLine(to: CGPoint(x: 0.27793*width, y: 0.15515*height))
        path.addLine(to: CGPoint(x: 0.27855*width, y: 0.16334*height))
        path.addCurve(to: CGPoint(x: 0.28293*width, y: 0.17959*height), control1: CGPoint(x: 0.27906*width, y: 0.17028*height), control2: CGPoint(x: 0.27969*width, y: 0.17276*height))
        path.addCurve(to: CGPoint(x: 0.28871*width, y: 0.19169*height), control1: CGPoint(x: 0.28508*width, y: 0.18399*height), control2: CGPoint(x: 0.2877*width, y: 0.18946*height))
        path.addCurve(to: CGPoint(x: 0.29723*width, y: 0.20465*height), control1: CGPoint(x: 0.2909*width, y: 0.19634*height), control2: CGPoint(x: 0.29559*width, y: 0.20341*height))
        path.addCurve(to: CGPoint(x: 0.3098*width, y: 0.20783*height), control1: CGPoint(x: 0.2991*width, y: 0.20596*height), control2: CGPoint(x: 0.30637*width, y: 0.20783*height))
        path.addCurve(to: CGPoint(x: 0.31676*width, y: 0.20944*height), control1: CGPoint(x: 0.31156*width, y: 0.20783*height), control2: CGPoint(x: 0.31469*width, y: 0.20855*height))
        path.addCurve(to: CGPoint(x: 0.32195*width, y: 0.21459*height), control1: CGPoint(x: 0.32008*width, y: 0.2108*height), control2: CGPoint(x: 0.3209*width, y: 0.21155*height))
        path.addCurve(to: CGPoint(x: 0.36148*width, y: 0.26025*height), control1: CGPoint(x: 0.32652*width, y: 0.22804*height), control2: CGPoint(x: 0.33637*width, y: 0.23938*height))
        path.addCurve(to: CGPoint(x: 0.37863*width, y: 0.27451*height), control1: CGPoint(x: 0.3691*width, y: 0.26656*height), control2: CGPoint(x: 0.37676*width, y: 0.27302*height))
        path.addCurve(to: CGPoint(x: 0.38258*width, y: 0.27971*height), control1: CGPoint(x: 0.38039*width, y: 0.27599*height), control2: CGPoint(x: 0.38215*width, y: 0.27835*height))
        path.addCurve(to: CGPoint(x: 0.39379*width, y: 0.28504*height), control1: CGPoint(x: 0.3832*width, y: 0.28207*height), control2: CGPoint(x: 0.3834*width, y: 0.28219*height))
        path.addCurve(to: CGPoint(x: 0.48316*width, y: 0.30092*height), control1: CGPoint(x: 0.42422*width, y: 0.29348*height), control2: CGPoint(x: 0.45473*width, y: 0.29896*height))
        path.addCurve(to: CGPoint(x: 0.54547*width, y: 0.29964*height), control1: CGPoint(x: 0.49863*width, y: 0.30197*height), control2: CGPoint(x: 0.53137*width, y: 0.30137*height))
        path.addCurve(to: CGPoint(x: 0.59602*width, y: 0.28932*height), control1: CGPoint(x: 0.56168*width, y: 0.29769*height), control2: CGPoint(x: 0.57965*width, y: 0.29404*height))
        path.addCurve(to: CGPoint(x: 0.6118*width, y: 0.28326*height), control1: CGPoint(x: 0.60777*width, y: 0.28593*height), control2: CGPoint(x: 0.61047*width, y: 0.28485*height))
        path.addCurve(to: CGPoint(x: 0.62645*width, y: 0.27201*height), control1: CGPoint(x: 0.61266*width, y: 0.28219*height), control2: CGPoint(x: 0.6193*width, y: 0.27711*height))
        path.addCurve(to: CGPoint(x: 0.65699*width, y: 0.24658*height), control1: CGPoint(x: 0.64035*width, y: 0.26209*height), control2: CGPoint(x: 0.65168*width, y: 0.25267*height))
        path.addCurve(to: CGPoint(x: 0.67793*width, y: 0.21122*height), control1: CGPoint(x: 0.66789*width, y: 0.23393*height), control2: CGPoint(x: 0.67793*width, y: 0.21693*height))
        path.addLine(to: CGPoint(x: 0.67793*width, y: 0.20918*height))
        path.addLine(to: CGPoint(x: 0.68555*width, y: 0.20836*height))
        path.addCurve(to: CGPoint(x: 0.69734*width, y: 0.20497*height), control1: CGPoint(x: 0.69219*width, y: 0.20769*height), control2: CGPoint(x: 0.6934*width, y: 0.20731*height))
        path.addCurve(to: CGPoint(x: 0.70523*width, y: 0.19529*height), control1: CGPoint(x: 0.70109*width, y: 0.20266*height), control2: CGPoint(x: 0.70223*width, y: 0.2013*height))
        path.addCurve(to: CGPoint(x: 0.71844*width, y: 0.16217*height), control1: CGPoint(x: 0.71066*width, y: 0.18474*height), control2: CGPoint(x: 0.71844*width, y: 0.16502*height))
        path.addCurve(to: CGPoint(x: 0.71223*width, y: 0.15167*height), control1: CGPoint(x: 0.71844*width, y: 0.15826*height), control2: CGPoint(x: 0.71574*width, y: 0.15365*height))
        path.addCurve(to: CGPoint(x: 0.70266*width, y: 0.14975*height), control1: CGPoint(x: 0.70941*width, y: 0.15005*height), control2: CGPoint(x: 0.70816*width, y: 0.14982*height))
        path.addLine(to: CGPoint(x: 0.69633*width, y: 0.1497*height))
        path.addLine(to: CGPoint(x: 0.69613*width, y: 0.12711*height))
        path.addCurve(to: CGPoint(x: 0.69414*width, y: 0.09894*height), control1: CGPoint(x: 0.69602*width, y: 0.10867*height), control2: CGPoint(x: 0.69559*width, y: 0.10353*height))
        path.addCurve(to: CGPoint(x: 0.66488*width, y: 0.05392*height), control1: CGPoint(x: 0.68875*width, y: 0.08201*height), control2: CGPoint(x: 0.67824*width, y: 0.06589*height))
        path.addCurve(to: CGPoint(x: 0.64285*width, y: 0.03864*height), control1: CGPoint(x: 0.65605*width, y: 0.0461*height), control2: CGPoint(x: 0.65355*width, y: 0.04442*height))
        path.addCurve(to: CGPoint(x: 0.5352*width, y: 0.01116*height), control1: CGPoint(x: 0.61461*width, y: 0.02369*height), control2: CGPoint(x: 0.58391*width, y: 0.01581*height))
        path.addCurve(to: CGPoint(x: 0.47145*width, y: 0.00936*height), control1: CGPoint(x: 0.50895*width, y: 0.00868*height), control2: CGPoint(x: 0.49098*width, y: 0.00819*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.47145*width, y: 0.00936*height))
        return path
    }
}

struct BabyBackMainBodyShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.37469*width, y: 0.29051*height))
        path.addCurve(to: CGPoint(x: 0.34918*width, y: 0.30092*height), control1: CGPoint(x: 0.36691*width, y: 0.2954*height), control2: CGPoint(x: 0.35852*width, y: 0.29879*height))
        path.addCurve(to: CGPoint(x: 0.34289*width, y: 0.30417*height), control1: CGPoint(x: 0.3432*width, y: 0.30223*height), control2: CGPoint(x: 0.34266*width, y: 0.30249*height))
        path.addCurve(to: CGPoint(x: 0.3432*width, y: 0.34356*height), control1: CGPoint(x: 0.34414*width, y: 0.31243*height), control2: CGPoint(x: 0.34434*width, y: 0.33725*height))
        path.addCurve(to: CGPoint(x: 0.30836*width, y: 0.41483*height), control1: CGPoint(x: 0.33922*width, y: 0.36735*height), control2: CGPoint(x: 0.32629*width, y: 0.3936*height))
        path.addLine(to: CGPoint(x: 0.30406*width, y: 0.41991*height))
        path.addLine(to: CGPoint(x: 0.30383*width, y: 0.44653*height))
        path.addCurve(to: CGPoint(x: 0.29219*width, y: 0.54671*height), control1: CGPoint(x: 0.30344*width, y: 0.48533*height), control2: CGPoint(x: 0.30027*width, y: 0.51284*height))
        path.addCurve(to: CGPoint(x: 0.28863*width, y: 0.56425*height), control1: CGPoint(x: 0.29082*width, y: 0.55272*height), control2: CGPoint(x: 0.28914*width, y: 0.56063*height))
        path.addCurve(to: CGPoint(x: 0.28273*width, y: 0.58725*height), control1: CGPoint(x: 0.28746*width, y: 0.57183*height), control2: CGPoint(x: 0.28633*width, y: 0.57653*height))
        path.addCurve(to: CGPoint(x: 0.28023*width, y: 0.59695*height), control1: CGPoint(x: 0.28137*width, y: 0.59143*height), control2: CGPoint(x: 0.28023*width, y: 0.59581*height))
        path.addCurve(to: CGPoint(x: 0.27762*width, y: 0.60559*height), control1: CGPoint(x: 0.28023*width, y: 0.59808*height), control2: CGPoint(x: 0.27906*width, y: 0.60196*height))
        path.addCurve(to: CGPoint(x: 0.27414*width, y: 0.62568*height), control1: CGPoint(x: 0.27109*width, y: 0.62205*height), control2: CGPoint(x: 0.27109*width, y: 0.62219*height))
        path.addCurve(to: CGPoint(x: 0.32168*width, y: 0.65819*height), control1: CGPoint(x: 0.28129*width, y: 0.63363*height), control2: CGPoint(x: 0.30574*width, y: 0.65036*height))
        path.addCurve(to: CGPoint(x: 0.39262*width, y: 0.67892*height), control1: CGPoint(x: 0.34266*width, y: 0.66846*height), control2: CGPoint(x: 0.36703*width, y: 0.67559*height))
        path.addCurve(to: CGPoint(x: 0.45129*width, y: 0.68037*height), control1: CGPoint(x: 0.40996*width, y: 0.68118*height), control2: CGPoint(x: 0.43953*width, y: 0.68186*height))
        path.addCurve(to: CGPoint(x: 0.47902*width, y: 0.67447*height), control1: CGPoint(x: 0.46*width, y: 0.67917*height), control2: CGPoint(x: 0.47469*width, y: 0.67611*height))
        path.addCurve(to: CGPoint(x: 0.51531*width, y: 0.63157*height), control1: CGPoint(x: 0.49895*width, y: 0.66689*height), control2: CGPoint(x: 0.51176*width, y: 0.65188*height))
        path.addCurve(to: CGPoint(x: 0.50547*width, y: 0.59525*height), control1: CGPoint(x: 0.5173*width, y: 0.62044*height), control2: CGPoint(x: 0.51387*width, y: 0.60771*height))
        path.addCurve(to: CGPoint(x: 0.50398*width, y: 0.58956*height), control1: CGPoint(x: 0.50199*width, y: 0.59017*height), control2: CGPoint(x: 0.50199*width, y: 0.58998*height))
        path.addCurve(to: CGPoint(x: 0.50652*width, y: 0.58949*height), control1: CGPoint(x: 0.50516*width, y: 0.58938*height), control2: CGPoint(x: 0.50629*width, y: 0.58931*height))
        path.addCurve(to: CGPoint(x: 0.51711*width, y: 0.60671*height), control1: CGPoint(x: 0.50789*width, y: 0.59031*height), control2: CGPoint(x: 0.5148*width, y: 0.6014*height))
        path.addCurve(to: CGPoint(x: 0.51992*width, y: 0.62406*height), control1: CGPoint(x: 0.51961*width, y: 0.61216*height), control2: CGPoint(x: 0.51984*width, y: 0.61398*height))
        path.addCurve(to: CGPoint(x: 0.51816*width, y: 0.64065*height), control1: CGPoint(x: 0.52004*width, y: 0.63277*height), control2: CGPoint(x: 0.51961*width, y: 0.63653*height))
        path.addCurve(to: CGPoint(x: 0.5043*width, y: 0.66502*height), control1: CGPoint(x: 0.51523*width, y: 0.64867*height), control2: CGPoint(x: 0.50945*width, y: 0.65875*height))
        path.addCurve(to: CGPoint(x: 0.49957*width, y: 0.67122*height), control1: CGPoint(x: 0.50168*width, y: 0.66809*height), control2: CGPoint(x: 0.49957*width, y: 0.67085*height))
        path.addCurve(to: CGPoint(x: 0.50828*width, y: 0.67347*height), control1: CGPoint(x: 0.49957*width, y: 0.67152*height), control2: CGPoint(x: 0.50348*width, y: 0.67253*height))
        path.addCurve(to: CGPoint(x: 0.60129*width, y: 0.67693*height), control1: CGPoint(x: 0.54187*width, y: 0.6798*height), control2: CGPoint(x: 0.57055*width, y: 0.68086*height))
        path.addCurve(to: CGPoint(x: 0.68125*width, y: 0.65248*height), control1: CGPoint(x: 0.62773*width, y: 0.67347*height), control2: CGPoint(x: 0.65617*width, y: 0.66483*height))
        path.addCurve(to: CGPoint(x: 0.72262*width, y: 0.62732*height), control1: CGPoint(x: 0.69418*width, y: 0.64624*height), control2: CGPoint(x: 0.72176*width, y: 0.62937*height))
        path.addCurve(to: CGPoint(x: 0.72062*width, y: 0.61854*height), control1: CGPoint(x: 0.72313*width, y: 0.62626*height), control2: CGPoint(x: 0.7223*width, y: 0.62287*height))
        path.addCurve(to: CGPoint(x: 0.70215*width, y: 0.55518*height), control1: CGPoint(x: 0.71316*width, y: 0.59932*height), control2: CGPoint(x: 0.71*width, y: 0.58867*height))
        path.addCurve(to: CGPoint(x: 0.6925*width, y: 0.50194*height), control1: CGPoint(x: 0.69785*width, y: 0.53677*height), control2: CGPoint(x: 0.6948*width, y: 0.51979*height))
        path.addCurve(to: CGPoint(x: 0.69301*width, y: 0.42686*height), control1: CGPoint(x: 0.69051*width, y: 0.48615*height), control2: CGPoint(x: 0.69082*width, y: 0.44101*height))
        path.addLine(to: CGPoint(x: 0.69469*width, y: 0.41565*height))
        path.addLine(to: CGPoint(x: 0.68977*width, y: 0.4117*height))
        path.addCurve(to: CGPoint(x: 0.65438*width, y: 0.37294*height), control1: CGPoint(x: 0.67707*width, y: 0.40162*height), control2: CGPoint(x: 0.66195*width, y: 0.38501*height))
        path.addCurve(to: CGPoint(x: 0.64168*width, y: 0.3423*height), control1: CGPoint(x: 0.64902*width, y: 0.36447*height), control2: CGPoint(x: 0.64367*width, y: 0.35159*height))
        path.addCurve(to: CGPoint(x: 0.6416*width, y: 0.30574*height), control1: CGPoint(x: 0.64012*width, y: 0.33524*height), control2: CGPoint(x: 0.64012*width, y: 0.32635*height))
        path.addLine(to: CGPoint(x: 0.6418*width, y: 0.30305*height))
        path.addLine(to: CGPoint(x: 0.63559*width, y: 0.30153*height))
        path.addCurve(to: CGPoint(x: 0.61398*width, y: 0.29215*height), control1: CGPoint(x: 0.62625*width, y: 0.29928*height), control2: CGPoint(x: 0.61871*width, y: 0.29596*height))
        path.addCurve(to: CGPoint(x: 0.60895*width, y: 0.28883*height), control1: CGPoint(x: 0.61156*width, y: 0.29021*height), control2: CGPoint(x: 0.60926*width, y: 0.28871*height))
        path.addCurve(to: CGPoint(x: 0.59402*width, y: 0.2932*height), control1: CGPoint(x: 0.60852*width, y: 0.28895*height), control2: CGPoint(x: 0.6018*width, y: 0.29089*height))
        path.addCurve(to: CGPoint(x: 0.54418*width, y: 0.30354*height), control1: CGPoint(x: 0.57703*width, y: 0.29823*height), control2: CGPoint(x: 0.56254*width, y: 0.30123*height))
        path.addCurve(to: CGPoint(x: 0.50641*width, y: 0.30523*height), control1: CGPoint(x: 0.5316*width, y: 0.30511*height), control2: CGPoint(x: 0.52875*width, y: 0.30523*height))
        path.addCurve(to: CGPoint(x: 0.46969*width, y: 0.30387*height), control1: CGPoint(x: 0.48582*width, y: 0.30523*height), control2: CGPoint(x: 0.48039*width, y: 0.30504*height))
        path.addCurve(to: CGPoint(x: 0.3923*width, y: 0.28864*height), control1: CGPoint(x: 0.44395*width, y: 0.30097*height), control2: CGPoint(x: 0.41363*width, y: 0.29503*height))
        path.addCurve(to: CGPoint(x: 0.38289*width, y: 0.28626*height), control1: CGPoint(x: 0.38781*width, y: 0.28726*height), control2: CGPoint(x: 0.38359*width, y: 0.28621*height))
        path.addCurve(to: CGPoint(x: 0.37469*width, y: 0.29051*height), control1: CGPoint(x: 0.38215*width, y: 0.28626*height), control2: CGPoint(x: 0.37848*width, y: 0.2882*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.37469*width, y: 0.29051*height))
        return path
    }
}

struct BabyBackRightHandShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.64539*width, y: 0.30553*height))
        path.addCurve(to: CGPoint(x: 0.64652*width, y: 0.34115*height), control1: CGPoint(x: 0.64395*width, y: 0.30997*height), control2: CGPoint(x: 0.64469*width, y: 0.33334*height))
        path.addCurve(to: CGPoint(x: 0.72383*width, y: 0.43523*height), control1: CGPoint(x: 0.65488*width, y: 0.37624*height), control2: CGPoint(x: 0.67672*width, y: 0.40279*height))
        path.addCurve(to: CGPoint(x: 0.82246*width, y: 0.55813*height), control1: CGPoint(x: 0.76855*width, y: 0.46611*height), control2: CGPoint(x: 0.80473*width, y: 0.51109*height))
        path.addCurve(to: CGPoint(x: 0.8282*width, y: 0.57317*height), control1: CGPoint(x: 0.82473*width, y: 0.56423*height), control2: CGPoint(x: 0.82738*width, y: 0.57101*height))
        path.addLine(to: CGPoint(x: 0.82996*width, y: 0.57712*height))
        path.addLine(to: CGPoint(x: 0.8475*width, y: 0.57674*height))
        path.addCurve(to: CGPoint(x: 0.92746*width, y: 0.56496*height), control1: CGPoint(x: 0.87859*width, y: 0.57611*height), control2: CGPoint(x: 0.9018*width, y: 0.57267*height))
        path.addLine(to: CGPoint(x: 0.93414*width, y: 0.56299*height))
        path.addLine(to: CGPoint(x: 0.93445*width, y: 0.55684*height))
        path.addCurve(to: CGPoint(x: 0.92332*width, y: 0.50154*height), control1: CGPoint(x: 0.93496*width, y: 0.54648*height), control2: CGPoint(x: 0.9298*width, y: 0.52096*height))
        path.addCurve(to: CGPoint(x: 0.88117*width, y: 0.42506*height), control1: CGPoint(x: 0.91406*width, y: 0.47406*height), control2: CGPoint(x: 0.89984*width, y: 0.44817*height))
        path.addCurve(to: CGPoint(x: 0.8409*width, y: 0.38319*height), control1: CGPoint(x: 0.87211*width, y: 0.41371*height), control2: CGPoint(x: 0.85254*width, y: 0.39343*height))
        path.addCurve(to: CGPoint(x: 0.68508*width, y: 0.30948*height), control1: CGPoint(x: 0.80008*width, y: 0.34721*height), control2: CGPoint(x: 0.74855*width, y: 0.32286*height))
        path.addCurve(to: CGPoint(x: 0.64766*width, y: 0.30326*height), control1: CGPoint(x: 0.67551*width, y: 0.30752*height), control2: CGPoint(x: 0.65016*width, y: 0.30326*height))
        path.addCurve(to: CGPoint(x: 0.64539*width, y: 0.30553*height), control1: CGPoint(x: 0.64684*width, y: 0.30326*height), control2: CGPoint(x: 0.64594*width, y: 0.30417*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.64539*width, y: 0.30553*height))
        return path
    }
}

struct BabyBackRightPalmShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.06641*width, y: 0.55761*height))
        path.addCurve(to: CGPoint(x: 0.06488*width, y: 0.56241*height), control1: CGPoint(x: 0.06609*width, y: 0.55829*height), control2: CGPoint(x: 0.06539*width, y: 0.56037*height))
        path.addCurve(to: CGPoint(x: 0.04625*width, y: 0.58503*height), control1: CGPoint(x: 0.06375*width, y: 0.56683*height), control2: CGPoint(x: 0.0523*width, y: 0.58067*height))
        path.addCurve(to: CGPoint(x: 0.02172*width, y: 0.61382*height), control1: CGPoint(x: 0.03449*width, y: 0.59347*height), control2: CGPoint(x: 0.02605*width, y: 0.60329*height))
        path.addCurve(to: CGPoint(x: 0.01605*width, y: 0.6413*height), control1: CGPoint(x: 0.01875*width, y: 0.621*height), control2: CGPoint(x: 0.01625*width, y: 0.63305*height))
        path.addCurve(to: CGPoint(x: 0.01801*width, y: 0.65045*height), control1: CGPoint(x: 0.01598*width, y: 0.64738*height), control2: CGPoint(x: 0.01625*width, y: 0.64867*height))
        path.addCurve(to: CGPoint(x: 0.0377*width, y: 0.64972*height), control1: CGPoint(x: 0.02215*width, y: 0.65464*height), control2: CGPoint(x: 0.02914*width, y: 0.65438*height))
        path.addCurve(to: CGPoint(x: 0.0523*width, y: 0.63866*height), control1: CGPoint(x: 0.04336*width, y: 0.64664*height), control2: CGPoint(x: 0.04512*width, y: 0.64528*height))
        path.addCurve(to: CGPoint(x: 0.05527*width, y: 0.63667*height), control1: CGPoint(x: 0.05426*width, y: 0.63686*height), control2: CGPoint(x: 0.05551*width, y: 0.63602*height))
        path.addCurve(to: CGPoint(x: 0.04941*width, y: 0.66294*height), control1: CGPoint(x: 0.05301*width, y: 0.64179*height), control2: CGPoint(x: 0.04941*width, y: 0.65796*height))
        path.addCurve(to: CGPoint(x: 0.06105*width, y: 0.67634*height), control1: CGPoint(x: 0.04941*width, y: 0.66989*height), control2: CGPoint(x: 0.05508*width, y: 0.67634*height))
        path.addCurve(to: CGPoint(x: 0.06723*width, y: 0.67389*height), control1: CGPoint(x: 0.0627*width, y: 0.67634*height), control2: CGPoint(x: 0.06488*width, y: 0.67548*height))
        path.addCurve(to: CGPoint(x: 0.07137*width, y: 0.67192*height), control1: CGPoint(x: 0.0693*width, y: 0.6726*height), control2: CGPoint(x: 0.07113*width, y: 0.67166*height))
        path.addCurve(to: CGPoint(x: 0.07258*width, y: 0.67566*height), control1: CGPoint(x: 0.07168*width, y: 0.67216*height), control2: CGPoint(x: 0.07219*width, y: 0.67389*height))
        path.addCurve(to: CGPoint(x: 0.09688*width, y: 0.67634*height), control1: CGPoint(x: 0.07453*width, y: 0.68453*height), control2: CGPoint(x: 0.09039*width, y: 0.68495*height))
        path.addLine(to: CGPoint(x: 0.09926*width, y: 0.67326*height))
        path.addLine(to: CGPoint(x: 0.10102*width, y: 0.67597*height))
        path.addCurve(to: CGPoint(x: 0.11016*width, y: 0.68249*height), control1: CGPoint(x: 0.10379*width, y: 0.68034*height), control2: CGPoint(x: 0.10676*width, y: 0.68249*height))
        path.addCurve(to: CGPoint(x: 0.12254*width, y: 0.6751*height), control1: CGPoint(x: 0.11441*width, y: 0.68249*height), control2: CGPoint(x: 0.11777*width, y: 0.68039*height))
        path.addCurve(to: CGPoint(x: 0.12695*width, y: 0.67143*height), control1: CGPoint(x: 0.12488*width, y: 0.67241*height), control2: CGPoint(x: 0.12676*width, y: 0.67087*height))
        path.addCurve(to: CGPoint(x: 0.1384*width, y: 0.67917*height), control1: CGPoint(x: 0.13004*width, y: 0.67756*height), control2: CGPoint(x: 0.13355*width, y: 0.6799*height))
        path.addCurve(to: CGPoint(x: 0.16207*width, y: 0.65543*height), control1: CGPoint(x: 0.14406*width, y: 0.67831*height), control2: CGPoint(x: 0.15711*width, y: 0.66521*height))
        path.addCurve(to: CGPoint(x: 0.17266*width, y: 0.62776*height), control1: CGPoint(x: 0.16609*width, y: 0.64757*height), control2: CGPoint(x: 0.17062*width, y: 0.63569*height))
        path.addCurve(to: CGPoint(x: 0.17453*width, y: 0.60009*height), control1: CGPoint(x: 0.1741*width, y: 0.62205*height), control2: CGPoint(x: 0.17441*width, y: 0.61665*height))
        path.addCurve(to: CGPoint(x: 0.17578*width, y: 0.57674*height), control1: CGPoint(x: 0.17453*width, y: 0.58626*height), control2: CGPoint(x: 0.17492*width, y: 0.57857*height))
        path.addCurve(to: CGPoint(x: 0.17555*width, y: 0.56818*height), control1: CGPoint(x: 0.1768*width, y: 0.57434*height), control2: CGPoint(x: 0.17668*width, y: 0.56893*height))
        path.addCurve(to: CGPoint(x: 0.16855*width, y: 0.56868*height), control1: CGPoint(x: 0.17535*width, y: 0.56807*height), control2: CGPoint(x: 0.17215*width, y: 0.5683*height))
        path.addCurve(to: CGPoint(x: 0.07578*width, y: 0.55836*height), control1: CGPoint(x: 0.13633*width, y: 0.572*height), control2: CGPoint(x: 0.09906*width, y: 0.56788*height))
        path.addCurve(to: CGPoint(x: 0.06641*width, y: 0.55761*height), control1: CGPoint(x: 0.07055*width, y: 0.55621*height), control2: CGPoint(x: 0.06734*width, y: 0.55595*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.06641*width, y: 0.55761*height))
        return path
    }
}

struct BabyBackLeftHandShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.33359*width, y: 0.30293*height))
        path.addCurve(to: CGPoint(x: 0.32633*width, y: 0.30422*height), control1: CGPoint(x: 0.33328*width, y: 0.30305*height), control2: CGPoint(x: 0.33008*width, y: 0.30366*height))
        path.addCurve(to: CGPoint(x: 0.31406*width, y: 0.30663*height), control1: CGPoint(x: 0.32273*width, y: 0.30478*height), control2: CGPoint(x: 0.31715*width, y: 0.30583*height))
        path.addCurve(to: CGPoint(x: 0.2934*width, y: 0.31189*height), control1: CGPoint(x: 0.31094*width, y: 0.30742*height), control2: CGPoint(x: 0.30164*width, y: 0.30979*height))
        path.addCurve(to: CGPoint(x: 0.22469*width, y: 0.33559*height), control1: CGPoint(x: 0.26902*width, y: 0.318*height), control2: CGPoint(x: 0.24598*width, y: 0.32597*height))
        path.addCurve(to: CGPoint(x: 0.17438*width, y: 0.36684*height), control1: CGPoint(x: 0.2091*width, y: 0.3427*height), control2: CGPoint(x: 0.17965*width, y: 0.36099*height))
        path.addCurve(to: CGPoint(x: 0.16879*width, y: 0.3721*height), control1: CGPoint(x: 0.17367*width, y: 0.3677*height), control2: CGPoint(x: 0.17109*width, y: 0.37006*height))
        path.addCurve(to: CGPoint(x: 0.07863*width, y: 0.49623*height), control1: CGPoint(x: 0.12531*width, y: 0.41013*height), control2: CGPoint(x: 0.09289*width, y: 0.45486*height))
        path.addCurve(to: CGPoint(x: 0.06613*width, y: 0.55125*height), control1: CGPoint(x: 0.07355*width, y: 0.51106*height), control2: CGPoint(x: 0.06613*width, y: 0.54386*height))
        path.addCurve(to: CGPoint(x: 0.07832*width, y: 0.55693*height), control1: CGPoint(x: 0.06613*width, y: 0.55317*height), control2: CGPoint(x: 0.06664*width, y: 0.55335*height))
        path.addCurve(to: CGPoint(x: 0.16062*width, y: 0.56694*height), control1: CGPoint(x: 0.10539*width, y: 0.56517*height), control2: CGPoint(x: 0.13336*width, y: 0.56856*height))
        path.addCurve(to: CGPoint(x: 0.17469*width, y: 0.56521*height), control1: CGPoint(x: 0.16973*width, y: 0.56645*height), control2: CGPoint(x: 0.17344*width, y: 0.56596*height))
        path.addCurve(to: CGPoint(x: 0.17965*width, y: 0.5549*height), control1: CGPoint(x: 0.17551*width, y: 0.56465*height), control2: CGPoint(x: 0.17777*width, y: 0.55997*height))
        path.addCurve(to: CGPoint(x: 0.28605*width, y: 0.42861*height), control1: CGPoint(x: 0.19844*width, y: 0.50346*height), control2: CGPoint(x: 0.23492*width, y: 0.46017*height))
        path.addCurve(to: CGPoint(x: 0.30422*width, y: 0.41378*height), control1: CGPoint(x: 0.2966*width, y: 0.42213*height), control2: CGPoint(x: 0.29812*width, y: 0.42082*height))
        path.addCurve(to: CGPoint(x: 0.33937*width, y: 0.31362*height), control1: CGPoint(x: 0.32984*width, y: 0.3837*height), control2: CGPoint(x: 0.34172*width, y: 0.34981*height))
        path.addCurve(to: CGPoint(x: 0.33625*width, y: 0.30263*height), control1: CGPoint(x: 0.33863*width, y: 0.30279*height), control2: CGPoint(x: 0.33852*width, y: 0.30263*height))
        path.addCurve(to: CGPoint(x: 0.33359*width, y: 0.30293*height), control1: CGPoint(x: 0.33504*width, y: 0.30263*height), control2: CGPoint(x: 0.33379*width, y: 0.30275*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.33359*width, y: 0.30293*height))
        return path
    }
}

struct BabyBackLeftPalmShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.92332*width, y: 0.56919*height))
        path.addCurve(to: CGPoint(x: 0.88203*width, y: 0.57824*height), control1: CGPoint(x: 0.90926*width, y: 0.57349*height), control2: CGPoint(x: 0.89605*width, y: 0.57639*height))
        path.addCurve(to: CGPoint(x: 0.85363*width, y: 0.57948*height), control1: CGPoint(x: 0.87582*width, y: 0.57911*height), control2: CGPoint(x: 0.86871*width, y: 0.57941*height))
        path.addLine(to: CGPoint(x: 0.83352*width, y: 0.57953*height))
        path.addLine(to: CGPoint(x: 0.83328*width, y: 0.58255*height))
        path.addCurve(to: CGPoint(x: 0.83133*width, y: 0.5937*height), control1: CGPoint(x: 0.83309*width, y: 0.58421*height), control2: CGPoint(x: 0.83227*width, y: 0.58921*height))
        path.addCurve(to: CGPoint(x: 0.83723*width, y: 0.64533*height), control1: CGPoint(x: 0.82813*width, y: 0.60916*height), control2: CGPoint(x: 0.83039*width, y: 0.62937*height))
        path.addCurve(to: CGPoint(x: 0.85898*width, y: 0.67873*height), control1: CGPoint(x: 0.84258*width, y: 0.65796*height), control2: CGPoint(x: 0.85414*width, y: 0.67564*height))
        path.addCurve(to: CGPoint(x: 0.8723*width, y: 0.67835*height), control1: CGPoint(x: 0.8623*width, y: 0.68088*height), control2: CGPoint(x: 0.8684*width, y: 0.68069*height))
        path.addCurve(to: CGPoint(x: 0.87531*width, y: 0.67496*height), control1: CGPoint(x: 0.87406*width, y: 0.6773*height), control2: CGPoint(x: 0.87531*width, y: 0.6759*height))
        path.addCurve(to: CGPoint(x: 0.87996*width, y: 0.67651*height), control1: CGPoint(x: 0.87531*width, y: 0.67262*height), control2: CGPoint(x: 0.87645*width, y: 0.673*height))
        path.addCurve(to: CGPoint(x: 0.88555*width, y: 0.68081*height), control1: CGPoint(x: 0.88172*width, y: 0.67824*height), control2: CGPoint(x: 0.88418*width, y: 0.6802*height))
        path.addCurve(to: CGPoint(x: 0.89801*width, y: 0.68107*height), control1: CGPoint(x: 0.88852*width, y: 0.68224*height), control2: CGPoint(x: 0.89617*width, y: 0.68242*height))
        path.addCurve(to: CGPoint(x: 0.90039*width, y: 0.67515*height), control1: CGPoint(x: 0.89863*width, y: 0.68058*height), control2: CGPoint(x: 0.89977*width, y: 0.67791*height))
        path.addLine(to: CGPoint(x: 0.90164*width, y: 0.6701*height))
        path.addLine(to: CGPoint(x: 0.90402*width, y: 0.67489*height))
        path.addCurve(to: CGPoint(x: 0.90844*width, y: 0.68149*height), control1: CGPoint(x: 0.90535*width, y: 0.67756*height), control2: CGPoint(x: 0.9073*width, y: 0.68051*height))
        path.addCurve(to: CGPoint(x: 0.92*width, y: 0.68568*height), control1: CGPoint(x: 0.91063*width, y: 0.68322*height), control2: CGPoint(x: 0.9173*width, y: 0.68568*height))
        path.addCurve(to: CGPoint(x: 0.92797*width, y: 0.67405*height), control1: CGPoint(x: 0.92422*width, y: 0.68568*height), control2: CGPoint(x: 0.92785*width, y: 0.68039*height))
        path.addLine(to: CGPoint(x: 0.92797*width, y: 0.67071*height))
        path.addLine(to: CGPoint(x: 0.93*width, y: 0.67232*height))
        path.addCurve(to: CGPoint(x: 0.94312*width, y: 0.67625*height), control1: CGPoint(x: 0.93363*width, y: 0.67503*height), control2: CGPoint(x: 0.93898*width, y: 0.67662*height))
        path.addCurve(to: CGPoint(x: 0.95336*width, y: 0.65487*height), control1: CGPoint(x: 0.95336*width, y: 0.67522*height), control2: CGPoint(x: 0.95645*width, y: 0.66886*height))
        path.addCurve(to: CGPoint(x: 0.95066*width, y: 0.64472*height), control1: CGPoint(x: 0.95242*width, y: 0.65064*height), control2: CGPoint(x: 0.95117*width, y: 0.64608*height))
        path.addCurve(to: CGPoint(x: 0.95004*width, y: 0.64208*height), control1: CGPoint(x: 0.95016*width, y: 0.64336*height), control2: CGPoint(x: 0.94992*width, y: 0.64219*height))
        path.addCurve(to: CGPoint(x: 0.95367*width, y: 0.64491*height), control1: CGPoint(x: 0.95023*width, y: 0.64201*height), control2: CGPoint(x: 0.95191*width, y: 0.64324*height))
        path.addCurve(to: CGPoint(x: 0.96348*width, y: 0.65167*height), control1: CGPoint(x: 0.95539*width, y: 0.64657*height), control2: CGPoint(x: 0.95984*width, y: 0.64965*height))
        path.addCurve(to: CGPoint(x: 0.98027*width, y: 0.65403*height), control1: CGPoint(x: 0.97121*width, y: 0.65611*height), control2: CGPoint(x: 0.97512*width, y: 0.65667*height))
        path.addCurve(to: CGPoint(x: 0.98297*width, y: 0.64675*height), control1: CGPoint(x: 0.98309*width, y: 0.65253*height), control2: CGPoint(x: 0.98316*width, y: 0.65234*height))
        path.addCurve(to: CGPoint(x: 0.96348*width, y: 0.59408*height), control1: CGPoint(x: 0.98246*width, y: 0.63368*height), control2: CGPoint(x: 0.97152*width, y: 0.6043*height))
        path.addCurve(to: CGPoint(x: 0.94457*width, y: 0.57639*height), control1: CGPoint(x: 0.95984*width, y: 0.58959*height), control2: CGPoint(x: 0.94664*width, y: 0.57714*height))
        path.addCurve(to: CGPoint(x: 0.9398*width, y: 0.5672*height), control1: CGPoint(x: 0.94344*width, y: 0.57595*height), control2: CGPoint(x: 0.94098*width, y: 0.57122*height))
        path.addCurve(to: CGPoint(x: 0.93797*width, y: 0.565*height), control1: CGPoint(x: 0.93953*width, y: 0.56599*height), control2: CGPoint(x: 0.93867*width, y: 0.565*height))
        path.addCurve(to: CGPoint(x: 0.92332*width, y: 0.56919*height), control1: CGPoint(x: 0.93723*width, y: 0.56505*height), control2: CGPoint(x: 0.93074*width, y: 0.56697*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.92332*width, y: 0.56919*height))
        return path
    }
}

struct BabyBackRightLegShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.26855*width, y: 0.63176*height))
        path.addCurve(to: CGPoint(x: 0.26664*width, y: 0.63758*height), control1: CGPoint(x: 0.26793*width, y: 0.63258*height), control2: CGPoint(x: 0.26707*width, y: 0.6352*height))
        path.addCurve(to: CGPoint(x: 0.26445*width, y: 0.64498*height), control1: CGPoint(x: 0.26625*width, y: 0.63997*height), control2: CGPoint(x: 0.26531*width, y: 0.64327*height))
        path.addCurve(to: CGPoint(x: 0.26301*width, y: 0.65092*height), control1: CGPoint(x: 0.26363*width, y: 0.64666*height), control2: CGPoint(x: 0.26301*width, y: 0.64935*height))
        path.addCurve(to: CGPoint(x: 0.26195*width, y: 0.65599*height), control1: CGPoint(x: 0.26301*width, y: 0.65253*height), control2: CGPoint(x: 0.26258*width, y: 0.6548*height))
        path.addCurve(to: CGPoint(x: 0.25672*width, y: 0.70167*height), control1: CGPoint(x: 0.26047*width, y: 0.6591*height), control2: CGPoint(x: 0.25797*width, y: 0.68102*height))
        path.addCurve(to: CGPoint(x: 0.27137*width, y: 0.82223*height), control1: CGPoint(x: 0.25355*width, y: 0.75475*height), control2: CGPoint(x: 0.25773*width, y: 0.78937*height))
        path.addCurve(to: CGPoint(x: 0.30133*width, y: 0.87374*height), control1: CGPoint(x: 0.27859*width, y: 0.83975*height), control2: CGPoint(x: 0.29004*width, y: 0.85942*height))
        path.addCurve(to: CGPoint(x: 0.31434*width, y: 0.89979*height), control1: CGPoint(x: 0.3068*width, y: 0.88057*height), control2: CGPoint(x: 0.30984*width, y: 0.88677*height))
        path.addLine(to: CGPoint(x: 0.3177*width, y: 0.90917*height))
        path.addLine(to: CGPoint(x: 0.31789*width, y: 0.94454*height))
        path.addCurve(to: CGPoint(x: 0.31938*width, y: 0.98159*height), control1: CGPoint(x: 0.31812*width, y: 0.96814*height), control2: CGPoint(x: 0.31863*width, y: 0.98047*height))
        path.addCurve(to: CGPoint(x: 0.32504*width, y: 0.98604*height), control1: CGPoint(x: 0.32*width, y: 0.98253*height), control2: CGPoint(x: 0.3225*width, y: 0.98454*height))
        path.addCurve(to: CGPoint(x: 0.35309*width, y: 0.9923*height), control1: CGPoint(x: 0.33098*width, y: 0.98973*height), control2: CGPoint(x: 0.33895*width, y: 0.99149*height))
        path.addCurve(to: CGPoint(x: 0.44059*width, y: 0.99025*height), control1: CGPoint(x: 0.36758*width, y: 0.99312*height), control2: CGPoint(x: 0.41934*width, y: 0.99186*height))
        path.addCurve(to: CGPoint(x: 0.45703*width, y: 0.98898*height), control1: CGPoint(x: 0.4493*width, y: 0.98954*height), control2: CGPoint(x: 0.45664*width, y: 0.98898*height))
        path.addCurve(to: CGPoint(x: 0.46395*width, y: 0.98585*height), control1: CGPoint(x: 0.45746*width, y: 0.98898*height), control2: CGPoint(x: 0.46059*width, y: 0.9876*height))
        path.addCurve(to: CGPoint(x: 0.47328*width, y: 0.97359*height), control1: CGPoint(x: 0.47172*width, y: 0.98204*height), control2: CGPoint(x: 0.47422*width, y: 0.97878*height))
        path.addCurve(to: CGPoint(x: 0.46008*width, y: 0.95675*height), control1: CGPoint(x: 0.47254*width, y: 0.96915*height), control2: CGPoint(x: 0.4673*width, y: 0.9625*height))
        path.addCurve(to: CGPoint(x: 0.43871*width, y: 0.93596*height), control1: CGPoint(x: 0.45273*width, y: 0.95093*height), control2: CGPoint(x: 0.44445*width, y: 0.9429*height))
        path.addCurve(to: CGPoint(x: 0.43023*width, y: 0.92038*height), control1: CGPoint(x: 0.43492*width, y: 0.93158*height), control2: CGPoint(x: 0.43316*width, y: 0.92821*height))
        path.addCurve(to: CGPoint(x: 0.41113*width, y: 0.80151*height), control1: CGPoint(x: 0.41543*width, y: 0.88057*height), control2: CGPoint(x: 0.4098*width, y: 0.84527*height))
        path.addCurve(to: CGPoint(x: 0.41176*width, y: 0.77786*height), control1: CGPoint(x: 0.41156*width, y: 0.78944*height), control2: CGPoint(x: 0.41187*width, y: 0.77879*height))
        path.addCurve(to: CGPoint(x: 0.41871*width, y: 0.74492*height), control1: CGPoint(x: 0.41168*width, y: 0.77461*height), control2: CGPoint(x: 0.41605*width, y: 0.75351*height))
        path.addCurve(to: CGPoint(x: 0.44008*width, y: 0.6976*height), control1: CGPoint(x: 0.42363*width, y: 0.72846*height), control2: CGPoint(x: 0.43453*width, y: 0.70455*height))
        path.addCurve(to: CGPoint(x: 0.44844*width, y: 0.68577*height), control1: CGPoint(x: 0.44477*width, y: 0.69178*height), control2: CGPoint(x: 0.44844*width, y: 0.68659*height))
        path.addCurve(to: CGPoint(x: 0.43031*width, y: 0.68502*height), control1: CGPoint(x: 0.44844*width, y: 0.68528*height), control2: CGPoint(x: 0.44312*width, y: 0.68509*height))
        path.addCurve(to: CGPoint(x: 0.30387*width, y: 0.65536*height), control1: CGPoint(x: 0.37887*width, y: 0.68497*height), control2: CGPoint(x: 0.33695*width, y: 0.67508*height))
        path.addCurve(to: CGPoint(x: 0.27547*width, y: 0.63389*height), control1: CGPoint(x: 0.29441*width, y: 0.64972*height), control2: CGPoint(x: 0.28164*width, y: 0.64002*height))
        path.addCurve(to: CGPoint(x: 0.26855*width, y: 0.63176*height), control1: CGPoint(x: 0.2716*width, y: 0.63001*height), control2: CGPoint(x: 0.27023*width, y: 0.62956*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.26855*width, y: 0.63176*height))
        return path
    }
}

struct BabyBackLeftLegShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.71113*width, y: 0.63789*height))
        path.addCurve(to: CGPoint(x: 0.57418*width, y: 0.68256*height), control1: CGPoint(x: 0.67262*width, y: 0.66479*height), control2: CGPoint(x: 0.62859*width, y: 0.6791*height))
        path.addCurve(to: CGPoint(x: 0.56051*width, y: 0.6843*height), control1: CGPoint(x: 0.56555*width, y: 0.68313*height), control2: CGPoint(x: 0.56109*width, y: 0.68366*height))
        path.addCurve(to: CGPoint(x: 0.56574*width, y: 0.71199*height), control1: CGPoint(x: 0.55844*width, y: 0.68607*height), control2: CGPoint(x: 0.56133*width, y: 0.70132*height))
        path.addCurve(to: CGPoint(x: 0.58234*width, y: 0.76691*height), control1: CGPoint(x: 0.5707*width, y: 0.7239*height), control2: CGPoint(x: 0.57871*width, y: 0.75049*height))
        path.addCurve(to: CGPoint(x: 0.57965*width, y: 0.85421*height), control1: CGPoint(x: 0.58492*width, y: 0.77882*height), control2: CGPoint(x: 0.58336*width, y: 0.82878*height))
        path.addCurve(to: CGPoint(x: 0.5677*width, y: 0.91004*height), control1: CGPoint(x: 0.57676*width, y: 0.87322*height), control2: CGPoint(x: 0.57152*width, y: 0.8979*height))
        path.addCurve(to: CGPoint(x: 0.54172*width, y: 0.94594*height), control1: CGPoint(x: 0.56441*width, y: 0.92047*height), control2: CGPoint(x: 0.5509*width, y: 0.93911*height))
        path.addCurve(to: CGPoint(x: 0.52906*width, y: 0.96003*height), control1: CGPoint(x: 0.53699*width, y: 0.94952*height), control2: CGPoint(x: 0.53258*width, y: 0.95446*height))
        path.addCurve(to: CGPoint(x: 0.52617*width, y: 0.97205*height), control1: CGPoint(x: 0.5266*width, y: 0.9641*height), control2: CGPoint(x: 0.52617*width, y: 0.96552*height))
        path.addCurve(to: CGPoint(x: 0.52691*width, y: 0.98112*height), control1: CGPoint(x: 0.52605*width, y: 0.97612*height), control2: CGPoint(x: 0.52637*width, y: 0.98019*height))
        path.addCurve(to: CGPoint(x: 0.54512*width, y: 0.98866*height), control1: CGPoint(x: 0.52805*width, y: 0.98365*height), control2: CGPoint(x: 0.53605*width, y: 0.98697*height))
        path.addCurve(to: CGPoint(x: 0.61367*width, y: 0.99371*height), control1: CGPoint(x: 0.5609*width, y: 0.99167*height), control2: CGPoint(x: 0.57926*width, y: 0.99303*height))
        path.addCurve(to: CGPoint(x: 0.66016*width, y: 0.99142*height), control1: CGPoint(x: 0.63191*width, y: 0.99408*height), control2: CGPoint(x: 0.65066*width, y: 0.99322*height))
        path.addCurve(to: CGPoint(x: 0.67375*width, y: 0.98372*height), control1: CGPoint(x: 0.66332*width, y: 0.99088*height), control2: CGPoint(x: 0.66984*width, y: 0.98716*height))
        path.addCurve(to: CGPoint(x: 0.6791*width, y: 0.94812*height), control1: CGPoint(x: 0.6791*width, y: 0.97902*height), control2: CGPoint(x: 0.68125*width, y: 0.9647*height))
        path.addCurve(to: CGPoint(x: 0.67953*width, y: 0.92356*height), control1: CGPoint(x: 0.67785*width, y: 0.93942*height), control2: CGPoint(x: 0.67797*width, y: 0.93621*height))
        path.addCurve(to: CGPoint(x: 0.70477*width, y: 0.85736*height), control1: CGPoint(x: 0.68301*width, y: 0.89462*height), control2: CGPoint(x: 0.68609*width, y: 0.88634*height))
        path.addCurve(to: CGPoint(x: 0.73578*width, y: 0.66479*height), control1: CGPoint(x: 0.74133*width, y: 0.80048*height), control2: CGPoint(x: 0.75176*width, y: 0.73561*height))
        path.addCurve(to: CGPoint(x: 0.72363*width, y: 0.62994*height), control1: CGPoint(x: 0.73074*width, y: 0.64282*height), control2: CGPoint(x: 0.72629*width, y: 0.62994*height))
        path.addCurve(to: CGPoint(x: 0.71113*width, y: 0.63789*height), control1: CGPoint(x: 0.72301*width, y: 0.62994*height), control2: CGPoint(x: 0.71742*width, y: 0.63351*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.71113*width, y: 0.63789*height))
        return path
    }
}


