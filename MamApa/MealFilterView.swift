//
//  MealFilterView.swift
//  MamApa
//
//  Created by Diki Dwi Diro on 01/04/24.
//

import SwiftUI

struct MealFilterView: View {
    
    @State private var filteredIngredients: [String] = []
    @State private var showDisliked: Bool = false
    @State private var showMyPreference: Bool = false
    @State private var showFavoriteList: Bool = false
    @State private var showMyWishlist: Bool = false
    @State private var showMenuHistory: Bool = false

    @Binding var isShowMealFilter: Bool
    
    let proteinIngredients: [Filter] = Filter.createProteinIngredients()
    let vegetableIngredients: [Filter] = Filter.createVegetableIngredients()
    let carbohydrateIngredients: [Filter] = Filter.createCarbohydrateIngredients()
    let durationEstimations: [Filter] = Filter.createEstimationDuration()

    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    Text("Ada bahan apa aja nih?")
                        .font(.system(.title2, weight: .semibold))
                    
                    Text("Silahkan pilih bahan yang anda miliki")
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .padding(.bottom, 25)
                    
                    IngredientGridView(filteredIngredients: $filteredIngredients, ingredients: proteinIngredients, title: "Lauk Pauk")
                    
                    IngredientGridView(filteredIngredients: $filteredIngredients, ingredients: vegetableIngredients,  title: "Sayuran")
                    
                    IngredientGridView(filteredIngredients: $filteredIngredients, ingredients: carbohydrateIngredients,  title: "Makanan Pokok")
                        .padding(.bottom)
                    
                    Text("Durasi")
                        .font(.system(.title2, weight: .semibold))
                    
                    Text("Silakan pilih estimasi durasi untuk anda menyiapkannya")
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .padding(.bottom, 25)
                    
                    IngredientGridView(filteredIngredients: $filteredIngredients, ingredients: durationEstimations, title: "")
                        .offset(y: -40)
                        .padding(.bottom)
                                        
                    VStack(alignment: .leading) {
                        Text("Preferensi")
                            .font(.system(.title2, weight: .semibold))
                            .foregroundStyle(.black)
                        
                        Text("Silakan aktifkan/non-aktifkan")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        
                        Toggle(isOn: $showDisliked, label: {
                            Text("Bahan yang saya tidak suka")
                        })
                        
                        Toggle(isOn: $showMyPreference, label: {
                            Text("Preferensi Saya")
                        })
                        
                        Toggle(isOn: $showFavoriteList, label: {
                            Text("List Favorite")
                        })
                        
                        Toggle(isOn: $showMyWishlist, label: {
                            Text("Wishlisht Saya")
                        })
                        
                        Toggle(isOn: $showMenuHistory, label: {
                            Text("Riwayat Menu")
                        })
                    }
                    .tint(.yellow)
                    .foregroundStyle(.appDarkGreen)
                    .offset(y: -40)
                    
                    Button {
                        isShowMealFilter = false
                    } label: {
                        Text("Simpan")
                            .fontWeight(.semibold)
                            .padding()
                            .frame(maxWidth: .infinity)
                    }
                    .buttonBorderShape(.roundedRectangle)
                    .buttonStyle(.borderedProminent)
                    .tint(.appDarkGreen)
                    .offset(y: -10)
                }
                .padding()
                .navigationTitle("Filter")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            isShowMealFilter = false
                        } label: {
                            HStack {
                                Image(systemName: "chevron.left")
                                Text("Batal")
                            }
                            .fontWeight(.medium)
                        }
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            withAnimation {
                                self.filteredIngredients = []
                            }
                        } label: {
                            Text("Reset")
                                .fontWeight(.medium)
                        }
                    }
                    
            }
            }
        }
    }
}

#Preview {
    MealFilterView(isShowMealFilter: .constant(true))
}

struct IngredientGridView: View {
    
    @Binding var filteredIngredients: [String]
    let ingredients: [Filter]
    let title: String
    let fourColumnsGridItems: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()) ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.system(.callout, weight: .medium))
                .padding(.bottom)
            
            HStack {
                LazyVGrid(columns: fourColumnsGridItems, spacing: 20){
                    ForEach (ingredients) { proteinType in
                        if proteinType.name != "Babi" {
                            RoundedRectangle(cornerRadius: 25.0)
                                .stroke(lineWidth: 1.5)
                                .fill(filteredIngredients.contains(proteinType.name) ? .appDarkGreen :.appDarkGreen )
                                .frame(height: 44)
                                .overlay {
                                    Button {
                                        if !filteredIngredients.contains(proteinType.name) {
                                            filteredIngredients.append(proteinType.name)
                                        } else {
                                            if let index = filteredIngredients.firstIndex(where: { $0 == proteinType.name }) {
                                                filteredIngredients.remove(at: index)
                                            }
                                        }
                                        print(filteredIngredients)
                                    } label: {
                                        HStack {
                                            Text(proteinType.icon)
                                            Text(proteinType.name)
                                                .foregroundStyle(filteredIngredients.contains(proteinType.name) ? .appDarkGreen : .appDarkGreen)
                                        }
                                        .font(.footnote)
                                    }
                                }
                                .background {
                                    if filteredIngredients.contains(proteinType.name) {
                                        RoundedRectangle(cornerRadius: 25)
                                            .fill(.appBeige.opacity(0.8))
                                    }
                                }
                        }
                        
                    }
                }
            }
            .foregroundStyle(.appDarkGreen)
        }
        .padding(.bottom)
    }
}
