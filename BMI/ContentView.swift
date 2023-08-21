//
//  ContentView.swift
//  BMI
//
//  Created by Smit Kanojiya on 25/07/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = OnboardingViewModel()
    var body: some View {
        NavigationStack {
            TabView(selection: $viewModel.currentPageIndex) {
                ForEach(viewModel.pages.indices) { index in
                    OnboardingPageView(page: viewModel.pages[index])
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            HStack {
                if !viewModel.isLastPage {
                    Button("Skip") {
                        viewModel.skip()
                    }
                    .padding(25)
                    .foregroundColor(.PrimaryColor)
                    .font(.VarelaRound(size: 18))
                    Spacer()
                    CustomTabIndicator(pageCount: viewModel.pages.count, currentIndex: viewModel.currentPageIndex)
                        .padding(.horizontal, 10)
                    Spacer()
                    Button {
                        viewModel.next()
                    } label: {
                        Image(systemName: "arrow.forward")
                    }
                    .padding(25)
                    .foregroundColor(.PrimaryColor)
                } else {
                    NavigationLink {
                        HomePageView()
                    } label: {
                        Text("Get Started")
                    }
                    .buttonStyle(CustomButtonStyle())
                }
            }
        }
        .background(Color.BackgroundColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
