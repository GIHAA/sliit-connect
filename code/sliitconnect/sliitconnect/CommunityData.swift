//  CommunityData.swift
//  sliitconnect
//
//  Created by Gihan Sudeepa on 2025-03-08.
//

import Foundation

struct CommunityMember: Identifiable {
    var id = UUID()
    var name: String
    var imageURL: String
}

struct Community: Identifiable {
    let id = UUID()
    let name: String
    let photoURL: String
    let tags: [String]
    let description: String
    var leader: CommunityMember
    var members: [CommunityMember]
    var skills: [String]
    var totalMembers: Int {
        return members.count + 1
    }
}

let defaultImageURL = "https://i.ibb.co/R4PS1bL5/36430259.jpg"

let popularCommunities: [Community] = [
    Community(
        name: "Foss Community",
        photoURL: defaultImageURL,
        tags: ["Technology", "Coding", "Programming"],
        description: "A club for technology enthusiasts, focusing on coding and programming.",
        leader: CommunityMember(name: "Supun", imageURL: "https://i.ibb.co/1Hz4W78/5873314.webp"),
        members: [
            CommunityMember(name: "Ashan", imageURL: "https://i.ibb.co/23gg7qzh/images.jpg"),
            CommunityMember(name: "Gihan", imageURL: "https://i.ibb.co/Gvp49GDk/images.jpg"),
            CommunityMember(name: "Sapumal", imageURL: "https://i.ibb.co/0RQ56ScY/sports-boy-3d-icon-download-in-png-blend-fbx-gltf-file-formats-male-player-child-cute-avatar-pack-pe.png")
        ],
        skills: ["Swift", "Java", "C++", "Python"]
    ),
    Community(
        name: "MS Club of SLIIT",
        photoURL: "https://i.ibb.co/MDWYgtQK/images.png",
        tags: ["Photography", "Technology", "Coding"],
        description: "Explore the world of photography, from camera techniques to photo editing.",
        leader: CommunityMember(name: "Jane Smith", imageURL: defaultImageURL),
        members: [
            CommunityMember(name: "Eve", imageURL: defaultImageURL),
            CommunityMember(name: "Mallory", imageURL: defaultImageURL),
            CommunityMember(name: "Trudy", imageURL: defaultImageURL)
        ],
        skills: ["Photography", "Editing", "Camera Operation"]
    ),
    Community(
        name: "SESC",
        photoURL: "https://i.ibb.co/cK3qQDKW/images.png",
        tags: ["Music", "Singing", "Instruments"],
        description: "A group of passionate musicians who come together to create and perform music.",
        leader: CommunityMember(name: "Michael Johnson", imageURL: defaultImageURL),
        members: [
            CommunityMember(name: "Sarah", imageURL: defaultImageURL),
            CommunityMember(name: "James", imageURL: defaultImageURL),
            CommunityMember(name: "Emily", imageURL: defaultImageURL)
        ],
        skills: ["Guitar", "Singing", "Songwriting", "Piano"]
    ),
    Community(
        name: "Leo Club of SLIIT",
        photoURL: "https://i.ibb.co/rJBHcNB/images.jpg",
        tags: ["Acting", "Theater", "Performance"],
        description: "A club where aspiring actors can practice and perform theatrical plays.",
        leader: CommunityMember(name: "David Williams", imageURL: defaultImageURL),
        members: [
            CommunityMember(name: "Sophie", imageURL: defaultImageURL),
            CommunityMember(name: "Ryan", imageURL: defaultImageURL),
            CommunityMember(name: "Olivia", imageURL: defaultImageURL)
        ],
        skills: ["Acting", "Directing", "Playwriting", "Stage Design"]
    ),
    Community(
        name: "SLIIT Gaming Community",
        photoURL: "https://i.ibb.co/YBZrMV05/images.jpg",
        tags: ["Sports", "Athletics", "Outdoor"],
        description: "Join in for various outdoor sports and athletic events that promote teamwork and fitness.",
        leader: CommunityMember(name: "Tom Brown", imageURL: defaultImageURL),
        members: [
            CommunityMember(name: "Lucas", imageURL: defaultImageURL),
            CommunityMember(name: "Emma", imageURL: defaultImageURL),
            CommunityMember(name: "Noah", imageURL: defaultImageURL)
        ],
        skills: ["Football", "Basketball", "Volleyball", "Tennis"]
    ),
]
