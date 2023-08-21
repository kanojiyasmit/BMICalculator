//
//  BMIResultView.swift
//  BMI
//
//  Created by Smit Kanojiya on 18/08/23.
//

import SwiftUI

struct BMIResultView: View {
    @ObservedObject var viewModel: BMIResultViewModel
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        VStack(spacing: 30) {
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "arrow.backward")
                    .resizable()
                    .frame(width: 25,height: 24)
                    .foregroundColor(.black)
                    .bold()
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            Spacer()
            if viewModel.isIdealBMI {
                Text("You have the ideal BMI")
                    .font(.PatuaOne(size: 40))
                    .multilineTextAlignment(.center)
            } else {
                Text("Your BMI")
                    .font(.PatuaOne(size: 40))
            }
            Text("\(String(format: "%.1f", viewModel.bmi))")
                .font(.PatuaOne(size: 100))
                .foregroundColor(.PrimaryColor)
            Text(LocalizedStringKey(viewModel.congratulatoryMessage()))
                .font(.VarelaRound(size: 18))
                .multilineTextAlignment(.center)
            Spacer()
            Button("Share") {
                // Implement share functionality
            }
            .buttonStyle(CustomButtonStyle())
        }
        .padding(.horizontal,30)
    }
}

struct BMIResultView_Previews: PreviewProvider {
    static var previews: some View {
        BMIResultView(viewModel: BMIResultViewModel(bmi: 22))
    }
}
