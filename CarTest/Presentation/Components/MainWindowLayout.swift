//
//  MainWindowLayout.swift
//  CarTest
//
//  Created by Bhagwat Singh on 20/05/24.
//

import SwiftUI

struct MainWindowLayout<MainView: View, SideColumn: View>: View {

    var mainView: MainView
    var sideColumnView: SideColumn

    init(@ViewBuilder mainView: () -> MainView,
         @ViewBuilder sideColumnView: () -> SideColumn) {

        self.mainView = mainView()
        self.sideColumnView = sideColumnView()
    }
    var body: some View {
        HStack(alignment: .bottom, spacing: Theme.Spacing.standard) {
            mainView
                .roundCorner(radius: 46)
            sideColumnView
                .roundCorner(radius: 46)
        }
        .background(Color.clear)
    }
}

#Preview {
    MainWindowLayout(mainView: { },
                     sideColumnView: { })
}
