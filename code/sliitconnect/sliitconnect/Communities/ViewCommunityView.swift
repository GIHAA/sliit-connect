import SwiftUI

struct ViewCommunityView: View {
    @State var title: String
    var photoURL: String
    var leader: CommunityMember
    var members: [CommunityMember]
    var description: String
    var onJoinAction: () -> Void

    @State private var navigateToForm = false

    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        // Community Image
                        AsyncImage(url: URL(string: photoURL)) { image in
                            image.resizable().scaledToFill()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(height: 200)
                        .cornerRadius(15)
                        .padding()

                        // About Section
                        Text("About")
                            .font(.system(size: 24))
                            .bold()
                            .padding(.horizontal)

                        // Leader Info
                        HStack {
                            AsyncImage(url: URL(string: leader.imageURL)) { image in
                                image.resizable()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())

                            Text(leader.name)
                                .font(.title3)
                                .bold()
                        }
                        .padding(.horizontal)

                        // Members
                        Text("Members")
                            .font(.headline)
                            .padding(.horizontal)

                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(members) { member in
                                VStack {
                                    AsyncImage(url: URL(string: member.imageURL)) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())

                                    Text(member.name)
                                        .font(.caption)
                                }
                            }
                        }
                        .padding(.horizontal)

                        // Description
                        Text(description)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                    }
                    .padding(.top)
                }

                // Button triggers navigation
                CustomButton(
                    title: "Join Community",
                    backgroundColor: Color.blue,
                    textColor: Color.white
                ) {
                    onJoinAction()
                    print("Join Community button tapped")
                    navigateToForm = true
                }
                .padding()

                // Hidden navigation trigger
                NavigationLink(destination: RegisterToCommunityView(), isActive: $navigateToForm) {
                    EmptyView()
                }
                .hidden()
            }
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

// MARK: - Preview

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleLeader = CommunityMember(name: "Leader Name", imageURL: "https://i.ibb.co/R4PS1bL5/36430259.jpg")
        let sampleMembers = [
            CommunityMember(name: "Member 1", imageURL: "https://i.ibb.co/R4PS1bL5/36430259.jpg"),
            CommunityMember(name: "Member 2", imageURL: "https://i.ibb.co/R4PS1bL5/36430259.jpg"),
            CommunityMember(name: "Member 3", imageURL: "https://i.ibb.co/R4PS1bL5/36430259.jpg")
        ]

        return ViewCommunityView(
            title: "Foss Community",
            photoURL: "https://i.ibb.co/R4PS1bL5/36430259.jpg",
            leader: sampleLeader,
            members: sampleMembers,
            description: "Description of the community...",
            onJoinAction: {
                print("Join button tapped")
            }
        )
    }
}
