//
//  DetailMealView.swift
//  MamApa
//
//  Created by Diki Dwi Diro on 02/04/24.
//

import SwiftUI

enum DetailType: CaseIterable {
    case description, ingredient, instruction
    
    var name: String {
        switch self {
        case .description:
            "Description"
        case .ingredient:
            "Ingredient"
        case .instruction:
            "Instruction"
        }
    }
}

struct DetailMealView: View {
    
    @State private var selectedDetailInformation: DetailType = .description
    
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .fill(.appBeige)
                .ignoresSafeArea()
                
    
            VStack(alignment: .leading, spacing: 15){
                Image(.nasiGoreng)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay(alignment: .topLeading) {
                        Button {
                            
                        } label: {
                            Image(systemName: "chevron.left.circle.fill")
                                .font(.system(size: 40))
                                .foregroundStyle(.white)
                                .padding()
                        }
                    }
                
                Text("Nasi Goreng")
                    .font(.system(.largeTitle, weight: .semibold))
                    .padding([.leading])
                
                Picker("Test", selection: $selectedDetailInformation) {
                    ForEach(DetailType.allCases, id:
                                \.self) { detail in
                        Text(detail.name)
                    }
                }
                .pickerStyle(.segmented)
                .padding(.horizontal)
                
                Text("Nasi goreng menjadi salah satu sajian khas indonesia yang kelezatannya tersohor ke berbagai negara di Dunia. Nasi goreng adalah hidangan nasi yang digoreng dalam minyak goreng atau margarin, biasanya ditambah dengan kecap manis, bawang merah, bawang putih, telur, dan bahan-bahan lainnya seperti daging ayam atau gorengan serta sayuran.")
                    .font(.system(size: 14))
                    .padding(.horizontal)
                
                HStack {
                    HStack {
                        Image(.laukPauk)
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25)
                        
                        Text("Protein")
                            .font(.system(size: 12))
                        
                    }
                    
                    HStack {
                        Image(.makananPokok)
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25)
                        
                        Text("Karbohidrat")
                            .font(.system(size: 12))
                        
                    }
                }
                .foregroundStyle(.secondary)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                
                
                HStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundColor(.appBeige)
                            .padding(.all, 10)
                            .background(Circle().fill(.appDarkGreen))
                    }
                    
                    Button {
                        
                    } label: {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 50)
                            .foregroundColor(.appDarkGreen)
                            .padding(.trailing)
                            .overlay {
                                Text("Mulai Memasak")
                                    .font(.system(.body, weight: .medium))
                                    .foregroundStyle(.appBeige)
                            }

                    }
                }
                .padding(.leading)
                .padding(.bottom)
            }

        }
    }
}

#Preview {
    DetailMealView()
}
