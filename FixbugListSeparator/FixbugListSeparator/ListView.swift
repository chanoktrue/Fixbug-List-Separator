//
//  ListView.swift
//  FixbugListSeparator
//
//  Created by Thongchai Subsaidee on 17/5/2564 BE.
//

import SwiftUI

struct ListView: View {
    
    var names = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M"]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(names, id: \.self) { name in
                        NavigationLink(
                            destination: Text(name),
                            label: {
                                ListCell(name: name)
                            })
                        
                    }
                    
                    Spacer()
                        
                }
            }
            .navigationTitle("Remove separator")
        }
    }
}

struct ListCell: View {
    var name: String = ""
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.white)
                .shadow(radius: 1, y:1)
                .frame(width: UIScreen.main.bounds.width - 32, height: 80, alignment: .center)
            
            HStack {
                Text(name)
                    .accentColor(.primary)
                    .padding()
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.purple)
                    .padding(.trailing)
            }
            .padding([.leading, .trailing])
            
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

