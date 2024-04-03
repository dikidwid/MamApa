//
//  ConstraintsView.swift
//  MamApa
//
//  Created by Singgih Tulus Makmud on 03/04/24.
//

import SwiftUI

struct ConstraintView: View {
    
    enum Step {
        case selectingConstraints
        case additionalQuestions
    }
    
    let columns : [GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible())]
    
    let columns4 : [GridItem] = [GridItem(.flexible()),
                                 GridItem(.flexible()),
                                 GridItem(.flexible())]
    
    @State private var progress = 0.5
    @State private var filteredConstraints: [String] = []
    @State private var currentStep: Step = .selectingConstraints

    var body: some View {
        
        ScrollView {
            
            VStack {
                
                ProgressView(value: progress)
                    .frame(width: 359, height: 10)
                    .scaleEffect(CGSize(width: 1.0, height: 3.0))
                    .cornerRadius(10)
                    .background(Color.yellow)
                    .tint(.appDarkGreen)
                    .padding(30)
                
                if currentStep == .selectingConstraints {
                    
                    Text("Sebelum mulai, yuk sesuaikan dulu!")
                        .font(.system(size: 16))
                        .padding(1)
                    
                    Text("Tidak bisa makan:")
                        .font(.system(size: 20))
                        .bold()
                    
                    LazyVGrid(columns : columns){
                        ForEach(Constraint.sampleContraints){ constraint in
                            ConstraintGridView(constraint: constraint, filteredConstraints: $filteredConstraints)
                        }
                    }
                    .padding(25)
                    
                } else if currentStep == .additionalQuestions {
                    
                    Text("Sebelum mulai, yuk sesuaikan dulu!")
                        .font(.system(size: 16))
                        .padding(1)
                    
                    Text("Tidak suka:")
                        .font(.system(size: 20))
                        .bold()
                        .padding(.bottom)
                    
                    VStack (alignment: .leading) {
                        Text("Daging")
                            .font(.system(.title2, weight: .semibold))
                            .padding(.horizontal)
                        Text("Silakan pilih jenis daging yang tidak disukai")
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .padding(.horizontal)
                            
                        LazyVGrid(columns : columns4){
                            ForEach(dislikeConstraint.dagingConstraints){ constraint in
                                DislikeConstraintGridView(filteredConstraints: $filteredConstraints, dislikeConstraint: constraint)
                            }
                        }
                    }
                    .padding(.horizontal, 30)
                    .padding(.bottom)
                    
                    
                    VStack (alignment: .leading) {
                        Text("Sayuran")
                            .font(.system(.title2, weight: .semibold))
                            .padding(.horizontal)
                            
                        LazyVGrid(columns : columns4){
                            ForEach(dislikeConstraint.sayuranConstraints){ constraint in
                                DislikeConstraintGridView(filteredConstraints: $filteredConstraints, dislikeConstraint: constraint)
                            }
                        }
                    }
                    .padding(.horizontal, 30)
                    .padding(.bottom)
                    
                    VStack (alignment: .leading) {
                        Text("Lainnya")
                            .font(.system(.title2, weight: .semibold))
                            .padding(.horizontal)
                            
                        LazyVGrid(columns : columns4){
                            ForEach(dislikeConstraint.lainnyaConstraints){ constraint in
                                DislikeConstraintGridView(filteredConstraints: $filteredConstraints, dislikeConstraint: constraint)
                            }
                        }
                    }
                    .padding(.horizontal, 30)
                    .padding(.bottom)


                    
                    
                    
                    
                    
                }
                
                Button {
                    withAnimation {
                        if currentStep == .selectingConstraints {
                            progress = 1
                            currentStep = .additionalQuestions
                        }
                    }
                    
                    print(filteredConstraints)
                } label: {
                    Text(currentStep == .selectingConstraints ? "Lanjutkan" : "Simpan")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                    
                }
                .padding(.horizontal, 30)
                .buttonBorderShape(.roundedRectangle)
                .buttonStyle(.borderedProminent)
                .tint(.appDarkGreen)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ConstraintView()
}

struct ConstraintDislikeView: View {
    var body: some View {
        Text("test")
    }
}




