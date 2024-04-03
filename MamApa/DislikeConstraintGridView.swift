//
//  DislikeConstraintGridView.swift
//  MamApa
//
//  Created by Singgih Tulus Makmud on 03/04/24.
//

import SwiftUI

struct DislikeConstraintGridView: View {
    
    @Binding var filteredConstraints: [String]
    
    var dislikeConstraint: dislikeConstraint
    
    var body: some View {
        
        Button {
            
            if !filteredConstraints.contains(dislikeConstraint.name){
                filteredConstraints.append(dislikeConstraint.name)
            } else {
                filteredConstraints.removeAll { $0 == dislikeConstraint.name }
            }
            
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .stroke(lineWidth: 1.5)
                    .foregroundColor(.appDarkGreen)
                    .background(filteredConstraints.contains(dislikeConstraint.name) ? .appBeige : .white)
                    .frame(height: 31)
                
                HStack {
                    Text(dislikeConstraint.icon)
                    
                    Text(dislikeConstraint.name)
                        .foregroundColor(.appDarkGreen)
                    
                }
                .font(.footnote)
            }
            
        }
    }
}
