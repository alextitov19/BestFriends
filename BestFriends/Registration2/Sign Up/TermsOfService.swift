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
                ZStack {
                    Circle()
                        .frame(width: 400, height: 400)
                        .foregroundColor(Color(#colorLiteral(red: 0.7753084898, green: 0.6548191905, blue: 0.9909761548, alpha: 1)))
                        .offset(x: 200, y: -400)

                    Circle()
                        .frame(width: 300, height: 300)
                        .foregroundColor(Color(#colorLiteral(red: 0.7753084898, green: 0.6548191905, blue: 0.9909761548, alpha: 1)))
                        .offset(x: -200, y: -100)

                    Circle()
                        .frame(width: 200, height: 200)
                        .foregroundColor(Color(#colorLiteral(red: 0.7753084898, green: 0.6548191905, blue: 0.9909761548, alpha: 1)))
                        .offset(x: 150, y: 100)

        

//
//        VStack {
//
//            Spacer()
//                .frame(height: 70)
//
//            Text("Privacy Policy")
//                .font(.system(size: 25, weight: .bold))
//                .foregroundColor(.black)
//                .multilineTextAlignment(.center)
//                .padding(.horizontal, 0)
//
//            Spacer()
//                .frame(height: 15)
//
//            Text("SOCIALTECH LABS, INC. PRIVACY POLICY")
//                .font(.system(size: 15, weight: .bold))
//                .italic()
//                .foregroundColor(.black)
//                .multilineTextAlignment(.leading)
//              .padding(.horizontal, 0)
//
//
//            Spacer()
//                .frame(height: 25)
//
//
//            Text("This Privacy Policy was was first made effective on March 12, 2021. SocialTech Labs, Inc. (“we” or “SocialTech Labs”) is concerned about your privacy and informing you about how your information is used. This Privacy Policy explains our practices regarding the collection, use, disclosure, and protection of information that is collected through our website, mobile application, and any other mobile or online service owned and offered by SocialTech Labs (our “Services”). Capitalized terms that are not defined in this Privacy Policy have the meaning given to them in our Terms of Services.")
//                .font(.system(size: 10, weight: .light))
//                .foregroundColor(.black)
//                .multilineTextAlignment(.leading)
//                .padding(.horizontal, 10)
//
//            VStack {
//
//            Spacer()
//                .frame(height: 10)
//
//            HStack{
//            Text("Special Note Concerning Use of Cookies")
//                .font(.system(size: 15, weight: .semibold))
//                .foregroundColor(.black)
//                .multilineTextAlignment(.leading)
//                .padding(.horizontal, 10)
//
//                Spacer()
//
//            }
//            Spacer()
//                .frame(height: 10)
//
//            Text("However, as of March 12, 2021 we are not using Cookies outside of the application. In addition, we are not allowing 3rd parties that we have contractual obligations with to use them. This does not mean that we will never use Cookies.")
//                .font(.system(size: 10, weight: .light))
//                .foregroundColor(.black)
//                .multilineTextAlignment(.leading)
//                .padding(.horizontal, 10)
//
//            VStack {
//
//            Spacer()
//                .frame(height: 10)
//
//            Text("Currently we are testing a new strategy to gather information for our advertisers and partners so they are able to understand BestFriend's user demographics without employing cookies. During the On-boarding process users are 'Asked' their interests concerning what type of advertisements they would prefer to see in the application. We are hoping that this strategy will be sufficient for our advertisers and partners.")
//                .font(.system(size: 10, weight: .light))
//                .foregroundColor(.black)
//                .multilineTextAlignment(.leading)
//                .padding(.horizontal, 10)
//
//
//            Spacer()
//                .frame(height: 10)
//
//            Text("If the time comes that we do use cookies we will make an announcement to our entire user base giving them the option to un-install BestFriends, if they so choose.")
//                .font(.system(size: 10, weight: .light))
//                .foregroundColor(.black)
//                .multilineTextAlignment(.leading)
//                .padding(.horizontal, 5)
//
//
//            Spacer()
//                .frame(height: 10)
//                HStack{
//                Text("Personal Information We Collect From Users:")
//                    .font(.system(size: 15, weight: .semibold))
////                    .italic()
//                    .foregroundColor(.black)
//                    .multilineTextAlignment(.leading)
//                    .padding(.horizontal, 10)
//
//                    Spacer()
//                }
//
//
//                Spacer()
//                    .frame(height: 10)
//
//                Text("We collect personal information from you in order to provide our Services and enhance your experience with SocialTech Labs.  The personal information we may collect includes:")
//                    .font(.system(size: 10, weight: .light))
//                    .foregroundColor(.black)
//                    .multilineTextAlignment(.leading)
//                    .padding(.horizontal, 10)
//
//                VStack {
//
//                    Spacer()
//                        .frame(height: 10)
//
//                    HStack{
//                    Text("Identifing Information")
//                        .font(.system(size: 15, weight: .medium))
//                        .italic()
//                        .foregroundColor(.black)
//                        .multilineTextAlignment(.leading)
//                        .padding(.horizontal, 20)
//
//                        Spacer()
//                    }
//
//                        Spacer()
//                            .frame(height: 10)
//
//                        Text("You provide us information about yourself, such as your name, age, address, email address, affiliations, and password, when you register for an account with the Services. If you correspond with us by email, we may retain the content of your email messages, your email address, and our responses. We may also retain any messages you send through the Services. You may provide us information in User Content you post to the Services.")
//                            .font(.system(size: 10, weight: .light))
//                            .foregroundColor(.black)
//                            .multilineTextAlignment(.leading)
//                            .padding(.horizontal, 20)
//
//                    Spacer()
//                                .frame(height: 10)
//
//                    HStack{
//                    Text("Payment Information")
//                        .font(.system(size: 15, weight: .medium))
//                        .italic()
//                        .foregroundColor(.black)
//                        .multilineTextAlignment(.leading)
//                        .padding(.horizontal, 20)
//
//                        Spacer()
//                    }
//                                Spacer()
//                                    .frame(height: 10)
//
//                                Text("SocialTech Labs collects your personal payment information, including information stored on outside services that you may use with SocialTech Labs, such as PayPal. By submitting your payment information and/or linking your SocialTech Labs account with an outside payment service such as PayPal, you authorize SocialTech Labs to access and use this information in order to provide you with and accept payment for the Services. This permits SocialTech Labs to confirm your identity and provide you with expedited transactions.")
//                                    .font(.system(size: 10, weight: .light))
//                                    .foregroundColor(.black)
//                                    .multilineTextAlignment(.leading)
//                                    .padding(.horizontal, 20)
//
//
//                    VStack {
//
//                        Spacer()
//                            .frame(height: 10)
//
//                        HStack{
//                        Text("Social Media")
//                            .font(.system(size: 15, weight: .medium))
//                            .italic()
//                            .foregroundColor(.black)
//                            .multilineTextAlignment(.leading)
//                            .padding(.horizontal, 20)
//
//                            Spacer()
//                        }
//                            Spacer()
//                                .frame(height: 10)
//
//                            Text("When you interact with our Services through various social media, we may receive information from the social network, such as your profile information, profile picture, user name, user ID associated with your social media account, age range, language, country, friends list, and any other information you permit the social network to share with third parties. The information we receive is controlled by your privacy settings with the particular social media account. You should always review, and, if necessary, adjust your privacy settings on third-party websites and services before linking or connecting them to SocialTech Labs’s Services.")
//                                .font(.system(size: 10, weight: .light))
//                                .foregroundColor(.black)
//                                .multilineTextAlignment(.leading)
//                                .padding(.horizontal, 20)
//
//                        Spacer()
//                                    .frame(height: 10)
//
//                        Text("We use personal information to operate, maintain, and provide to you the features and functionality of the Services, as well as to communicate directly with you, such as to send you email messages and push notifications, and permit you to communicate with others on the Services or on social media or invite others to join the Services.  We may also use information to provide personalized content, including advertising.  We may also send you Services-related emails or messages (e.g., account verification, change or updates to features of the Services, technical and security notices).  For more information about your communication preferences, see Your Choices Regarding Your Information below.")
//                            .font(.system(size: 10, weight: .light))
//                            .foregroundColor(.black)
//                            .multilineTextAlignment(.leading)
//                            .padding(.horizontal, 20)
//
//                        Spacer()
//                                .frame(height: 10)
//                    VStack {
//                        HStack{
//                        Text("Usage Information We Collect")
//                            .font(.system(size: 15, weight: .semibold))
//                            .foregroundColor(.black)
//                            .multilineTextAlignment(.leading)
//                            .padding(.horizontal, 10)
//
//                            Spacer()
//
//                        }
//                        Spacer()
//                                .frame(height: 10)
//
//
//
//
//                        HStack{
//                            Text("Use of Cookies and Other Technology to Collect Information")
//                                .font(.system(size: 15, weight: .semibold))
//                                .foregroundColor(.black)
//                                .multilineTextAlignment(.leading)
//                                .padding(.horizontal, 20)
//
//                                Spacer()
//
//                            }
//                    VStack {
//
//
//                            Spacer()
//                            .frame(height: 10)
//
//                        Text("When you visit our website or use our mobile app or Services, we and our business partners may collect certain information about your computer or device through technology such as cookies, web beacons, log files, or other tracking/recording tools. The information we collect through the use of tracking technologies includes but is not limited to IP address, browser information, referring/exit pages and URLs, click stream data and information about how you interact with links on the website, mobile app, or Services, domain names, landing pages, page views, and cookie data that allows us to uniquely identify your browser and track your browsing behavior on our site. We may also use clear gifs or other technology in HTML-based emails sent to our users to track which emails are opened and which links are clicked by recipients. Some or all of this data may be combined with other personally identifying information described above. We may also collect analytics data, or use third-party analytics tools, to help us measure traffic and usage trends for the Services and to understand more about the demographics of our users.  These tools collect information sent by your browser or mobile device, including the pages you visit, your use of third party applications, and other information that assists us in analyzing and improving the Services. We may work with third parties to employ technologies, including the application of statistical modeling tools, which attempt to recognize you across multiple devices..")
//                            .font(.system(size: 10, weight: .light))
//                            .foregroundColor(.black)
//                            .multilineTextAlignment(.leading)
//                            .padding(.horizontal, 20)
//
//
//
//                        VStack {
//
//
//                            Spacer()
//                            .frame(height: 10)
//
//                        Text("When you access our Services by or through a mobile device, we may receive or collect and store a unique identification number associated with your device or our mobile application (including, for example, a UDID, Unique ID for Advertisers (“IDFA”), Google Ad ID, or Windows Advertising ID or other identifier), mobile carrier, device type, model and manufacturer, mobile device operating system brand and model, phone number, and, depending on your mobile device settings, your geographical location data, including GPS coordinates (e.g. latitude and/or longitude), WiFi location, or similar information regarding the location of your mobile device.")
//                            .font(.system(size: 10, weight: .light))
//                            .foregroundColor(.black)
//                            .multilineTextAlignment(.leading)
//                            .padding(.horizontal, 20)
//
//
//                            Spacer()
//                            .frame(height: 10)
//
//                        Text("We use or may use the data collected through these technologies to: (i) remember information so that you will not have to re-enter it during your visit; (ii) provide custom, personalized content and information, including advertising; (iii) identify you across multiple devices; (iv) provide and monitor the effectiveness of our Services; (v) monitor aggregate metrics such as total number of visitors, traffic, usage, and demographic patterns on our website and our Services; (vi) diagnose or fix technology problems; and (vii) otherwise to plan for and enhance our Services.")
//                            .font(.system(size: 10, weight: .light))
//                            .foregroundColor(.black)
//                            .multilineTextAlignment(.leading)
//                            .padding(.horizontal, 20)
//
//
//                            Spacer()
//                                .frame(height: 10)
//
//                            HStack{
//                            Text("How We Share Your Information:")
//                                .font(.system(size: 15, weight: .semibold))
//                                .foregroundColor(.black)
//                                .multilineTextAlignment(.leading)
//                                .padding(.horizontal, 10)
//
//                                Spacer()
//
//                            }
//
//
//
//
//                VStack {
//
//                    Spacer()
//                    .frame(height: 10)
//
//
//                        Text("SocialTech Labs may share your personally identifiable information with third party vendors, consultants or other service providers that perform services on our behalf or otherwise help provide the Services to you, under reasonable confidentiality terms.")
//                            .font(.system(size: 10, weight: .light))
//                            .foregroundColor(.black)
//                            .multilineTextAlignment(.leading)
//                            .padding(.horizontal, 10)
//
//
//                            Spacer()
//                            .frame(height: 10)
//
//                    Text("We may share your information in connection with any company transaction, such as a merger, sale of all or a portion of company assets or shares, reorganization, financing, change of control or acquisition of all or a portion of our business by another company or third party, or in the event of bankruptcy or related or similar proceedings.")
//                        .font(.system(size: 10, weight: .light))
//                        .foregroundColor(.black)
//                        .multilineTextAlignment(.leading)
//                        .padding(.horizontal, 10)
//
//
//                        Spacer()
//                        .frame(height: 10)
//
//                    Text("We may share your personal information with others with whom you communicate on the Services and any information that you post or share publicly on our website or Services. Any personal information or content that you voluntarily disclose for posting to the Services, such as User Content, becomes available to the public, as controlled by any applicable privacy settings. If you remove information that you posted to the Services, copies may remain viewable in cached and archived pages of the Services, or if other Users have copied or saved that information.")
//                        .font(.system(size: 10, weight: .light))
//                        .foregroundColor(.black)
//                        .multilineTextAlignment(.leading)
//                        .padding(.horizontal, 10)
//
//
//                        Spacer()
//                        .frame(height: 10)
//
//                    Text("Other brands owned or controlled by SocialTech Labs, and other companies owned by or under common ownership as SocialTech Labs, which also includes our subsidiaries (i.e., any organization we own or control) or our ultimate holding company (i.e., any organization that owns or controls us) and any subsidiaries it owns.  These companies will use your personal information in the same way as we can under this Policy.")
//                        .font(.system(size: 10, weight: .light))
//                        .foregroundColor(.black)
//                        .multilineTextAlignment(.leading)
//                        .padding(.horizontal, 10)
//
//
//                        Spacer()
//                        .frame(height: 10)
//
//                    VStack {
//
//                        Text("We may also disclose personal information if we believe it to be reasonably necessary to (i) satisfy any applicable law or regulation and comply with legal process, such as search warrant, subpoena or court order, or other government request served on us or on our affiliates; (ii) to enforce our Terms of Service, including to investigate potential violations thereof; (iii) take precautions against liability, to investigate and defend ourselves against any third-party claims or allegations, or to protect the security or integrity of our site; and (iv) to exercise or protect the rights, property, or personal safety of SocialTech Labs, our Users, or others. Typically, our policy is not to share personal information with governmental agencies, except as pursuant to a search warrant, subpoena, court order, or as otherwise compelled to do so by legal process, though there may be circumstances in which we may disclose such information without such legal process if we reasonably believe such disclosure is necessary to protect the health and safety of an individual, prevent or mitigate the harm of crime or illegal activity, or other compelling circumstance. We will use our best effort to provide you notice of a law enforcement request for your personal information before we release such information, unless we are not permitted to do so.")
//                            .font(.system(size: 10, weight: .light))
//                            .foregroundColor(.black)
//                            .multilineTextAlignment(.leading)
//                            .padding(.horizontal, 10)
//
//
//                            Spacer()
//                            .frame(height: 10)
//
//                        VStack{
//
//                            HStack{
//                            Text("Sharing of Your Information with Business Partners; Expanded Services")
//                                .font(.system(size: 15, weight: .semibold))
//                                .foregroundColor(.black)
//                                .multilineTextAlignment(.leading)
//                                .padding(.horizontal, 20)
//
//                                Spacer()
//
//                            }
//                            Spacer()
//                            .frame(height: 10)
//
//                            Text("We may use information about you in partnership with outside companies in the course of providing you with additional services related to SocialTech Labs. When you purchase, register, or otherwise express interest in a product or service offered by a third party through SocialTech Labs or sponsored on our site, you consent to our sharing of your personal information with those parties. When you choose to participate in rewards programs, contests, discount offers, or other programs that involve third parties, you authorize SocialTech Labs to share your personal information with those parties, who may use such information in accordance with their own privacy policies.  In these cases we will only share the information reasonably needed to provide you with service. Information that is shared with third parties is subject to the privacy policies of those parties, which may differ from SocialTech Labs’s privacy policies.")
//                                .font(.system(size: 10, weight: .light))
//                                .foregroundColor(.black)
//                                .multilineTextAlignment(.leading)
//                                .padding(.horizontal, 20)
//
//
//                                Spacer()
//                                .frame(height: 10)
//
//                            HStack{
//
//
//                            Text("Sharing and Using Aggregate or Anonymized Information")
//                                .font(.system(size: 15, weight: .semibold))
//                                .foregroundColor(.black)
//                                .multilineTextAlignment(.leading)
//                                .padding(.horizontal, 20)
//
//                                Spacer()
//
//                            }
//
//                            Spacer()
//                            .frame(height: 10)
//
//                                   Text("We may aggregate, anonymize, or otherwise strip data of all personally identifying characteristics and may share that anonymized and/or aggregated data with third parties, in a manner that cannot reasonably identify any individual.")
//                                       .font(.system(size: 10, weight: .light))
//                                       .foregroundColor(.black)
//                                       .multilineTextAlignment(.leading)
//                                       .padding(.horizontal, 20)
//
//
//                                       Spacer()
//                                       .frame(height: 10)
//
//                            HStack{
//                            Text("Profile and Data Sharing Settings")
//                                .font(.system(size: 15, weight: .semibold))
//                                .foregroundColor(.black)
//                                .multilineTextAlignment(.leading)
//                                .padding(.horizontal, 10)
//
//                                Spacer()
//
//                            }
//
//
//                            VStack{
//
//                                Spacer()
//                                    .frame(height: 10)
//
//
//                                       Text("You can change your account information and preferences at any time by logging onto your account.")
//                                           .font(.system(size: 10, weight: .light))
//                                           .foregroundColor(.black)
//                                           .multilineTextAlignment(.leading)
//                                           .padding(.horizontal, 10)
//
//
//                                           Spacer()
//                                           .frame(height: 10)
//
//                                HStack{
//                                Text("Communications")
//                                    .font(.system(size: 15, weight: .semibold))
//                                    .foregroundColor(.black)
//                                    .multilineTextAlignment(.leading)
//                                    .padding(.horizontal, 10)
//
//                                    Spacer()
//
//                                }
//
//                                Spacer()
//                                    .frame(height: 10)
//
//                                     Text("We will not sell your contact information to third parties for marketing purposes.")
//                                         .font(.system(size: 10, weight: .light))
//                                         .foregroundColor(.black)
//                                         .multilineTextAlignment(.leading)
//                                         .padding(.horizontal, 10)
//
//
//                                         Spacer()
//                                         .frame(height: 10)
//
//                        VStack{
//                            Text("We may communicate with you via in-app notifications, email, SMS text, or other method. You control when and how (e.g. email, SMS, etc.) you would like to receive messages, and you may be able to opt-out of receiving certain types of messages. We may send you notifications of activity on the Services to the email address you give us, in accordance with any applicable privacy settings.")
//                                .font(.system(size: 10, weight: .light))
//                                .foregroundColor(.black)
//                                .multilineTextAlignment(.leading)
//                                .padding(.horizontal, 10)
//
//
//                                Spacer()
//                                .frame(height: 10)
//
//                            Text("SocialTech Labs may send you other messages in the course of operation of our Services, such as notifications from other Users, updates about Services changes and new features, and important news that may impact your use and enjoyment of SocialTech Labs. These communications may contain banners, ads, or promotional material provided by third parties. If you click on the third party link, you will be taken to that service, and your information will thereafter be subject to that party’s privacy policy.  You may be able to opt-out of receiving promotional emails by clicking the “unsubscribe” button at the footer of promotional email communications. Note that you are not permitted to unsubscribe or opt-out of non-promotional messages regarding your account.")
//                                .font(.system(size: 10, weight: .light))
//                                .foregroundColor(.black)
//                                .multilineTextAlignment(.leading)
//                                .padding(.horizontal, 10)
//
//
//                                Spacer()
//                                .frame(height: 10)
//
//                            Text("By providing SocialTech Labs your email address, you consent to our using the email address to send you Services-related notices, including any notices required by law, in lieu of communication by postal mail.")
//                                .font(.system(size: 10, weight: .light))
//                                .foregroundColor(.black)
//                                .multilineTextAlignment(.leading)
//                                .padding(.horizontal, 10)
//
//
//                                Spacer()
//                                .frame(height: 10)
//
//
//                    HStack{
//                            Text("Third Party Tracking and Advertising")
//                                .font(.system(size: 15, weight: .semibold))
//                                .foregroundColor(.black)
//                                .multilineTextAlignment(.leading)
//                                .padding(.horizontal, 10)
//
//                                Spacer()
//
//                            }
//                            VStack{
//
//                            Spacer()
//                                .frame(height: 10)
//
//                                 Text("We may share, or we may permit third party ad networks, social media companies, and other third party services to collect information about the browsing behavior of our users of Services through cookies, social plug-ins, or other tracking technology. We may permit third party online advertising networks to collect information about your use of our Services over time, including location information, so that they may play or display ads that may be relevant to your interests on our Services as well as on other websites or services, or on other devices you may use. Typically, the information is collected through cookies or similar tracking technologies. You may be able to “opt out” of the collection of information through cookies or other tracking technology by actively managing the settings on your browser or mobile device. Please refer to your browser’s or mobile device’s technical information for instructions on how to delete, disable, and/or limit the use of cookies or other tracking/recording tools. Depending on your mobile device, you may not be able to control all tracking technologies through your device settings.  You may also be able to limit interest-based advertising through the settings on your browser or device. For example, you may be able to opt-out of some interest-based advertising on your mobile device by selecting “limit ad tracking” (iOS) or “opt-out of interest based ads” (Android). To learn more about interest-based advertising and how you may opt-out of some of this tracking, you may wish to visit the Network Advertising Initiative’s online resources, at http://www.networkadvertising.org/choices and/or the Digital Advertisers Alliance’s resources at www.aboutads.info/choices.  You may also be able to opt-out of some – but not all – interest-based ads served by mobile ad networks by visiting http://youradchoices.com/appchoices and downloading the mobile AppChoices app.  If you have any questions about third party tracking and advertising, you can contact us directly at Admin@SocialTech Labs.com.")
//                                     .font(.system(size: 10, weight: .light))
//                                     .foregroundColor(.black)
//                                     .multilineTextAlignment(.leading)
//                                     .padding(.horizontal, 10)
//
//
//                                     Spacer()
//                                     .frame(height: 10)
//
//
//
//                            VStack{
//
//
//                        HStack{
//                                Text("Data Retention")
//                                    .font(.system(size: 15, weight: .semibold))
//                                    .foregroundColor(.black)
//                                    .multilineTextAlignment(.leading)
//                                    .padding(.horizontal, 10)
//
//                                    Spacer()
//
//                                }
//                                Spacer()
//                                    .frame(height: 10)
//
//                                     Text("Following termination or deactivation of your account, SocialTech Labs may retain your information for a commercially reasonable time for backup, archival, or audit purposes, or to maintain and improve the Services. Furthermore, SocialTech Labs may retain and continue to use indefinitely all information (including User Content) contained in your communications to other Users or posted to public or semi-public areas of the Services after termination or deactivation of your account. Please contact us at contact@madlyradlabs.com if you wish to delete your account information from our systems, though we may not be able to delete all information, as noted in this Privacy Policy.")
//                                         .font(.system(size: 10, weight: .light))
//                                         .foregroundColor(.black)
//                                         .multilineTextAlignment(.leading)
//                                         .padding(.horizontal, 10)
//
//
//                                         Spacer()
//                                         .frame(height: 10)
//
//
//
//                                VStack{
//
//
//                            HStack{
//                                    Text("How We Protect Your Information")
//                                        .font(.system(size: 15, weight: .semibold))
//                                        .foregroundColor(.black)
//                                        .multilineTextAlignment(.leading)
//                                        .padding(.horizontal, 10)
//
//                                        Spacer()
//
//                                    }
//                                    Spacer()
//                                        .frame(height: 10)
//
//                                         Text("SocialTech Labs cares about the security of your information and uses commercially reasonable physical, administrative, and technological safeguards to preserve the integrity and security of all information we collect and that we share with our service providers.  However, no security system is impenetrable, and we cannot guarantee the security of our systems 100%.  In the event that any information under our control is compromised as a result of a breach of security, we will take reasonable steps to investigate the situation and, where appropriate, notify those individuals whose information may have been compromised and take other steps, in accordance with any applicable laws and regulations. To protect your privacy and security, we take reasonable steps (such as requesting a unique password) to verify your identity before granting you access to your account. You are responsible for maintaining the secrecy of your unique password and account information and for controlling access to your email communications from SocialTech Labs, at all times.")
//                                             .font(.system(size: 10, weight: .light))
//                                             .foregroundColor(.black)
//                                             .multilineTextAlignment(.leading)
//                                             .padding(.horizontal, 10)
//
//
//                                             Spacer()
//                                             .frame(height: 10)
//
//
//                                    VStack{
//
//
//                                HStack{
//                                        Text("Children's Privacy")
//                                            .font(.system(size: 15, weight: .semibold))
//                                            .foregroundColor(.black)
//                                            .multilineTextAlignment(.leading)
//                                            .padding(.horizontal, 10)
//
//                                            Spacer()
//
//                                        }
//                                        Spacer()
//                                            .frame(height: 10)
//
//                                             Text("Protecting the privacy of young children is especially important. For that reason, SocialTech Labs does not knowingly collect or solicit personal information from anyone under the age of 13 or knowingly allow such persons to register as Users. If you are under 13, please do not send any information about yourself to us, including your name, address, telephone number, or email address. In the event that we learn that we have collected personal information from a child under age 13 without verification of parental consent, we will delete that information as quickly as possible. If you believe that we might have any information from or about a child under 13, please contact us at Admin@SocialTech Labs.com.")
//                                                 .font(.system(size: 10, weight: .light))
//                                                 .foregroundColor(.black)
//                                                 .multilineTextAlignment(.leading)
//                                                 .padding(.horizontal, 10)
//
//
//                                                 Spacer()
//                                                 .frame(height: 10)
//
//
//
//
//
//                                        VStack{
//
//
//                                    HStack{
//                                            Text("Links to Other Websites")
//                                                .font(.system(size: 15, weight: .semibold))
//                                                .foregroundColor(.black)
//                                                .multilineTextAlignment(.leading)
//                                                .padding(.horizontal, 10)
//
//                                                Spacer()
//
//                                            }
//
//                                            Spacer()
//                                                .frame(height: 10)
//                                                 Text("We are not responsible for the practices employed by websites linked to or from the Services, nor the information or content contained therein. Please remember that when you use a link to go from the Services to another website, our Privacy Policy is no longer in effect. Your browsing and interaction on any other website, including those that have a link on our website, is subject to that website’s own rules and policies. Please read over those rules and policies before proceeding.")
//                                                     .font(.system(size: 10, weight: .light))
//                                                     .foregroundColor(.black)
//                                                     .multilineTextAlignment(.leading)
//                                                     .padding(.horizontal, 10)
//
//
//                                                     Spacer()
//                                                     .frame(height: 10)
//
//
//
//
//
//
//                                            VStack{
//
//
//                                        HStack{
//                                                Text("Notification Procedures")
//                                                    .font(.system(size: 15, weight: .semibold))
//                                                    .foregroundColor(.black)
//                                                    .multilineTextAlignment(.leading)
//                                                    .padding(.horizontal, 10)
//
//                                                    Spacer()
//
//                                                }
//                                                Spacer()
//                                                    .frame(height: 10)
//
//                                                     Text("It is our policy to provide notifications, whether such notifications are required by law or are for marketing or other business related purposes, to you via email notice, written or hard copy notice, or through conspicuous posting of such notice on the Services, as determined by SocialTech Labs in its sole discretion. We reserve the right to determine the form and means of providing notifications to you, provided that you may opt out of certain means of notification, as described in this Privacy Policy.")
//                                                         .font(.system(size: 10, weight: .light))
//                                                         .foregroundColor(.black)
//                                                         .multilineTextAlignment(.leading)
//                                                         .padding(.horizontal, 10)
//
//
//                                                         Spacer()
//                                                         .frame(height: 10)
//
//
//
//                                                VStack{
//
//
//                                            HStack{
//                                                    Text("Changes to Our Privacy Policy")
//                                                        .font(.system(size: 15, weight: .semibold))
//                                                        .foregroundColor(.black)
//                                                        .multilineTextAlignment(.leading)
//                                                        .padding(.horizontal, 10)
//
//                                                        Spacer()
//
//                                                    }
//
//                                                    Spacer()
//                                                        .frame(height: 10)
//                                                         Text("If we change our privacy policies and procedures, we will post those changes on the Services to keep you aware of what information we collect, how we use it, and under what circumstances we may disclose it. Changes to this Privacy Policy are effective when they are posted on this page.")
//                                                             .font(.system(size: 10, weight: .light))
//                                                             .foregroundColor(.black)
//                                                             .multilineTextAlignment(.leading)
//                                                             .padding(.horizontal, 10)
//
//
//                                                             Spacer()
//                                                             .frame(height: 10)
//
//
//
//                                                         Text("For any questions on this Privacy Policy, please contact us by email at Admin@.SocialTech Labs.com or mail at SocialTech Labs, Inc., 815 Superior Avenue, East, Suite 1618, Cleveland, Ohio  44114")
//                                                             .font(.system(size: 10, weight: .medium))
//                                                             .foregroundColor(.black)
//                                                             .multilineTextAlignment(.leading)
//                                                             .padding(.horizontal, 5)
//
//
//                                                             Spacer()
//
//
//
//
//
                                        
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
                    
                            }
