//
//  ConstraintGridView.swift
//  MamApa
//
//  Created by Singgih Tulus Makmud on 03/04/24.
//

import SwiftUI

struct ConstraintGridView: View {
    
    var constraint : Constraint
    @Binding var filteredConstraints: [String]
    
    var body: some View {
        
        Button {
            
            if !filteredConstraints.contains(constraint.name) {
                filteredConstraints.append(constraint.name)
            } else {
                filteredConstraints.removeAll { $0 == constraint.name }
            }
            
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(filteredConstraints.contains(constraint.name) ? .appDarkGreen : .appBeige)
                
                VStack {
                    Image(constraint.imageURL)
                    Text(constraint.name)
                        .foregroundColor(.black)

                }
            }
            .frame(width: 172, height: 202)
        }
    }
}


