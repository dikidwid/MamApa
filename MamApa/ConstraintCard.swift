//
//  ConstraintCard.swift
//  MamApa
//
//  Created by Singgih Tulus Makmud on 03/04/24.
//

import SwiftUI

struct ConstraintCard: View {
    
    let constraint: Constraint
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.appBeige)
            
            VStack {
                Image(constraint.imageURL)
                Text(constraint.name)
            }
        }
    }
}
