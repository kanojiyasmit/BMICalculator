//
//  SettingsView.swift
//  BMI
//
//  Created by Smit Kanojiya on 02/08/23.
//

import SwiftUI


struct SettingsView: View {
    @StateObject private var viewModel = SettingsViewModel()
    var body: some View {
        VStack {
            NavigationBar(title: "Settings")
            ForEach(viewModel.settings) { setting in
                NavigationLink {
                    SettingPage(title: setting.title,options: setting.options)
                } label: {
                    SettingsRow(settings: setting)
                }
                .buttonStyle(.plain)
            }
            .padding(EdgeInsets(top: 0, leading: 30, bottom: 50, trailing: 30))
            .frame(maxWidth: .infinity,alignment: .leading)
            Spacer()
            Text("This app was developed by Smile")
                .font(.VarelaRound(size: 18))
        }
        .navigationBarBackButtonHidden()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
struct SettingsRow: View {
    var settings: Settings
    var body: some View {
        HStack(spacing: 25) {
            Image(settings.imageName)
                .resizable()
                .frame(width: 25, height: 25)
            Text(LocalizedStringKey(settings.title))
                .font(.VarelaRound(size: 18))
            Spacer()
            Image(systemName: "chevron.forward")
        }
    }
}
