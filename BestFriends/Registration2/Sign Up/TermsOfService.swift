//
//  TermsOfService.swift
//  BestFriends
//
//  Created by Social Tech on 9/18/21.
//

import Foundation
import SwiftUI

struct TermsOfServiceView: View {
    
    var body: some View {
        ScrollView{
            
            ZStack {
                
                Color(#colorLiteral(red: 0.968627451, green: 0.9647058824, blue: 0.9960784314, alpha: 0.9))
                    .ignoresSafeArea()
                
                
                VStack {
                    
                    Spacer()
                        .frame(height: 50)
                    
                    Text("Terms of Service")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    Spacer()
                        .frame(height: 15)
                    
                    Text("SOCIALTECH LABS, INC. PRIVACY POLICY")
                        .font(.system(size: 15, weight: .bold))
                        .italic()
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 0)
                    
                    
                    Spacer()
                        .frame(height: 25)
                    
                    
                    Text("SocialTech Labs, Inc. owns the app called, BestFriends. Welcome to a facilitated website and online communication service provided by SocialTech Labs, Inc. (“SocialTech Labs”, “we,” or “us”). These Terms of Service (“Terms”) govern your access to and use of our services, including our various websites, SMS, APIs, email notifications, applications, buttons, widgets, ads, commerce services, and our other covered services that link to these Terms (collectively, the “Services”), and any information, text, links, graphics, photos, audio, videos, or other materials or arrangements of materials uploaded, downloaded or appearing on the Services (collectively referred to as “Content”). By accessing or using the Services, you represent that you have read, understood, and agree to be bound by this Agreement and to the collection and use of your information as set forth in the Privacy Policy, whether or not you are a registered user of our Services.")
                        .font(.system(size: 10, weight: .light))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 10)
                    
                    Spacer()
                        .frame(height: 10)
                    
                    
                    
                    
                    
                    
                    VStack {
                        
                        
                        HStack{
                            Text("WHO MAY USE THE SERVICES")
                                .font(.system(size: 15, weight: .semibold))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, 10)
                            
                            Spacer()
                            
                        }
                        Spacer()
                            .frame(height: 10)
                        
                        Text("You may use the Services only if you agree to this binding Agreement with SocialTech Labs and are not a person barred from receiving services under the laws of any applicable jurisdiction. In any case, you must be at least 13 years old to use the Services. If you are accepting these Terms and using the Services on behalf of a company, organization, government, or other legal entity, you represent and warrant that you are authorized to do so and have the authority to bind such entity to these Terms, in which case the words “you” and “your” as used in these Terms shall refer to such entity.  The Services are not available to any Users previously removed from the Services by SocialTech Labs, unless we have given you written notice of reinstatement. All Users must provide all necessary information and documentation for determining eligibility to use the Services as requested by SocialTech Labs. Eligibility is determined by SocialTech Labs in its sole discretion. You acknowledge and agree that SocialTech Labs may change its eligibility requirements at any time and for any reason..")
                            .font(.system(size: 10, weight: .light))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 10)
                        
                        VStack {
                            
                            Spacer()
                                .frame(height: 10)
                            
                            
                            HStack{
                                Text("PRIVACY")
                                    .font(.system(size: 15, weight: .semibold))
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                
                                Spacer()
                                
                            }
                            Spacer()
                                .frame(height: 10)
                            
                            Text("Our Privacy Policy describes how we handle the information you provide to us when you use our Services. You understand that through your use of the Services you consent to the collection and use (as set forth in the Privacy Policy) of this information, including the transfer of this information to the United States and/or other countries for storage, processing and use by SocialTech Labs and any affiliates.")
                                .font(.system(size: 10, weight: .light))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, 10)
                            
                            VStack {
                                
                                Spacer()
                                    .frame(height: 10)
                                
                                VStack {
                                    
                                    Spacer()
                                        .frame(height: 10)
                                    
                                    
                                    HStack{
                                        Text("CONTENT ON THE SERVICES")
                                            .font(.system(size: 15, weight: .semibold))
                                            .foregroundColor(.black)
                                            .multilineTextAlignment(.leading)
                                            .padding(.horizontal, 10)
                                        
                                        Spacer()
                                        
                                    }
                                    Spacer()
                                        .frame(height: 10)
                                    
                                    Text("You are responsible for your use of the Services and for any Content you provide, including compliance with applicable laws, rules, and regulations. You should only provide Content that you are comfortable sharing with others.")
                                        .font(.system(size: 10, weight: .light))
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.leading)
                                        .padding(.horizontal, 10)
                                    
                                    Spacer()
                                        .frame(height: 10)
                                    
                                    Text("Any use or reliance on any Content or materials posted via the Services or obtained by you through the Services is at your own risk. We do not endorse, support, represent or guarantee the completeness, truthfulness, accuracy, or reliability of any Content or communications posted via the Services or endorse any opinions expressed via the Services. You understand that by using the Services, you may be exposed to Content that might be offensive, harmful, inaccurate or otherwise inappropriate, or in some cases, postings that have been mislabeled or are otherwise deceptive. All Content is the sole responsibility of the person who originated such Content. We may not monitor or control the Content posted via the Services, are not required to monitor or control the content and we cannot take responsibility for such Content.")
                                        .font(.system(size: 10, weight: .light))
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.leading)
                                        .padding(.horizontal, 10)
                                    
                                    Spacer()
                                        .frame(height: 10)
                                    
                                    Text("We reserve the right to remove Content that violates the Agreement, including for example, copyright or trademark violations, impersonation, unlawful conduct, or harassment.")
                                        .font(.system(size: 10, weight: .light))
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.leading)
                                        .padding(.horizontal, 10)
                                    
                                    
                                    
                                    VStack {
                                        
                                        Spacer()
                                            .frame(height: 10)
                                        
                                        
                                        HStack{
                                            Text("ZERO TOLERANCE FOR OBJECTIONABLE CONTENT OR ABUSIVE BEHAVIOR")
                                                .font(.system(size: 15, weight: .semibold))
                                                .foregroundColor(.black)
                                                .multilineTextAlignment(.leading)
                                                .padding(.horizontal, 10)
                                            
                                            Spacer()
                                            
                                        }
                                        Spacer()
                                            .frame(height: 10)
                                        
                                        Text("User agrees that there is ZERO tolerance for objectionable content or abusive users. We have provided the following functions within the application to protect our users:")
                                            .font(.system(size: 10, weight: .light))
                                            .foregroundColor(.black)
                                            .multilineTextAlignment(.leading)
                                            .padding(.horizontal, 10)
                                        
                                        VStack {
                                            
                                            
                                            Spacer()
                                                .frame(height: 10)
                                            
                                            Text("– A method for filtering objectionable content; we use a self-policing methodology where any user that is the victim of abusive behavior may immediately long-tap the abusive text message and tap Delete Message.")
                                                .font(.system(size: 10, weight: .light))
                                                .foregroundColor(.black)
                                                .multilineTextAlignment(.leading)
                                                .padding(.horizontal, 20)
                                            
                                            Spacer()
                                                .frame(height: 10)
                                            
                                            Text("– A mechanism for users to flag objectionable content; in BestFriends the objectionable content in Chat may be Deleted, the user may be Blocked, and the objectionable content may be reported. BestFriends does not provide a mechanism to actually ‘flag’ the content.")
                                                .font(.system(size: 10, weight: .light))
                                                .foregroundColor(.black)
                                                .multilineTextAlignment(.leading)
                                                .padding(.horizontal, 20)
                                            
                                            VStack {
                                                
                                                Spacer()
                                                    .frame(height: 10)
                                                
                                                Text("– A mechanism for users to block abusive users; each user has the ability to navigate to the friend’s user profile and either Report or Block user.")
                                                    .font(.system(size: 10, weight: .light))
                                                    .foregroundColor(.black)
                                                    .multilineTextAlignment(.leading)
                                                    .padding(.horizontal, 20)
                                                
                                                
                                                Spacer()
                                                    .frame(height: 10)
                                                
                                                Text("– A mechanism for users to immediately remove posts from the feed; Each user may long-tap the post in Chat and will be given the option to Delete the post.")
                                                    .font(.system(size: 10, weight: .light))
                                                    .foregroundColor(.black)
                                                    .multilineTextAlignment(.leading)
                                                    .padding(.horizontal, 20)
                                                
                                                VStack {
                                                    
                                                    Spacer()
                                                        .frame(height: 10)
                                                    
                                                    Text("SocialTech Labs will act on objectionable content reports within 24 hours by removing the content (if the user has not already done so) and remove the user who provided the offending content.")
                                                        .font(.system(size: 10, weight: .light))
                                                        .foregroundColor(.black)
                                                        .multilineTextAlignment(.leading)
                                                        .padding(.horizontal, 10)
                                                    
                                                    
                                                    Spacer()
                                                        .frame(height: 10)
                                                    
                                                    Text("Auto-generated email to user that reported a user’s abusive or objectionable behavior.")
                                                        .font(.system(size: 10, weight: .light))
                                                        .foregroundColor(.black)
                                                        .multilineTextAlignment(.leading)
                                                        .padding(.horizontal, 10)
                                                    
                                                    Spacer()
                                                        .frame(height: 10)
                                                    
                                                    Text("* We have received your report. We’re sorry you had a bad experience. We take user abusive or inappropriate behavior very seriously. That is why we have a zero tolerance policy in place. The user you reported will be removed and lose their access to BestFriends. Again, we apologize and if you need our help with anything, please get in touch with us at Admin@SocialTechLabs.com.")
                                                        .font(.system(size: 10, weight: .light))
                                                        .foregroundColor(.black)
                                                        .multilineTextAlignment(.leading)
                                                        .padding(.horizontal, 30)
                                                    
                                                    VStack {
                                                        
                                                        
                                                        Spacer()
                                                            .frame(height: 10)
                                                        
                                                        Text("After report abuse auto generated email to user reported for abusive behavior")
                                                            .font(.system(size: 10, weight: .light))
                                                            .foregroundColor(.black)
                                                            .multilineTextAlignment(.leading)
                                                            .padding(.horizontal, 10)
                                                        
                                                        Spacer()
                                                            .frame(height: 10)
                                                        
                                                        Text("* We have received a report from one of our users that you have displayed abusive or objectionable behavior. As such, you have been removed from BestFriends. If you wish to dispute this report, please email us at ReportAbuse@SocialTechLabs.com.")
                                                            .font(.system(size: 10, weight: .light))
                                                            .foregroundColor(.black)
                                                            .multilineTextAlignment(.leading)
                                                            .padding(.horizontal, 30)
                                                        
                                                        
                                                        VStack {
                                                            
                                                            Spacer()
                                                                .frame(height: 10)
                                                            
                                                            
                                                            HStack{
                                                                Text("DMCA NOTICE")
                                                                    .font(.system(size: 15, weight: .semibold))
                                                                    .foregroundColor(.black)
                                                                    .multilineTextAlignment(.leading)
                                                                    .padding(.horizontal, 10)
                                                                
                                                                Spacer()
                                                                
                                                            }
                                                            Spacer()
                                                                .frame(height: 10)
                                                            
                                                            Text("Since we respect artist and content owner rights, it is SocialTech Lab’s policy to respond to alleged infringement notices that comply with the Digital Millennium Copyright Act of 1998 (“DMCA”).")
                                                                .font(.system(size: 10, weight: .light))
                                                                .foregroundColor(.black)
                                                                .multilineTextAlignment(.leading)
                                                                .padding(.horizontal, 5)
                                                            
                                                            Spacer()
                                                                .frame(height: 10)
                                                            
                                                            
                                                            Text("If you believe that your copyrighted work has been copied in a way that constitutes copyright infringement and is accessible via the Services, please notify SocialTech Lab’s copyright agent as set forth in the DMCA. For your complaint to be valid under the DMCA, you must provide the following information in writing:")
                                                                .font(.system(size: 10, weight: .light))
                                                                .foregroundColor(.black)
                                                                .multilineTextAlignment(.leading)
                                                                .padding(.horizontal, 10)
                                                            
                                                            VStack {
                                                                
                                                                
                                                                Spacer()
                                                                    .frame(height: 10)
                                                                
                                                                Text("- An electronic or physical signature of a person authorized to act on behalf of the copyright owner;")
                                                                    .font(.system(size: 10, weight: .light))
                                                                    .foregroundColor(.black)
                                                                    .multilineTextAlignment(.leading)
                                                                    .padding(.horizontal, 15)
                                                                
                                                                Spacer()
                                                                    .frame(height: 10)
                                                                
                                                                Text("– Identification of the copyrighted work that you claim has been infringed;")
                                                                    .font(.system(size: 10, weight: .light))
                                                                    .foregroundColor(.black)
                                                                    .multilineTextAlignment(.leading)
                                                                    .padding(.horizontal, 10)
                                                                
                                                                VStack {
                                                                    
                                                                    Spacer()
                                                                        .frame(height: 10)
                                                                    
                                                                    Text("– Identification of the material that is claimed to be infringing and where it is located on the Service;")
                                                                        .font(.system(size: 10, weight: .light))
                                                                        .foregroundColor(.black)
                                                                        .multilineTextAlignment(.leading)
                                                                        .padding(.horizontal, 15)
                                                                    
                                                                    Spacer()
                                                                        .frame(height: 10)
                                                                    
                                                                    Text("– Information reasonably sufficient to permit SocialTech Labs to contact you, such as your address, telephone number, and, e-mail address;")
                                                                        .font(.system(size: 10, weight: .light))
                                                                        .foregroundColor(.black)
                                                                        .multilineTextAlignment(.leading)
                                                                        .padding(.horizontal, 15)
                                                                    
                                                                    Spacer()
                                                                        .frame(height: 10)
                                                                    
                                                                    
                                                                    Text("– A statement that you have a good faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or law; and")
                                                                        .font(.system(size: 10, weight: .light))
                                                                        .foregroundColor(.black)
                                                                        .multilineTextAlignment(.leading)
                                                                        .padding(.horizontal, 20)
                                                                    
                                                                    VStack {
                                                                        
                                                                        
                                                                        Spacer()
                                                                            .frame(height: 10)
                                                                        
                                                                        Text("– A statement, made under penalty of perjury, that the above information is accurate and that you are the copyright owner or are authorized to act on behalf of the owner.")
                                                                            .font(.system(size: 10, weight: .light))
                                                                            .foregroundColor(.black)
                                                                            .multilineTextAlignment(.leading)
                                                                            .padding(.horizontal, 15)
                                                                        
                                                                        
                                                                        Spacer()
                                                                            .frame(height: 10)
                                                                        
                                                                        
                                                                        Text("The above information must be submitted to the following DMCA Agent:")
                                                                            .font(.system(size: 10, weight: .light))
                                                                            .foregroundColor(.black)
                                                                            .multilineTextAlignment(.leading)
                                                                            .padding(.horizontal, 10)
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        VStack {
                                                                            
                                                                            Spacer()
                                                                                .frame(height: 10)
                                                                            
                                                                            Text("Attn: DMCA Notice SocialTech Labs, Inc.")
                                                                                .font(.system(size: 10, weight: .light))
                                                                                .foregroundColor(.black)
                                                                                .multilineTextAlignment(.leading)
                                                                                .padding(.horizontal, 15)
                                                                            
                                                                            Spacer()
                                                                                .frame(height: 10)
                                                                            
                                                                            Text("Address: 447 Alden Street, Orange, NJ  07050")
                                                                                .font(.system(size: 10, weight: .light))
                                                                                .foregroundColor(.black)
                                                                                .multilineTextAlignment(.leading)
                                                                                .padding(.horizontal, 20)
                                                                            
                                                                            Spacer()
                                                                                .frame(height: 10)
                                                                            
                                                                            
                                                                            Text("Telephone: (239) 287-6232")
                                                                                .font(.system(size: 10, weight: .light))
                                                                                .foregroundColor(.black)
                                                                                .multilineTextAlignment(.leading)
                                                                                .padding(.horizontal, 15)
                                                                            
                                                                            
                                                                            
                                                                            Spacer()
                                                                                .frame(height: 10)
                                                                            
                                                                            
                                                                            Text("Email: ReportCopyright@SocialTechLabs.com")
                                                                                .font(.system(size: 10, weight: .light))
                                                                                .foregroundColor(.black)
                                                                                .multilineTextAlignment(.leading)
                                                                                .padding(.horizontal, 15)
                                                                            
                                                                            
                                                                            
                                                                            VStack {
                                                                                
                                                                                Spacer()
                                                                                    .frame(height: 20)
                                                                                
                                                                                
                                                                                HStack{
                                                                                    Text("UNDER FEDERAL LAW, IF YOU KNOWINGLY MISREPRESENT THAT ONLINE MATERIAL IS INFRINGING, YOU MAY BE SUBJECT TO CRIMINAL PROSECUTION FOR PERJURY AND CIVIL PENALTIES, INCLUDING MONETARY DAMAGES, COURT COSTS, AND ATTORNEYS FEES.")
                                                                                        .font(.system(size: 15, weight: .semibold))
                                                                                        .foregroundColor(.black)
                                                                                        .multilineTextAlignment(.leading)
                                                                                        .padding(.horizontal, 10)
                                                                                    
                                                                                    Spacer()
                                                                                    
                                                                                }
                                                                                
                                                                                
                                                                                Spacer()
                                                                                    .frame(height: 10)
                                                                                
                                                                                Text("Please note that this procedure is exclusively for notifying BestFriends and its affiliates that your copyrighted material has been infringed. The preceding requirements are intended to comply with SocialTech Lab’s rights and obligations under the DMCA, including 17 U.S.C. 512(c) but do not constitute legal advice. It may be advisable to contact an attorney regarding your rights and obligations under the DMCA and other applicable laws.")
                                                                                    .font(.system(size: 10, weight: .light))
                                                                                    .foregroundColor(.black)
                                                                                    .multilineTextAlignment(.leading)
                                                                                    .padding(.horizontal, 10)
                                                                                
                                                                                VStack {
                                                                                    
                                                                                    
                                                                                    Spacer()
                                                                                        .frame(height: 10)
                                                                                    
                                                                                    Text("In accordance with the DMCA and other applicable law, SocialTech Labs has adopted a policy of terminating, in appropriate circumstances and at SocialTech Labs’s sole discretion, Users who are deemed to be repeat infringers. SocialTech Labs may also at its sole discretion limit access to the Service and/or terminate the Accounts of any Users who infringe any intellectual property rights of others, whether or not there is any repeat infringement.")
                                                                                        .font(.system(size: 10, weight: .light))
                                                                                        .foregroundColor(.black)
                                                                                        .multilineTextAlignment(.leading)
                                                                                        .padding(.horizontal, 10)
                                                                                    
                                                                                    
                                                                                    VStack {
                                                                                        Spacer()
                                                                                            .frame(height: 10)
                                                                                        
                                                                                        HStack{
                                                                                            Text("YOUR RIGHTS AND GRANT OF RIGHTS IN THE CONTENT.")
                                                                                                .font(.system(size: 15, weight: .semibold))
                                                                                                .foregroundColor(.black)
                                                                                                .multilineTextAlignment(.leading)
                                                                                                .padding(.horizontal, 10)
                                                                                            
                                                                                            Spacer()
                                                                                            
                                                                                        }
                                                                                        
                                                                                        Spacer()
                                                                                            .frame(height: 10)
                                                                                        
                                                                                        Text("You retain your rights to any Content you submit, post or display on or through the Services. You own your content.  Any incorporated audio, photos and videos are considered part of the Content.")
                                                                                            .font(.system(size: 10, weight: .light))
                                                                                            .foregroundColor(.black)
                                                                                            .multilineTextAlignment(.leading)
                                                                                            .padding(.horizontal, 10)
                                                                                        VStack {
                                                                                            
                                                                                            Spacer()
                                                                                                .frame(height: 10)
                                                                                            
                                                                                            Text("By submitting, posting or displaying Content on or through the Services, you grant us a worldwide, non-exclusive, royalty-free license (with the right to sublicense) to use, copy, reproduce, process, adapt, modify, publish, transmit, display and distribute such Content in any and all media or distribution methods (now known or later developed). This license authorizes us to make your Content available to the rest of the world and to let others do the same. You agree that this license includes the right for SocialTech Labs to provide, promote, and improve the Services and to make Content submitted to or through the Services available to other companies, organizations or individuals for the syndication, broadcast, distribution, promotion or publication of such Content on other media and services, subject to our terms and conditions for such Content use. Such additional uses by SocialTech Labs, or other companies, organizations or individuals, may be made with no compensation paid to you with respect to the Content that you submit, post, transmit or otherwise make available through the Services.")
                                                                                                .font(.system(size: 10, weight: .light))
                                                                                                .foregroundColor(.black)
                                                                                                .multilineTextAlignment(.leading)
                                                                                                .padding(.horizontal, 10)
                                                                                            Spacer()
                                                                                                .frame(height: 10)
                                                                                            Text("You represent and warrant that you have, or have obtained, all rights, licenses, consents, permissions, power and/or authority necessary to grant the rights granted herein for any Content that you submit, post or display on or through the Services. You agree that such Content will not contain material subject to copyright or other proprietary rights, unless you have necessary permission or are otherwise legally entitled to post the material and to grant MadlyRad Labs the license described above.")
                                                                                                .font(.system(size: 10, weight: .light)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                            VStack {
                                                                                                Spacer()
                                                                                                    .frame(height: 10)
                                                                                                VStack {
                                                                                                    HStack{
                                                                                                        
                                                                                                        
                                                                                                        Text("SOCIALTECH LABS SOFTWARE FROM ITUNES.")
                                                                                                            .font(.system(size: 15, weight: .semibold))
                                                                                                            .foregroundColor(.black)
                                                                                                            .multilineTextAlignment(.leading)
                                                                                                            .padding(.horizontal, 10)
                                                                                                        Spacer()
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                    Spacer()
                                                                                                        .frame(height: 10)
                                                                                                    Text("The following applies to any SocialTech Labs Software you acquire from the iTunes Store (“iTunes-Sourced Software”): You acknowledge and agree that this Agreement is solely between you and SocialTech, not Apple, and that Apple has no responsibility for the iTunes-Sourced Software or content thereof. Your use of the iTunes-Sourced Software must comply with the App Store Terms of Service. You acknowledge that Apple has no obligation whatsoever to furnish any maintenance and support services with respect to the iTunes-Sourced Software. In the event of any failure of the iTunes-Sourced Software to conform to any applicable warranty, you may notify Apple, and Apple will refund the purchase price for the iTunes-Sourced Software to you; to the maximum extent permitted by applicable law, Apple will have no other warranty obligation whatsoever with respect to the iTunes-Sourced Software, and any other claims, losses, liabilities, damages, costs, or expenses attributable to any failure to conform to any warranty will be solely governed by this Agreement and any law applicable to BestFriends as provider of the software. You acknowledge that Apple is not responsible for addressing any claims of you or any third party relating to the iTunes-Sourced Software or your possession and/or use of the iTunes-Sourced Software, including but not limited to: (i) product liability claims; (ii) any claim that the iTunes-Sourced Software fails to conform to any applicable legal or regulatory requirement; and (iii) claims arising under consumer protection or similar legislation; and all such claims are governed solely by this Agreement and any law applicable to BestFriends as provider of the software. You acknowledge that, in the event of any third party claim that the iTunes-Sourced Software or your possession and use of that iTunes-Sourced Software infringes that third party’s intellectual property rights, SocialTech Labs, not Apple, will be solely responsible for the investigation, defense, settlement, and discharge of any such intellectual property infringement claim to the extent required by this Agreement. You and SocialTech Labs acknowledge and agree that Apple, and Apples subsidiaries, are third party beneficiaries of this Agreement as relates to your license of the iTunes-Sourced Software, and that, upon your acceptance of the terms and conditions of this Agreement, Apple will have the right (and will be deemed to have accepted the right) to enforce this Agreement as relates to your license of the iTunes-Sourced Software against you as a third party beneficiary thereof.")
                                                                                                        .font(.system(size: 10, weight: .light)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                    VStack {
                                                                                                        Spacer()
                                                                                                            .frame(height: 10)
                                                                                                        VStack {
                                                                                                            HStack{
                                                                                                                Text("SOCIALTECH LABS SOFTWARE FROM GOOGLE").font(.system(size: 15, weight: .semibold)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                Spacer()
                                                                                                            }
                                                                                                            Spacer()
                                                                                                                .frame(height: 10)
                                                                                                            Text("The following applies to any Mobile Software you acquire from the Google Play Store (“Google-Sourced Software”): (i) you acknowledge that the Agreement is between you and SocialTech Labs only and not with Google, Inc. (“Google”); (ii) your use of Google-Sourced Software must comply with Google’s then-current Google Play Store Terms of Service; (iii) Google is only a provider of the Google Play Store where you obtained the Google-Sourced Software; (iv) SocialTech Labs, and not Google, is solely responsible for its Google-Sourced Software; (v) Google has no obligation or liability to you with respect to Google-Sourced Software or this Agreement; and (vi) you acknowledge and agree that Google is a third-party beneficiary to this Agreement as it relates to MadlyRad Labs’s Google-Sourced Software.")
                                                                                                                .font(.system(size: 10, weight: .light)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                            
                                                                                                            VStack {
                                                                                                                
                                                                                                                Spacer().frame(height: 10)
                                                                                                                
                                                                                                                HStack{
                                                                                                                    Text("USING THE SERVICES").font(.system(size: 15, weight: .semibold)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                    Spacer()
                                                                                                                    
                                                                                                                }
                                                                                                                Spacer()
                                                                                                                    .frame(height: 10)
                                                                                                                Text("You may use the Services only in compliance with these Terms and all applicable laws, rules and regulations.")
                                                                                                                    .font(.system(size: 10, weight: .light)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 7)
                                                                                                                Spacer()
                                                                                                                    .frame(height: 10)
                                                                                                                
                                                                                                                Text("Our Services may change from time to time, at our discretion. We may stop (permanently or temporarily) providing the Services or any features within the Services to you or to users generally. We also retain the right to create limits on use and storage at our sole discretion at any time. We may also remove or refuse to distribute any Content on the Services, suspend or terminate users, and reclaim usernames without liability to you.")
                                                                                                                    .font(.system(size: 10, weight: .light)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                Spacer()
                                                                                                                    .frame(height: 10)
                                                                                                                
                                                                                                                Text("In consideration for SocialTech Labs granting you access to and use of the Services, you agree that SocialTech Labs and its third-party providers and partners may place advertising on the Services or in connection with the display of Content or information from the Services whether submitted by you or others. You also agree not to misuse our Services, for example, by interfering with them or accessing them using a method other than the interface and the instructions that we provide. You may not do any of the following while accessing or using the Services: (i) access, tamper with, or use non-public areas of the Services, SocialTech Lab’s computer systems, or the technical delivery systems of SocialTech Lab’s providers; (ii) probe, scan, or test the vulnerability of any system or network or breach or circumvent any security or authentication measures; (iii) access or search or attempt to access or search the Services by any means (automated or otherwise) other than through our currently available, published interfaces that are provided by SocialTech Labs; (iv) forge any TCP/IP packet header or any part of the header information in any email or posting, or in any way use the Services to send altered, deceptive or false source-identifying information; or (v) interfere with, or disrupt, (or attempt to do so), the access of any user, host or network, including, without limitation, sending a virus, overloading, flooding, spamming, mail-bombing the Services, or by scripting the creation of Content in such a manner as to interfere with or create an undue burden on the Services. We also reserve the right to access, read, preserve, and disclose any information as we reasonably believe is necessary to (i) satisfy any applicable law, regulation, legal process or governmental request, (ii) enforce the Terms, including investigation of potential violations hereof, (iii) detect, prevent, or otherwise address fraud, security or technical issues, (iv) respond to user support requests, or (v) protect the rights, property or safety of SocialTech Labs, its users and the public. SocialTech Labs does not disclose personally-identifying information to third parties except in accordance with our Privacy Policy.")
                                                                                                                    .font(.system(size: 10, weight: .light)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                VStack {
                                                                                                                    
                                                                                                                    Spacer()
                                                                                                                        .frame(height: 10)
                                                                                                                    VStack {
                                                                                                                        
                                                                                                                        Spacer().frame(height: 10)
                                                                                                                        
                                                                                                                        HStack{
                                                                                                                            Text("YOUR ACCOUNT").font(.system(size: 15, weight: .semibold)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                            Spacer()
                                                                                                                            
                                                                                                                        }
                                                                                                                        Spacer()
                                                                                                                            .frame(height: 10)
                                                                                                                        Text("You may need to create an account to use some of our Services. You are responsible for safeguarding your account, so use a strong password and limit its use to this account. We cannot and will not be liable for any loss or damage arising from your failure to comply with the above.")
                                                                                                                            .font(.system(size: 10, weight: .light)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                        Spacer()
                                                                                                                            .frame(height: 10)
                                                                                                                        
                                                                                                                        Text("You can control most communications from the Services. We may need to provide you with certain communications, such as service announcements and administrative messages. These communications are considered part of the Services and your account, and you may not be able to opt-out from receiving them. If you added your phone number to your account and you later change or deactivate that phone number, you must update your account information to help prevent us from communicating with anyone who acquires your old number.  By providing your phone number to us you authorize MadlyRad Labs to communicate with you via voice, text and to leave voicemail messages.")
                                                                                                                            .font(.system(size: 10, weight: .light)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                        Spacer()
                                                                                                                            .frame(height: 10)
                                                                                                                        
                                                                                                                        VStack {
                                                                                                                            
                                                                                                                            Spacer().frame(height: 10)
                                                                                                                            
                                                                                                                            HStack{
                                                                                                                                Text("YOUR LICENSE TO USE THE SERVICES").font(.system(size: 15, weight: .semibold)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                                Spacer()
                                                                                                                                
                                                                                                                            }
                                                                                                                            Spacer()
                                                                                                                                .frame(height: 10)
                                                                                                                            Text("SocialTech Labs gives you a personal, worldwide, royalty-free, non-assignable and non-exclusive license to use the software provided to you as part of the Services. This license has the sole purpose of enabling you to use and enjoy the benefit of the Services as provided by SocialTech Labs and consistent with these Terms.")
                                                                                                                                .font(.system(size: 10, weight: .light)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                            Spacer()
                                                                                                                                .frame(height: 10)
                                                                                                                            
                                                                                                                            Text("The Services are protected by copyright, trademark, and other laws of both the United States and foreign countries. Nothing in the Terms gives you a right to use the SocialTech Labs name or any of the its trademarks, logos, domain names, and other distinctive brand features. All right, title, and interest in and to the Services (excluding Content provided by users) are and will remain the exclusive property of SocialTech Labs and its licensors.")
                                                                                                                                .font(.system(size: 10, weight: .light)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                            Spacer()
                                                                                                                                .frame(height: 10)
                                                                                                                            
                                                                                                                            VStack {
                                                                                                                                
                                                                                                                                Spacer().frame(height: 10)
                                                                                                                                
                                                                                                                                HStack{
                                                                                                                                    Text("ENDING THESE TERMS").font(.system(size: 15, weight: .semibold)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                                    Spacer()
                                                                                                                                    
                                                                                                                                }
                                                                                                                                Spacer()
                                                                                                                                    .frame(height: 10)
                                                                                                                                Text("You may end your legal agreement with SocialTech Labs at any time by deactivating your accounts and discontinuing your use of the Services.")
                                                                                                                                    .font(.system(size: 10, weight: .light)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 5)
                                                                                                                                Spacer()
                                                                                                                                    .frame(height: 10)
                                                                                                                                
                                                                                                                                Text("We may suspend or terminate your account or cease providing you with all or part of the Services at any time for any or no reason, including, but not limited to, if we reasonably believe: (i) you have violated these Terms (ii) you create risk or possible legal exposure for us; (iii) your account should be removed due to prolonged inactivity; or (iv) our provision of the Services to you is no longer commercially viable. We will make reasonable efforts to notify you by the email address associated with your account or the next time you attempt to access your account, depending on the circumstances. In all such cases, the Terms shall terminate, including, without limitation, your license to use the Services, except that the Terms reasonably intended to survive the termination of this agreement, i.e. intellectual property protection, shall survive.")
                                                                                                                                    .font(.system(size: 10, weight: .light)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                                Spacer()
                                                                                                                                    .frame(height: 10)
                                                                                                                                
                                                                                                                                VStack {
                                                                                                                                    
                                                                                                                                    Spacer().frame(height: 10)
                                                                                                                                    
                                                                                                                                    HStack{
                                                                                                                                        Text("DISCLAIMERS AND LIMITATIONS OF LIABILITY").font(.system(size: 15, weight: .semibold)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                                        Spacer()
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                    Spacer()
                                                                                                                                        .frame(height: 10)
                                                                                                                                    Text("THE SERVICES ARE AVAILABLE “AS-IS”")
                                                                                                                                        .font(.system(size: 10, weight: .light)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 5)
                                                                                                                                    Spacer()
                                                                                                                                        .frame(height: 10)
                                                                                                                                    
                                                                                                                                    Text("Your access to and use of the Services or any Content are at your own risk. You understand and agree that the Services are provided to you on an “AS IS” and “AS AVAILABLE” basis. The “SocialTech Labs Entities” refers to MadlyRad Labs, its parents, affiliates, related companies, officers, directors, employees, agents, representatives, partners, and licensors. Without limiting the foregoing, to the maximum extent permitted under applicable law, THE SOCIALTECH LABS ENTITIES DISCLAIM ALL WARRANTIES AND CONDITIONS, WHETHER EXPRESS OR IMPLIED, OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, OR NON-INFRINGEMENT. The SocialTech Labs Entities make no warranty or representation and disclaim all responsibility and liability for: (i) the completeness, accuracy, availability, timeliness, security or reliability of the Services or any Content; (ii) any harm to your computer system, loss of data, or other harm that results from your access to or use of the Services or any Content; (iii) the deletion of, or the failure to store or to transmit, any Content and other communications maintained by the Services; and (iv) whether the Services will meet your requirements or be available on an uninterrupted, secure, or error-free basis. No advice or information, whether oral or written, obtained from the SocialTech Labs Entities or through the Services, will create any warranty or representation not expressly made herein.")
                                                                                                                                        .font(.system(size: 10, weight: .light)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                                    Spacer()
                                                                                                                                        .frame(height: 10)
                                                                                                                                    
                                                                                                                                    VStack {
                                                                                                                                        
                                                                                                                                        Spacer().frame(height: 10)
                                                                                                                                        
                                                                                                                                        HStack{
                                                                                                                                            Text("LIMITATION OF LIABILITY").font(.system(size: 15, weight: .semibold)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                                            Spacer()
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                        Spacer()
                                                                                                                                            .frame(height: 10)
                                                                                                                                        Text("TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, THE SOCIALTECH LABS ENTITIES SHALL NOT BE LIABLE FOR ANY INDIRECT, INCIDENTAL, SPECIAL, CONSEQUENTIAL OR PUNITIVE DAMAGES, OR ANY LOSS OF PROFITS OR REVENUES, WHETHER INCURRED DIRECTLY OR INDIRECTLY, OR ANY LOSS OF DATA, USE, GOODWILL, OR OTHER INTANGIBLE LOSSES, RESULTING FROM (i) YOUR ACCESS TO OR USE OF OR INABILITY TO ACCESS OR USE THE SERVICES; (ii) ANY CONDUCT OR CONTENT OF ANY THIRD PARTY ON THE SERVICES, INCLUDING WITHOUT LIMITATION, ANY DEFAMATORY, OFFENSIVE OR ILLEGAL CONDUCT OF OTHER USERS OR THIRD PARTIES; (iii) ANY CONTENT OBTAINED FROM THE SERVICES; OR (iv) UNAUTHORIZED ACCESS, USE OR ALTERATION OF YOUR TRANSMISSIONS OR CONTENT. IN NO EVENT SHALL THE AGGREGATE LIABILITY OF THE SOCIALTECH LABS ENTITIES EXCEED THE GREATER OF ONE HUNDRED U.S. DOLLARS (U.S. $100.00) OR THE AMOUNT YOU PAID SOCIALTECH LABS, IF ANY, IN THE PAST SIX MONTHS FOR THE SERVICES GIVING RISE TO THE CLAIM. THE LIMITATIONS OF THIS SUBSECTION SHALL APPLY TO ANY THEORY OF LIABILITY, WHETHER BASED ON WARRANTY, CONTRACT, STATUTE, TORT (INCLUDING NEGLIGENCE) OR OTHERWISE, AND WHETHER OR NOT THE SOCIALTECH LABS ENTITIES HAVE BEEN INFORMED OF THE POSSIBILITY OF ANY SUCH DAMAGE, AND EVEN IF A REMEDY SET FORTH HEREIN IS FOUND TO HAVE FAILED OF ITS ESSENTIAL PURPOSE.")
                                                                                                                                            .font(.system(size: 10, weight: .medium)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                                        Spacer()
                                                                                                                                            .frame(height: 10)
                                                                                                                                        
                                                                                                                                        VStack {
                                                                                                                                            
                                                                                                                                            Spacer().frame(height: 10)
                                                                                                                                            
                                                                                                                                            HStack{
                                                                                                                                                Text("GENERAL").font(.system(size: 15, weight: .semibold)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                                                Spacer()
                                                                                                                                                
                                                                                                                                            }
                                                                                                                                            Spacer()
                                                                                                                                                .frame(height: 10)
                                                                                                                                            Text("We may revise these Terms from time to time. The changes will not be retroactive, and the most current version of the Terms, which will always be at https://SocialTechLabs.com, will govern our relationship with you. We will try to notify you of material revisions, for example via a service notification or an email to the email associated with your account. By continuing to access or use the Services after those revisions become effective, you agree to be bound by the revised Terms.")
                                                                                                                                                .font(.system(size: 10, weight: .light)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                                            Spacer()
                                                                                                                                                .frame(height: 10)
                                                                                                                                            
                                                                                                                                            Text("The laws of the State of Georgia, excluding its choice of law provisions, will govern these Terms and any dispute that arises between you and SocialTech Labs. All disputes related to these Terms or the Services will be brought solely in the federal or state courts located in Fulton County, Georgia, United States, and you consent to personal jurisdiction and waive any objection as to inconvenient forum.")
                                                                                                                                                .font(.system(size: 10, weight: .light)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                                            Spacer()
                                                                                                                                                .frame(height: 10)
                                                                                                                                            
                                                                                                                                            VStack {
                                                                                                                                                
                                                                                                                                                Spacer()
                                                                                                                                                    .frame(height: 10)
                                                                                                                                                Text("n the event that any provision SocialTech Labs these Terms is held to be invalid or unenforceable, then that provision will be limited or eliminated to the minimum extent necessary, and the remaining provisions of these Terms will remain in full force and effect. SocialTech Lab’s failure to enforce any right or provision of these Terms will not be deemed a waiver of such right or provision.")
                                                                                                                                                    .font(.system(size: 10, weight: .light)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                                                Spacer()
                                                                                                                                                    .frame(height: 10)
                                                                                                                                                
                                                                                                                                                Text("These Terms are an agreement between you and SocialTech Labs, Inc., 447 Alden Street, Orange, NJ 07050. If you have any questions about these Terms, please contact us.")
                                                                                                                                                    .font(.system(size: 10, weight: .light)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                                                Spacer()
                                                                                                                                                    .frame(height: 10)
                                                                                                                                                
                                                                                                                                                VStack {
                                                                                                                                                    
                                                                                                                                                    Text("Effective: March 12, 2021")
                                                                                                                                                        .font(.system(size: 10, weight: .light)).foregroundColor(.black).multilineTextAlignment(.leading).padding(.horizontal, 10)
                                                                                                                                                    Spacer()
                                                                                                                                                        .frame(height: 10)
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                            
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                                
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                
                            }
                        }
                    }
                }
            }
        }
    }
}


