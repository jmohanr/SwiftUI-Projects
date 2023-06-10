//
//  ForgotPasswordView.swift
//  SwiftUIPractice
//
//  Created by Kaplan2 on 09/06/23.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State var header = "Reset Password"
    @State var desc = "Enter the correct  Email/Phone number for OTP"
    @State var isPresentEmailView = true
    @State var input = ""
    @State var resetText = "Send OTP"
    var body: some View {
        VStack (alignment:.leading) {
            headerView
             if isPresentEmailView {
                 emailView
             } else {
                 otpView
             }
            submitView
        }.padding()
        Spacer()
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}

extension ForgotPasswordView {
    
    var emailView: some View {
        VStack(alignment:.leading) {
            Text("EMAIL/PHONE NUMBER:").fontWeight(.bold)
            TextField("email/phone number", text: $input)
                .padding(.leading)
                .frame(height: 60)
                .background(Color.gray.opacity(0.4))
                .cornerRadius(30)
                
        } .padding()
    }
    var otpView: some View {
        VStack {
            VStack(alignment:.leading) {
                Text("OTP CODE:").fontWeight(.bold)
                TextField("otp", text: $input)
                    .padding(.leading)
                    .frame(height: 60)
                    .background(Color.gray.opacity(0.4))
                    .cornerRadius(30)
            } .padding()
        }
    }
    var headerView: some View {
        VStack(alignment:.leading,spacing: 20) {
            Text(header).foregroundColor(Color("bgColor"))
                .font(.system(size: 40))
                .fontWeight(.bold)
            Text(desc).foregroundColor(.gray.opacity(0.8))
        }.padding()
    }
    
    var submitView: some View {
        Button {
            if input.count > 0 {
                header = !isPresentEmailView ? "Reset Password" : "Confirmation"
                desc = !isPresentEmailView ? "Enter the correct  Email/Phone number for OTP" : "Code Message has been set to your phone number/ email address and please enter OTP below to reset your passord"
                resetText = isPresentEmailView ? "Sbumit" : "Send OTP"
                isPresentEmailView.toggle()
                input = ""
            }
        } label: {
            Text(resetText).foregroundColor(Color.white)
                .frame(maxWidth: .infinity,maxHeight: 60)
                .background(Color("bgColor"))
                .cornerRadius(30)
                .fontWeight(.bold)
        }.padding()
    }
}
