//
//  Constraint.swift
//  MamApa
//
//  Created by Singgih Tulus Makmud on 03/04/24.
//

import Foundation

struct Constraint: Identifiable {
    
    let id = UUID()
    let imageURL: String
    let name: String
    
    static let sampleContraints: [Constraint] = [
        
        Constraint(imageURL: "kacang", name: "Kacang"),
        Constraint(imageURL: "daging", name: "Daging"),
        Constraint(imageURL: "seafood", name: "Hidangan Laut"),
        Constraint(imageURL: "tepung", name: "Tepung"),
        Constraint(imageURL: "telur", name: "Telur"),
        Constraint(imageURL: "susu", name: "Susu"),
        Constraint(imageURL: "nonhalal", name: "Non Halal"),
        Constraint(imageURL: "sapi", name: "Sapi")
        
    ]
    
    
}

struct dislikeConstraint: Identifiable {
    
    let id = UUID()
    let name: String
    let icon: String
    
    static let dagingConstraints: [dislikeConstraint] = [
        dislikeConstraint(name: "Ayam", icon: "🐔"),
        dislikeConstraint(name: "Sapi", icon: "🐮"),
        dislikeConstraint(name: "Babi", icon: "🐷"),
        dislikeConstraint(name: "Ikan", icon: "🐟"),
        dislikeConstraint(name: "Cumi", icon: "🦑"),
        dislikeConstraint(name: "Telur", icon: "🥚"),
        dislikeConstraint(name: "Udang", icon: "🦐"),
        
        dislikeConstraint(name: "Gurita", icon: "🐙"),
        dislikeConstraint(name: "Bebek", icon: "🦆"),
        dislikeConstraint(name: "Kepiting", icon: "🦀"),
        dislikeConstraint(name: "Kambing", icon: "🐐"),
        
        dislikeConstraint(name: "Bakso", icon: "🍡"),
        dislikeConstraint(name: "Kelinci", icon: "🐇"),

    ]
    
    static let sayuranConstraints: [dislikeConstraint] = [
        dislikeConstraint(name: "Jagung", icon: "🌽"),
        dislikeConstraint(name: "Tomat", icon: "🍅"),
        dislikeConstraint(name: "Terong", icon: "🍆"),
        dislikeConstraint(name: "Timun", icon: "🥒"),
        dislikeConstraint(name: "Wortel", icon: "🥕"),
        dislikeConstraint(name: "Brokoli", icon: "🥦"),
        dislikeConstraint(name: "Cabai", icon: "🌶️"),
        dislikeConstraint(name: "Pok Choy", icon: "🥬"),
        dislikeConstraint(name: "Jamur", icon: "🍄"),
    ]
    
    static let lainnyaConstraints: [dislikeConstraint] = [
        dislikeConstraint(name: "Kecap", icon: "🥣"),
        dislikeConstraint(name: "Saus", icon: "🥫"),
        dislikeConstraint(name: "Alkohol", icon: "🍾"),
        dislikeConstraint(name: "Madu", icon: "🍯"),
    
    ]
    
}
