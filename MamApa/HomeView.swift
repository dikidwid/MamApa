//
//  HomeView.swift
//  MamApa
//
//  Created by Diki Dwi Diro on 01/04/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isShowMealFilter: Bool = false
    @Binding var selectedTab: Tab
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Mau makan apa hari ini?")
                    .font(.system(size: 24, weight: .bold))
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ScrollView(.vertical) {
                    ScrollViewReader { value in
                        ForEach(0..<10) { index in
                            MealCardView(scrollValue: value, index: index)
                        }
                    }
                }
            }
            .padding(.all, 16)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    
                    Image(.appLogo)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.leading)
                        .padding(.top)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isShowMealFilter = true
                    } label: {
                        Image(systemName: "line.3.horizontal.decrease")
                            .foregroundStyle(.appDarkGreen)
                            .font(.title3)
                            .padding(.trailing)
                        
                    }
                }
            }
            .toolbarTitleDisplayMode(.inline)
            .sheet(isPresented: $isShowMealFilter) {
                MealFilterView(isShowMealFilter: $isShowMealFilter)
                    .presentationDragIndicator(.visible)
            }
        }
    }
}

#Preview {
    HomeView(selectedTab: .constant(.Home))
}

struct MealCardView: View {
    
    var scrollValue: ScrollViewProxy
    var index: Int
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(.appBeige)
            .overlay(alignment: .top) {
                VStack(alignment: .center, spacing: 15) {
                    Image(.gadoGado)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 330, height: 330)
                    
                    HStack {
                        VStack {
                            Text("Gado - Gado")
                                .font(.system(.title, weight: .bold))
                        }
                        
                        Spacer()
                        
                        Label("10 Menit", systemImage: "timer")
                            .font(.system(.body))
                        
                    }
                    
                    Text("Gado-gado adalah makanan yang terdiri atas sayur-sayuran, kentang, tempe, tahu, telur rebus, dan lain-lain")
                        .font(.system(.subheadline, weight: .regular))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
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
                    
                    HStack {
                        Button {
                            withAnimation {
                                scrollValue.scrollTo(index - 1, anchor: .center)
                                
                            }                                            } label: {
                                RoundedRectangle(cornerRadius:  15)
                                    .stroke(lineWidth: 2)
                                    .frame(height: 50)
                                    .overlay {
                                        Image(systemName: "hand.thumbsdown")
                                            .font(.system(.title2, weight: .semibold))
                                    }
                                    .foregroundStyle(.appDarkGreen)
                                
                            }
                        Button {
                            withAnimation {
                                scrollValue.scrollTo(index + 1, anchor: .center)
                                
                            }
                        } label: {
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(lineWidth: 2)
                                .frame(height: 50)
                                .overlay {
                                    Image(systemName: "hand.thumbsup")
                                        .font(.system(.title2, weight: .semibold))
                                }
                                .foregroundStyle(.appDarkGreen)
                            
                        }
                    }
                    
                    
                }
                .padding()
            }
            .frame(height: 590)
            .padding(.bottom)
            .id(index)
    }
}
