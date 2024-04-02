//
//  Filter.swift
//  MamApa
//
//  Created by Diki Dwi Diro on 02/04/24.
//

import Foundation

struct Filter: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    
    static func createProteinIngredients() -> [Filter] {
        let ingredients = [
            Filter(name: "Ayam", icon: "🐔"),
            Filter(name: "Sapi", icon: "🐮"),
            Filter(name: "Babi", icon: "🐷"),
            Filter(name: "Ikan", icon: "🐟"),
            Filter(name: "Telur", icon: "🥚"),
            Filter(name: "Tahu", icon: "🧈"),
            Filter(name: "Tempe", icon: "🫘"),
            Filter(name: "Udang", icon: "🦐")
        ]
        return ingredients
    }
    
    static func createVegetableIngredients() -> [Filter] {
        let ingredients = [
            Filter(name: "Jagung", icon: "🌽"),
            Filter(name: "Tomat", icon: "🍅"),
            Filter(name: "Terong", icon: "🍆"),
            Filter(name: "Timun", icon: "🥒"),
            Filter(name: "Wortel", icon: "🥕"),
            Filter(name: "Brokoli", icon: "🥦"),
            Filter(name: "Cabai", icon: "🌶️"),
            Filter(name: "Pok Choy", icon: "🥬")
            ]
        return ingredients
    }
    
    static func createCarbohydrateIngredients() -> [Filter] {
        let ingredients = [
            Filter(name: "Nasi", icon: "🍚"),
            Filter(name: "Kentang", icon: "🥔"),
            Filter(name: "Roti", icon: "🍞"),
            Filter(name: "Singkong", icon: "🫓"),
            Filter(name: "Mie", icon: "🍜"),
            Filter(name: "Bihun", icon: "🍝"),
            Filter(name: "Ubi", icon: "🍠"),
            Filter(name: "Gandum", icon: "🌾")
            
            ]
        return ingredients
    }
    
    static func createEstimationDuration() -> [Filter] {
        let ingredients = [
            Filter(name: "< 10 Menit", icon: ""),
            Filter(name: "< 15 Menit", icon: ""),
            Filter(name: "< 30 Menit", icon: ""),
            Filter(name: "< 45 Menit", icon: ""),
            Filter(name: "< 60 Menit", icon: ""),
            Filter(name: "> 60 Menit", icon: ""),
            ]
        return ingredients
    }
}
