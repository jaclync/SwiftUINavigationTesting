import SwiftUI

struct RecipeView: View {
    let name: String

    var body: some View {
        Text(name)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(name: "🍮")
    }
}
