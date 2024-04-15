

import SwiftUI

struct SideBarScreen: View {
    
    @EnvironmentObject var stockState: StockState
    
    var body: some View {
        VStack(alignment: .leading) {
            StockListScreen(vm: StockListViewModel(stockState: stockState))
        }
    }
}

struct SideBarScreen_Previews: PreviewProvider {
    static var previews: some View {
        SideBarScreen()
            .environmentObject(AppState())
    }
}
