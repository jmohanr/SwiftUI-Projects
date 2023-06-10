//
//  LoginView.swift
//  SwiftUIPractice
//
//  Created by Kaplan2 on 09/06/23.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    @State var isPresented = false
    @State var alertMessage = ""
    var body: some View {
        VStack(alignment: .center,spacing: 10) {
            VStack {
                HStack{
                    Text("Login").foregroundColor(Color("bgColor"))
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .padding(.bottom)
                    Spacer()
                }
                emailView
                passwordView
                loginView
                forgotpasswordView
            }.padding()
            Spacer()
            registerView
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
       
    }
}

extension LoginView {
    var emailView: some View {
        VStack(alignment:.leading) {
            Text("YOUR EMAIL:").font(.system(size: 20))
                .fontWeight(.bold)
            TextField("EnterEmail", text: $email)
                .padding(.leading)
                .frame(height: 60)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(30)
        }
    }
    
    var passwordView: some View {
        VStack(alignment:.leading) {
            Text("PASSWORD:").font(.system(size: 20))
                .fontWeight(.bold)
            SecureField("*******", text: $password)
                .padding(.leading)
                .frame(height: 60)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(30)
        }
        .padding(.bottom)
    }
    
    var registerView: some View {
        VStack {
            Rectangle().frame(height: 1)
                .foregroundColor(Color.gray.opacity(0.6))
            HStack(spacing: 5) {
                Text("Don't have account?").foregroundColor(.gray)
                NavigationLink {
                    RegisterView()
                } label: {
                    Text("Register").foregroundColor(Color("bgColor"))
                }
            }.fontDesign(.monospaced)
        }
        
    }
    
    var forgotpasswordView: some View {
        HStack(spacing: 5) {
            Text("Can't login?").foregroundColor(.gray)
            NavigationLink {
                ForgotPasswordView()
            } label: {
                Text("Forgot Password!").foregroundColor(Color("bgColor"))
            }
        }.fontDesign(.monospaced)
    }
    
    var loginView: some View {
        Button {
            if password.count > 6 && email.count > 6 {
                print("\(password),\(email)")
                alertMessage = "LoginSucess"
            } else {
                alertMessage = "Check email and password"
            }
            isPresented = true
        } label: {
            Text("Login")
                .frame(maxWidth: .infinity,maxHeight: 60)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .background(Color("bgColor"))
                .cornerRadius(30)
        }.alert("Sucess", isPresented: $isPresented) {
            
        } message: {
            Text(alertMessage)
        }
    }
}
