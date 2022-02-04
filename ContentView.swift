import SwiftUI






struct Landmark: Hashable, Codable, Identifiable {
    var id = UUID()
    var name: String
    var park: String
    var state: String
    var description: String

    var imageName: String
    var image: Image {
        Image(imageName)
    }
}

var landmarks: [Landmark] = [
    Landmark(name: "Pencil Building", park: "Midtown", state: "GA", description: "Looks a pencil", imageName: "pencil"),Landmark(name: "Pencil Building", park: "Midtown", state: "GA", description: "Looks a pencil", imageName: "pencil"),Landmark(name: "Pencil Building", park: "Midtown", state: "GA", description: "Looks a pencil", imageName: "pencil"),Landmark(name: "Pencil Building", park: "Midtown", state: "GA", description: "Looks a pencil", imageName: "pencil")

]
struct LandmarkRow: View {
    var landmark: Landmark
    
    
    var body: some View {
        HStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(landmark.name)
        }
    }
}

struct LandMarkListView : View
{
    var landmarks : [Landmark]
    
    var body: some View{
        NavigationView {
            List{
                ForEach(landmarks){landmark in
                    NavigationLink(destination: Text("Hello, WOrld")) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkListView(landmarks: landmarks)
    }
}
