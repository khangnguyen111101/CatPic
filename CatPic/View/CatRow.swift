import SwiftUI

struct CatRow: View{
    var cat: Cat

    var body: some View {
        HStack {
            Text(Cat.name)
        }
    }
}

struct CatRow_Previews: PreviewProvider {
    static var previews : some View {
        Group {
            CatRow(cat: cats[0])
                .previewLayout(.fixed(width: 300, height: 70))
            CatRow(cat: cats[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}