//
//  HomePageView.swift
//  BMI
//
//  Created by Smit Kanojiya on 02/08/23.
//

import SwiftUI

struct HomePageView: View {
    @StateObject private var viewModel = HomeViewModel()
    @State private var isShowingBMIResult = false
    var body: some View {
        VStack(spacing: 25) {
            HStack {
                Text(LocalizedStringKey("BMI Check"))
                    .font(.PatuaOne(size: 40))
                    .foregroundColor(.TextColor)
                Spacer()
                NavigationLink {
                    SettingsView()
                } label: {
                    Image(systemName: "gearshape")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.TextColor)
                }
            }
            Text("Select Your Sex")
                .font(.VarelaRound(size: 18))
                .foregroundColor(.TextColor)
            HStack(spacing: 25) {
                GenderBox(gender: "Male", selectedGender: $viewModel.selectedGender)
                GenderBox(gender: "Female", selectedGender: $viewModel.selectedGender)
            }
            VStack(spacing: 10) {
                Text("Select your height")
                Text("\(Int(viewModel.height)) (cm)")
                Slider(value: $viewModel.height, in: 100...220, step: 1)
                    .tint(.PrimaryColor)
            }
            .font(.VarelaRound(size: 18))
            .padding()
            .frame(maxWidth: .infinity,maxHeight: 150)
            .background(Color.BoxColor)
            .cornerRadius(15)
            
            HStack(spacing: 25) {
                IncrementDecrementBox(title: "Age", value: $viewModel.age)
                IncrementDecrementBox(title: "Weight", value: $viewModel.weight)
            }
            Button {
                isShowingBMIResult = true
            } label: {
                Text("Calculate")
            }
            .buttonStyle(CustomButtonStyle())
            .fullScreenCover(isPresented: $isShowingBMIResult) {
                BMIResultView(viewModel: BMIResultViewModel(bmi: viewModel.bmi))
            }
        }
        .padding(.horizontal,30)
        .navigationBarBackButtonHidden()
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
