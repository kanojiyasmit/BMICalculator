//
//  SettingPage.swift
//  BMI
//
//  Created by Smit Kanojiya on 09/08/23.
//

import SwiftUI

struct SettingPage: View {
    let title: String
    let options: [String]
    var body: some View {
        VStack {
            NavigationBar(title: title)
            ForEach(options, id: \.self) { option in
                HStack (spacing: 25){
                    Image("Unchecked")
                    Text(LocalizedStringKey(option))
                        .font(.VarelaRound(size: 18))
                }
                .frame(maxWidth: .infinity,alignment: .leading)
            }
            .padding(EdgeInsets(top: 0, leading: 30, bottom: 50, trailing: 30))
            Spacer()
            Text("This app was developed by Smile")
                .font(.VarelaRound(size: 18))
        }
        .navigationBarBackButtonHidden()
    }
}
