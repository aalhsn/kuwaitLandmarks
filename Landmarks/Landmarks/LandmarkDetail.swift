/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            VStack {
                MapView(landmark: landmark, coordinate: landmark.locationCoordinate)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 300)
                
                CircleImage(image: landmark.image)
                    .offset(y:-100)
                    .padding(.bottom, -100)
                
                VStack(alignment: .leading) {
                    Text(landmark.name).font(.largeTitle)
                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                            .fontWeight(.light)
                        Spacer()
                        Text(landmark.state)
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .foregroundColor(Color.gray)
                    }
                    Divider()
                    Text("More about \(landmark.name):")
                        .font(.headline)
                        .fontWeight(.light)
                        .foregroundColor(Color.blue)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 4.0)
                    ScrollView {
                        Text(landmark.description)
                            .font(.callout)
                            .fontWeight(.thin)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            
                    }
                }
                .padding()
                
                Spacer()
            }
            .navigationBarTitle(Text(landmark.name), displayMode: .inline)
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
