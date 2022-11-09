import SwiftUI

func RandomBorgir() -> String{
    let things = ["Amongus BTS chicken nugget meal","McChicken","McHuman","Burger king with fries and coke","A drink like sprite","Travis scott meal, but better","Normal chicken nuggets(not amongus)","Nothing more","Stop eating fast food, its 2 unhealthy"]
    return String(things.randomElement()!)
    }

struct ContentView: View {
    @State var Goodthing1: String = ""
    @State var Goodthing2: String = ""
    @State var Goodthing3: String = ""
    @State var GoodThingPrompt: String = RandomBorgir()
    var body: some View {
        VStack {
            Text("Fast food chooser!")
                .font(.largeTitle)
                .padding()
                .foregroundColor(.blue)
            Text("This is what HANDSOME LISA decided you want, please fill the prompts below to change what you want about it!")
                .padding()
                .font(.subheadline)
            if (GoodThingPrompt == "Amongus BTS chicken nugget meal"){
                Image("amogus")
                    .resizable()
                    .scaledToFit()
            }
                    
            else{
                Image("Handsome lisa")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(
                        Color.black, lineWidth: 5))
                    .frame(width:CGFloat(300),height:CGFloat(200))
            }
            Text(GoodThingPrompt)
                .font(.subheadline)
                .foregroundColor(.orange)
            TextField("Will you answer all these questions truthfully?(Y/N)", text:$Goodthing1)
                .textFieldStyle(.roundedBorder)
            TextField("Do you love amongus?(Y/N)", text:$Goodthing2)
                .textFieldStyle(.roundedBorder)
            TextField("Are you a avid computer science student?(Y/N)", text:$Goodthing3)
                .textFieldStyle(.roundedBorder)
            Button("I dont like this food, give me something else!"){
                GoodThingPrompt = RandomBorgir()
                if (Goodthing3 != "Y" && Goodthing3 != "y" && Goodthing3 != "yes"){
                    GoodThingPrompt = "Why don't you love cs???,chane it to Y right now"
                
                }
                if(Goodthing2 == "Y"){
                    GoodThingPrompt = "Amongus BTS chicken nugget meal"
                }
                if(Goodthing1 != "Y"){
                    GoodThingPrompt = "Sorry, we are not able to help those who do not believe in the power of truth, please change it to Y NOW"
                }
                
            }
            .buttonStyle(.bordered)
            .padding()
            
            
        }
    }
}

