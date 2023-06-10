//
//  RegisterView.swift
//  SwiftUIPractice
//
//  Created by Kaplan2 on 09/06/23.
//

import SwiftUI

struct RegisterView: View {
    @State var firstname = ""
    @State var lastName = ""
    @State var country = ""
    @State var email = ""
    @State var password = ""
    @State var mobile = ""
    var body: some View {
        VStack {
            HStack {
                Text("Register")
                    .font(.system(size: 40))
                    .foregroundColor(Color("bgColor"))
                    .padding(.leading)
                Spacer()
            }
            VStack {
                nameView
                countryView
                emailView
                mobileView
                passwordView
                regiserView
                termsAndConditions
                
            }.padding()
            Spacer()
            loginView
        }
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            RegisterView()
        }
        
    }
}

extension RegisterView {
    
    var regiserView: some View {
        Button {
            
        } label: {
            Text("Register")
                .frame(maxWidth: .infinity,maxHeight: 60)
                .background(Color("bgColor"))
                .foregroundColor(.white)
                .fontWeight(.bold)
                .cornerRadius(30)
        }.padding(.top)
            .padding(.bottom)
    }
    
    var nameView: some View {
        HStack (spacing:10) {
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text("FIRST NAME:").fontWeight(.bold)
                    TextField("First name", text: $firstname)
                        .padding(.leading)
                        .frame(height: 60)
                        .cornerRadius(30)
                        .background(Color.gray.opacity(0.4))
                        .cornerRadius(30)
                }
                    
            }
                
            HStack {
                VStack (alignment: .leading, spacing: 5){
                    Text("LAST NAME:").fontWeight(.bold)
                    TextField("Last name", text: $lastName)
                        .padding(.leading)
                        .frame(height: 60)
                        .cornerRadius(30)
                        .background(Color.gray.opacity(0.4))
                        .cornerRadius(30)
                       
                }
            }
        }
    }
    
    var countryView: some View {
        VStack(alignment:.leading){
            Text("COUNTRY:").fontWeight(.bold)
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.gray.opacity(0.3))
                .frame(height: 60)
                .overlay {
                    Button {
                        country = "India"
                    } label: {
                        HStack {
                            TextField("Country", text: $country)
                                .disabled(true).multilineTextAlignment(.leading)
                            Image(systemName: "plus.circle")
                            
                        }.padding()
                    }
                }
        }
    }
    var loginView: some View {
        VStack {
            Rectangle().frame(height: 1)
                .foregroundColor(Color.gray.opacity(0.5))
            HStack {
               
                Text("Already have an account?")
                    .foregroundColor(.gray.opacity(0.8))
                NavigationLink {
                    LoginView()
                } label: {
                    Text("Login").foregroundColor(Color("bgColor"))
                }
            }
        }
        
    }
    var termsAndConditions: some View {
        HStack (spacing:3){
            Text("By Sign up, You are agree our")
                .foregroundColor(Color.gray.opacity(0.8))
            NavigationLink {
                
            } label: {
                Text("Terms and Conditions.").foregroundColor(Color("bgColor"))
            }
        }.font(.system(size: 15))
    }
    
    var emailView: some View {
        VStack(alignment:.leading) {
            Text("EMAIL:").fontWeight(.bold)
            TextField("Email", text: $email)
                .padding(.leading)
                .frame(height: 60)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(30)
            
        }
    }
    
    var mobileView: some View {
        VStack(alignment:.leading) {
            Text("MOBILE:").fontWeight(.bold)
            TextField("Phone Number", text: $mobile)
                .padding(.leading)
                .frame(height: 60)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(30)
            
        }
    }
    
    var passwordView: some View {
        VStack(alignment:.leading) {
            Text("PASSWORD:").fontWeight(.bold)
            SecureField("******", text: $password)
                .padding(.leading)
                .frame(height: 60)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(30)
        }
    }
}
