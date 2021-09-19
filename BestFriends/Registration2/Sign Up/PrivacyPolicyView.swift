//
//  PrivacyPolicyView.swift
//  BestFriends
//
//  Created by Alex Titov on 9/16/21.
//

import SwiftUI

struct PrivacyPolicyView: View {
    
    var body: some View {
            
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
                    
                    ScrollView {
                    VStack {
                        
                        Spacer()
                            .frame(height: 70)
                        
                        Text("Privacy Policy")
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
                        
                        
                        Text("This Privacy Policy was was first made effective on March 12, 2021. SocialTech Labs, Inc. (“we” or “SocialTech Labs”) is concerned about your privacy and informing you about how your information is used. This Privacy Policy explains our practices regarding the collection, use, disclosure, and protection of information that is collected through our website, mobile application, and any other mobile or online service owned and offered by SocialTech Labs (our “Services”). Capitalized terms that are not defined in this Privacy Policy have the meaning given to them in our Terms of Services.")
                            .font(.system(size: 10, weight: .light))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 10)
                        
                        VStack {
                            
                            Spacer()
                                .frame(height: 10)
                            
                            HStack{
                                Text("Special Note Concerning Use of Cookies")
                                    .font(.system(size: 15, weight: .semibold))
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                
                                Spacer()
                                
                            }
                            Spacer()
                                .frame(height: 10)
                            
                            Text("However, as of March 12, 2021 we are not using Cookies outside of the application. In addition, we are not allowing 3rd parties that we have contractual obligations with to use them. This does not mean that we will never use Cookies.")
                                .font(.system(size: 10, weight: .light))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, 10)
                            
                            VStack {
                                
                                Spacer()
                                    .frame(height: 10)
                                
                                Text("Currently we are testing a new strategy to gather information for our advertisers and partners so they are able to understand BestFriend's user demographics without employing cookies. During the On-boarding process users are 'Asked' their interests concerning what type of advertisements they would prefer to see in the application. We are hoping that this strategy will be sufficient for our advertisers and partners.")
                                    .font(.system(size: 10, weight: .light))
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                
                                
                                Spacer()
                                    .frame(height: 10)
                                
                                Text("If the time comes that we do use cookies we will make an announcement to our entire user base giving them the option to un-install BestFriends, if they so choose.")
                                    .font(.system(size: 10, weight: .light))
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 5)
                                
                                
                                Spacer()
                                    .frame(height: 10)
                                HStack{
                                    Text("Personal Information We Collect From Users:")
                                        .font(.system(size: 15, weight: .semibold))
                                        //                    .italic()
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.leading)
                                        .padding(.horizontal, 10)
                                    
                                    Spacer()
                                }
                                
                                
                                Spacer()
                                    .frame(height: 10)
                                
                                Text("We collect personal information from you in order to provide our Services and enhance your experience with SocialTech Labs.  The personal information we may collect includes:")
                                    .font(.system(size: 10, weight: .light))
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                
                                VStack {
                                    
                                    Spacer()
                                        .frame(height: 10)
                                    
                                    HStack{
                                        Text("Identifing Information")
                                            .font(.system(size: 15, weight: .medium))
                                            .italic()
                                            .foregroundColor(.black)
                                            .multilineTextAlignment(.leading)
                                            .padding(.horizontal, 20)
                                        
                                        Spacer()
                                    }
                                    
                                    Spacer()
                                        .frame(height: 10)
                                    
                                    Text("You provide us information about yourself, such as your name, age, address, email address, affiliations, and password, when you register for an account with the Services. If you correspond with us by email, we may retain the content of your email messages, your email address, and our responses. We may also retain any messages you send through the Services. You may provide us information in User Content you post to the Services.")
                                        .font(.system(size: 10, weight: .light))
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.leading)
                                        .padding(.horizontal, 20)
                                    
                                    Spacer()
                                        .frame(height: 10)
                                    
                                    HStack{
                                        Text("Payment Information")
                                            .font(.system(size: 15, weight: .medium))
                                            .italic()
                                            .foregroundColor(.black)
                                            .multilineTextAlignment(.leading)
                                            .padding(.horizontal, 20)
                                        
                                        Spacer()
                                    }
                                    Spacer()
                                        .frame(height: 10)
                                    
                                    Text("SocialTech Labs collects your personal payment information, including information stored on outside services that you may use with SocialTech Labs, such as PayPal. By submitting your payment information and/or linking your SocialTech Labs account with an outside payment service such as PayPal, you authorize SocialTech Labs to access and use this information in order to provide you with and accept payment for the Services. This permits SocialTech Labs to confirm your identity and provide you with expedited transactions.")
                                        .font(.system(size: 10, weight: .light))
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.leading)
                                        .padding(.horizontal, 20)
                                    
                                    
                                    VStack {
                                        
                                        Spacer()
                                            .frame(height: 10)
                                        
                                        HStack{
                                            Text("Social Media")
                                                .font(.system(size: 15, weight: .medium))
                                                .italic()
                                                .foregroundColor(.black)
                                                .multilineTextAlignment(.leading)
                                                .padding(.horizontal, 20)
                                            
                                            Spacer()
                                        }
                                        Spacer()
                                            .frame(height: 10)
                                        
                                        Text("When you interact with our Services through various social media, we may receive information from the social network, such as your profile information, profile picture, user name, user ID associated with your social media account, age range, language, country, friends list, and any other information you permit the social network to share with third parties. The information we receive is controlled by your privacy settings with the particular social media account. You should always review, and, if necessary, adjust your privacy settings on third-party websites and services before linking or connecting them to SocialTech Labs’s Services.")
                                            .font(.system(size: 10, weight: .light))
                                            .foregroundColor(.black)
                                            .multilineTextAlignment(.leading)
                                            .padding(.horizontal, 20)
                                        
                                        Spacer()
                                            .frame(height: 10)
                                        
                                        Text("We use personal information to operate, maintain, and provide to you the features and functionality of the Services, as well as to communicate directly with you, such as to send you email messages and push notifications, and permit you to communicate with others on the Services or on social media or invite others to join the Services.  We may also use information to provide personalized content, including advertising.  We may also send you Services-related emails or messages (e.g., account verification, change or updates to features of the Services, technical and security notices).  For more information about your communication preferences, see Your Choices Regarding Your Information below.")
                                            .font(.system(size: 10, weight: .light))
                                            .foregroundColor(.black)
                                            .multilineTextAlignment(.leading)
                                            .padding(.horizontal, 20)
                                        
                                        Spacer()
                                            .frame(height: 10)
                                        VStack {
                                            HStack{
                                                Text("Usage Information We Collect")
                                                    .font(.system(size: 15, weight: .semibold))
                                                    .foregroundColor(.black)
                                                    .multilineTextAlignment(.leading)
                                                    .padding(.horizontal, 10)
                                                
                                                Spacer()
                                                
                                            }
                                            Spacer()
                                                .frame(height: 10)
                                            
                                            
                                            
                                            
                                            HStack{
                                                Text("Use of Cookies and Other Technology to Collect Information")
                                                    .font(.system(size: 15, weight: .semibold))
                                                    .foregroundColor(.black)
                                                    .multilineTextAlignment(.leading)
                                                    .padding(.horizontal, 20)
                                                
                                                Spacer()
                                                
                                            }
                                            VStack {
                                                
                                                
                                                Spacer()
                                                    .frame(height: 10)
                                                
                                                Text("When you visit our website or use our mobile app or Services, we and our business partners may collect certain information about your computer or device through technology such as cookies, web beacons, log files, or other tracking/recording tools. The information we collect through the use of tracking technologies includes but is not limited to IP address, browser information, referring/exit pages and URLs, click stream data and information about how you interact with links on the website, mobile app, or Services, domain names, landing pages, page views, and cookie data that allows us to uniquely identify your browser and track your browsing behavior on our site. We may also use clear gifs or other technology in HTML-based emails sent to our users to track which emails are opened and which links are clicked by recipients. Some or all of this data may be combined with other personally identifying information described above. We may also collect analytics data, or use third-party analytics tools, to help us measure traffic and usage trends for the Services and to understand more about the demographics of our users.  These tools collect information sent by your browser or mobile device, including the pages you visit, your use of third party applications, and other information that assists us in analyzing and improving the Services. We may work with third parties to employ technologies, including the application of statistical modeling tools, which attempt to recognize you across multiple devices..")
                                                    .font(.system(size: 10, weight: .light))
                                                    .foregroundColor(.black)
                                                    .multilineTextAlignment(.leading)
                                                    .padding(.horizontal, 20)
                                                
                                                
                                                
                                                VStack {
                                                    
                                                    
                                                    Spacer()
                                                        .frame(height: 10)
                                                    
                                                    Text("When you access our Services by or through a mobile device, we may receive or collect and store a unique identification number associated with your device or our mobile application (including, for example, a UDID, Unique ID for Advertisers (“IDFA”), Google Ad ID, or Windows Advertising ID or other identifier), mobile carrier, device type, model and manufacturer, mobile device operating system brand and model, phone number, and, depending on your mobile device settings, your geographical location data, including GPS coordinates (e.g. latitude and/or longitude), WiFi location, or similar information regarding the location of your mobile device.")
                                                        .font(.system(size: 10, weight: .light))
                                                        .foregroundColor(.black)
                                                        .multilineTextAlignment(.leading)
                                                        .padding(.horizontal, 20)
                                                    
                                                    
                                                    Spacer()
                                                        .frame(height: 10)
                                                    
                                                    Text("We use or may use the data collected through these technologies to: (i) remember information so that you will not have to re-enter it during your visit; (ii) provide custom, personalized content and information, including advertising; (iii) identify you across multiple devices; (iv) provide and monitor the effectiveness of our Services; (v) monitor aggregate metrics such as total number of visitors, traffic, usage, and demographic patterns on our website and our Services; (vi) diagnose or fix technology problems; and (vii) otherwise to plan for and enhance our Services.")
                                                        .font(.system(size: 10, weight: .light))
                                                        .foregroundColor(.black)
                                                        .multilineTextAlignment(.leading)
                                                        .padding(.horizontal, 20)
                                                    
                                                    
                                                    Spacer()
                                                        .frame(height: 10)
                                                    
                                                    HStack{
                                                        Text("How We Share Your Information:")
                                                            .font(.system(size: 15, weight: .semibold))
                                                            .foregroundColor(.black)
                                                            .multilineTextAlignment(.leading)
                                                            .padding(.horizontal, 10)
                                                        
                                                        Spacer()
                                                        
                                                    }
                                                    
                                                    
                                                    
                                                    
                                                    VStack {
                                                        
                                                        Spacer()
                                                            .frame(height: 10)
                                                        
                                                        
                                                        Text("SocialTech Labs may share your personally identifiable information with third party vendors, consultants or other service providers that perform services on our behalf or otherwise help provide the Services to you, under reasonable confidentiality terms.")
                                                            .font(.system(size: 10, weight: .light))
                                                            .foregroundColor(.black)
                                                            .multilineTextAlignment(.leading)
                                                            .padding(.horizontal, 10)
                                                        
                                                        
                                                        Spacer()
                                                            .frame(height: 10)
                                                        
                                                        Text("We may share your information in connection with any company transaction, such as a merger, sale of all or a portion of company assets or shares, reorganization, financing, change of control or acquisition of all or a portion of our business by another company or third party, or in the event of bankruptcy or related or similar proceedings.")
                                                            .font(.system(size: 10, weight: .light))
                                                            .foregroundColor(.black)
                                                            .multilineTextAlignment(.leading)
                                                            .padding(.horizontal, 10)
                                                        
                                                        
                                                        Spacer()
                                                            .frame(height: 10)
                                                        
                                                        Text("We may share your personal information with others with whom you communicate on the Services and any information that you post or share publicly on our website or Services. Any personal information or content that you voluntarily disclose for posting to the Services, such as User Content, becomes available to the public, as controlled by any applicable privacy settings. If you remove information that you posted to the Services, copies may remain viewable in cached and archived pages of the Services, or if other Users have copied or saved that information.")
                                                            .font(.system(size: 10, weight: .light))
                                                            .foregroundColor(.black)
                                                            .multilineTextAlignment(.leading)
                                                            .padding(.horizontal, 10)
                                                        
                                                        
                                                        Spacer()
                                                            .frame(height: 10)
                                                        
                                                        Text("Other brands owned or controlled by SocialTech Labs, and other companies owned by or under common ownership as SocialTech Labs, which also includes our subsidiaries (i.e., any organization we own or control) or our ultimate holding company (i.e., any organization that owns or controls us) and any subsidiaries it owns.  These companies will use your personal information in the same way as we can under this Policy.")
                                                            .font(.system(size: 10, weight: .light))
                                                            .foregroundColor(.black)
                                                            .multilineTextAlignment(.leading)
                                                            .padding(.horizontal, 10)
                                                        
                                                        
                                                        Spacer()
                                                            .frame(height: 10)
                                                        
                                                        VStack {
                                                            
                                                            Text("We may also disclose personal information if we believe it to be reasonably necessary to (i) satisfy any applicable law or regulation and comply with legal process, such as search warrant, subpoena or court order, or other government request served on us or on our affiliates; (ii) to enforce our Terms of Service, including to investigate potential violations thereof; (iii) take precautions against liability, to investigate and defend ourselves against any third-party claims or allegations, or to protect the security or integrity of our site; and (iv) to exercise or protect the rights, property, or personal safety of SocialTech Labs, our Users, or others. Typically, our policy is not to share personal information with governmental agencies, except as pursuant to a search warrant, subpoena, court order, or as otherwise compelled to do so by legal process, though there may be circumstances in which we may disclose such information without such legal process if we reasonably believe such disclosure is necessary to protect the health and safety of an individual, prevent or mitigate the harm of crime or illegal activity, or other compelling circumstance. We will use our best effort to provide you notice of a law enforcement request for your personal information before we release such information, unless we are not permitted to do so.")
                                                                .font(.system(size: 10, weight: .light))
                                                                .foregroundColor(.black)
                                                                .multilineTextAlignment(.leading)
                                                                .padding(.horizontal, 10)
                                                            
                                                            
                                                            Spacer()
                                                                .frame(height: 10)
                                                            
                                                            VStack{
                                                                
                                                                HStack{
                                                                    Text("Sharing of Your Information with Business Partners; Expanded Services")
                                                                        .font(.system(size: 15, weight: .semibold))
                                                                        .foregroundColor(.black)
                                                                        .multilineTextAlignment(.leading)
                                                                        .padding(.horizontal, 20)
                                                                    
                                                                    Spacer()
                                                                    
                                                                }
                                                                Spacer()
                                                                    .frame(height: 10)
                                                                
                                                                Text("We may use information about you in partnership with outside companies in the course of providing you with additional services related to SocialTech Labs. When you purchase, register, or otherwise express interest in a product or service offered by a third party through SocialTech Labs or sponsored on our site, you consent to our sharing of your personal information with those parties. When you choose to participate in rewards programs, contests, discount offers, or other programs that involve third parties, you authorize SocialTech Labs to share your personal information with those parties, who may use such information in accordance with their own privacy policies.  In these cases we will only share the information reasonably needed to provide you with service. Information that is shared with third parties is subject to the privacy policies of those parties, which may differ from SocialTech Labs’s privacy policies.")
                                                                    .font(.system(size: 10, weight: .light))
                                                                    .foregroundColor(.black)
                                                                    .multilineTextAlignment(.leading)
                                                                    .padding(.horizontal, 20)
                                                                
                                                                
                                                                Spacer()
                                                                    .frame(height: 10)
                                                                
                                                                HStack{
                                                                    
                                                                    
                                                                    Text("Sharing and Using Aggregate or Anonymized Information")
                                                                        .font(.system(size: 15, weight: .semibold))
                                                                        .foregroundColor(.black)
                                                                        .multilineTextAlignment(.leading)
                                                                        .padding(.horizontal, 20)
                                                                    
                                                                    Spacer()
                                                                    
                                                                }
                                                                
                                                                Spacer()
                                                                    .frame(height: 10)
                                                                
                                                                Text("We may aggregate, anonymize, or otherwise strip data of all personally identifying characteristics and may share that anonymized and/or aggregated data with third parties, in a manner that cannot reasonably identify any individual.")
                                                                    .font(.system(size: 10, weight: .light))
                                                                    .foregroundColor(.black)
                                                                    .multilineTextAlignment(.leading)
                                                                    .padding(.horizontal, 20)
                                                                
                                                                
                                                                Spacer()
                                                                    .frame(height: 10)
                                                                
                                                                HStack{
                                                                    Text("Profile and Data Sharing Settings")
                                                                        .font(.system(size: 15, weight: .semibold))
                                                                        .foregroundColor(.black)
                                                                        .multilineTextAlignment(.leading)
                                                                        .padding(.horizontal, 10)
                                                                    
                                                                    Spacer()
                                                                    
                                                                }
                                                                
                                                                
                                                                VStack{
                                                                    
                                                                    Spacer()
                                                                        .frame(height: 10)
                                                                    
                                                                    
                                                                    Text("You can change your account information and preferences at any time by logging onto your account.")
                                                                        .font(.system(size: 10, weight: .light))
                                                                        .foregroundColor(.black)
                                                                        .multilineTextAlignment(.leading)
                                                                        .padding(.horizontal, 10)
                                                                    
                                                                    
                                                                    Spacer()
                                                                        .frame(height: 10)
                                                                    
                                                                    HStack{
                                                                        Text("Communications")
                                                                            .font(.system(size: 15, weight: .semibold))
                                                                            .foregroundColor(.black)
                                                                            .multilineTextAlignment(.leading)
                                                                            .padding(.horizontal, 10)
                                                                        
                                                                        Spacer()
                                                                        
                                                                    }
                                                                    
                                                                    Spacer()
                                                                        .frame(height: 10)
                                                                    
                                                                    Text("We will not sell your contact information to third parties for marketing purposes.")
                                                                        .font(.system(size: 10, weight: .light))
                                                                        .foregroundColor(.black)
                                                                        .multilineTextAlignment(.leading)
                                                                        .padding(.horizontal, 10)
                                                                    
                                                                    
                                                                    Spacer()
                                                                        .frame(height: 10)
                                                                    
                                                                    VStack{
                                                                        Text("We may communicate with you via in-app notifications, email, SMS text, or other method. You control when and how (e.g. email, SMS, etc.) you would like to receive messages, and you may be able to opt-out of receiving certain types of messages. We may send you notifications of activity on the Services to the email address you give us, in accordance with any applicable privacy settings.")
                                                                            .font(.system(size: 10, weight: .light))
                                                                            .foregroundColor(.black)
                                                                            .multilineTextAlignment(.leading)
                                                                            .padding(.horizontal, 10)
                                                                        
                                                                        
                                                                        Spacer()
                                                                            .frame(height: 10)
                                                                        
                                                                        Text("SocialTech Labs may send you other messages in the course of operation of our Services, such as notifications from other Users, updates about Services changes and new features, and important news that may impact your use and enjoyment of SocialTech Labs. These communications may contain banners, ads, or promotional material provided by third parties. If you click on the third party link, you will be taken to that service, and your information will thereafter be subject to that party’s privacy policy.  You may be able to opt-out of receiving promotional emails by clicking the “unsubscribe” button at the footer of promotional email communications. Note that you are not permitted to unsubscribe or opt-out of non-promotional messages regarding your account.")
                                                                            .font(.system(size: 10, weight: .light))
                                                                            .foregroundColor(.black)
                                                                            .multilineTextAlignment(.leading)
                                                                            .padding(.horizontal, 10)
                                                                        
                                                                        
                                                                        Spacer()
                                                                            .frame(height: 10)
                                                                        
                                                                        Text("By providing SocialTech Labs your email address, you consent to our using the email address to send you Services-related notices, including any notices required by law, in lieu of communication by postal mail.")
                                                                            .font(.system(size: 10, weight: .light))
                                                                            .foregroundColor(.black)
                                                                            .multilineTextAlignment(.leading)
                                                                            .padding(.horizontal, 10)
                                                                        
                                                                        
                                                                        Spacer()
                                                                            .frame(height: 10)
                                                                        
                                                                        
                                                                        HStack{
                                                                            Text("Third Party Tracking and Advertising")
                                                                                .font(.system(size: 15, weight: .semibold))
                                                                                .foregroundColor(.black)
                                                                                .multilineTextAlignment(.leading)
                                                                                .padding(.horizontal, 10)
                                                                            
                                                                            Spacer()
                                                                            
                                                                        }
                                                                        VStack{
                                                                            
                                                                            Spacer()
                                                                                .frame(height: 10)
                                                                            
                                                                            Text("We may share, or we may permit third party ad networks, social media companies, and other third party services to collect information about the browsing behavior of our users of Services through cookies, social plug-ins, or other tracking technology. We may permit third party online advertising networks to collect information about your use of our Services over time, including location information, so that they may play or display ads that may be relevant to your interests on our Services as well as on other websites or services, or on other devices you may use. Typically, the information is collected through cookies or similar tracking technologies. You may be able to “opt out” of the collection of information through cookies or other tracking technology by actively managing the settings on your browser or mobile device. Please refer to your browser’s or mobile device’s technical information for instructions on how to delete, disable, and/or limit the use of cookies or other tracking/recording tools. Depending on your mobile device, you may not be able to control all tracking technologies through your device settings.  You may also be able to limit interest-based advertising through the settings on your browser or device. For example, you may be able to opt-out of some interest-based advertising on your mobile device by selecting “limit ad tracking” (iOS) or “opt-out of interest based ads” (Android). To learn more about interest-based advertising and how you may opt-out of some of this tracking, you may wish to visit the Network Advertising Initiative’s online resources, at http://www.networkadvertising.org/choices and/or the Digital Advertisers Alliance’s resources at www.aboutads.info/choices.  You may also be able to opt-out of some – but not all – interest-based ads served by mobile ad networks by visiting http://youradchoices.com/appchoices and downloading the mobile AppChoices app.  If you have any questions about third party tracking and advertising, you can contact us directly at Admin@SocialTech Labs.com.")
                                                                                .font(.system(size: 10, weight: .light))
                                                                                .foregroundColor(.black)
                                                                                .multilineTextAlignment(.leading)
                                                                                .padding(.horizontal, 10)
                                                                            
                                                                            
                                                                            Spacer()
                                                                                .frame(height: 10)
                                                                            
                                                                            
                                                                            
                                                                            VStack{
                                                                                
                                                                                
                                                                                HStack{
                                                                                    Text("Data Retention")
                                                                                        .font(.system(size: 15, weight: .semibold))
                                                                                        .foregroundColor(.black)
                                                                                        .multilineTextAlignment(.leading)
                                                                                        .padding(.horizontal, 10)
                                                                                    
                                                                                    Spacer()
                                                                                    
                                                                                }
                                                                                Spacer()
                                                                                    .frame(height: 10)
                                                                                
                                                                                Text("Following termination or deactivation of your account, SocialTech Labs may retain your information for a commercially reasonable time for backup, archival, or audit purposes, or to maintain and improve the Services. Furthermore, SocialTech Labs may retain and continue to use indefinitely all information (including User Content) contained in your communications to other Users or posted to public or semi-public areas of the Services after termination or deactivation of your account. Please contact us at contact@madlyradlabs.com if you wish to delete your account information from our systems, though we may not be able to delete all information, as noted in this Privacy Policy.")
                                                                                    .font(.system(size: 10, weight: .light))
                                                                                    .foregroundColor(.black)
                                                                                    .multilineTextAlignment(.leading)
                                                                                    .padding(.horizontal, 10)
                                                                                
                                                                                
                                                                                Spacer()
                                                                                    .frame(height: 10)
                                                                                
                                                                                
                                                                                
                                                                                VStack{
                                                                                    
                                                                                    
                                                                                    HStack{
                                                                                        Text("How We Protect Your Information")
                                                                                            .font(.system(size: 15, weight: .semibold))
                                                                                            .foregroundColor(.black)
                                                                                            .multilineTextAlignment(.leading)
                                                                                            .padding(.horizontal, 10)
                                                                                        
                                                                                        Spacer()
                                                                                        
                                                                                    }
                                                                                    Spacer()
                                                                                        .frame(height: 10)
                                                                                    
                                                                                    Text("SocialTech Labs cares about the security of your information and uses commercially reasonable physical, administrative, and technological safeguards to preserve the integrity and security of all information we collect and that we share with our service providers.  However, no security system is impenetrable, and we cannot guarantee the security of our systems 100%.  In the event that any information under our control is compromised as a result of a breach of security, we will take reasonable steps to investigate the situation and, where appropriate, notify those individuals whose information may have been compromised and take other steps, in accordance with any applicable laws and regulations. To protect your privacy and security, we take reasonable steps (such as requesting a unique password) to verify your identity before granting you access to your account. You are responsible for maintaining the secrecy of your unique password and account information and for controlling access to your email communications from SocialTech Labs, at all times.")
                                                                                        .font(.system(size: 10, weight: .light))
                                                                                        .foregroundColor(.black)
                                                                                        .multilineTextAlignment(.leading)
                                                                                        .padding(.horizontal, 10)
                                                                                    
                                                                                    
                                                                                    Spacer()
                                                                                        .frame(height: 10)
                                                                                    
                                                                                    
                                                                                    VStack{
                                                                                        
                                                                                        
                                                                                        HStack{
                                                                                            Text("Children's Privacy")
                                                                                                .font(.system(size: 15, weight: .semibold))
                                                                                                .foregroundColor(.black)
                                                                                                .multilineTextAlignment(.leading)
                                                                                                .padding(.horizontal, 10)
                                                                                            
                                                                                            Spacer()
                                                                                            
                                                                                        }
                                                                                        Spacer()
                                                                                            .frame(height: 10)
                                                                                        
                                                                                        Text("Protecting the privacy of young children is especially important. For that reason, SocialTech Labs does not knowingly collect or solicit personal information from anyone under the age of 13 or knowingly allow such persons to register as Users. If you are under 13, please do not send any information about yourself to us, including your name, address, telephone number, or email address. In the event that we learn that we have collected personal information from a child under age 13 without verification of parental consent, we will delete that information as quickly as possible. If you believe that we might have any information from or about a child under 13, please contact us at Admin@SocialTech Labs.com.")
                                                                                            .font(.system(size: 10, weight: .light))
                                                                                            .foregroundColor(.black)
                                                                                            .multilineTextAlignment(.leading)
                                                                                            .padding(.horizontal, 10)
                                                                                        
                                                                                        
                                                                                        Spacer()
                                                                                            .frame(height: 10)
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        VStack{
                                                                                            
                                                                                            
                                                                                            HStack{
                                                                                                Text("Links to Other Websites")
                                                                                                    .font(.system(size: 15, weight: .semibold))
                                                                                                    .foregroundColor(.black)
                                                                                                    .multilineTextAlignment(.leading)
                                                                                                    .padding(.horizontal, 10)
                                                                                                
                                                                                                Spacer()
                                                                                                
                                                                                            }
                                                                                            
                                                                                            Spacer()
                                                                                                .frame(height: 10)
                                                                                            Text("We are not responsible for the practices employed by websites linked to or from the Services, nor the information or content contained therein. Please remember that when you use a link to go from the Services to another website, our Privacy Policy is no longer in effect. Your browsing and interaction on any other website, including those that have a link on our website, is subject to that website’s own rules and policies. Please read over those rules and policies before proceeding.")
                                                                                                .font(.system(size: 10, weight: .light))
                                                                                                .foregroundColor(.black)
                                                                                                .multilineTextAlignment(.leading)
                                                                                                .padding(.horizontal, 10)
                                                                                            
                                                                                            
                                                                                            Spacer()
                                                                                                .frame(height: 10)
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            VStack{
                                                                                                
                                                                                                
                                                                                                HStack{
                                                                                                    Text("Notification Procedures")
                                                                                                        .font(.system(size: 15, weight: .semibold))
                                                                                                        .foregroundColor(.black)
                                                                                                        .multilineTextAlignment(.leading)
                                                                                                        .padding(.horizontal, 10)
                                                                                                    
                                                                                                    Spacer()
                                                                                                    
                                                                                                }
                                                                                                Spacer()
                                                                                                    .frame(height: 10)
                                                                                                
                                                                                                Text("It is our policy to provide notifications, whether such notifications are required by law or are for marketing or other business related purposes, to you via email notice, written or hard copy notice, or through conspicuous posting of such notice on the Services, as determined by SocialTech Labs in its sole discretion. We reserve the right to determine the form and means of providing notifications to you, provided that you may opt out of certain means of notification, as described in this Privacy Policy.")
                                                                                                    .font(.system(size: 10, weight: .light))
                                                                                                    .foregroundColor(.black)
                                                                                                    .multilineTextAlignment(.leading)
                                                                                                    .padding(.horizontal, 10)
                                                                                                
                                                                                                
                                                                                                Spacer()
                                                                                                    .frame(height: 10)
                                                                                                
                                                                                                
                                                                                                
                                                                                                VStack{
                                                                                                    
                                                                                                    
                                                                                                    HStack{
                                                                                                        Text("Changes to Our Privacy Policy")
                                                                                                            .font(.system(size: 15, weight: .semibold))
                                                                                                            .foregroundColor(.black)
                                                                                                            .multilineTextAlignment(.leading)
                                                                                                            .padding(.horizontal, 10)
                                                                                                        
                                                                                                        Spacer()
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                    Spacer()
                                                                                                        .frame(height: 10)
                                                                                                    Text("If we change our privacy policies and procedures, we will post those changes on the Services to keep you aware of what information we collect, how we use it, and under what circumstances we may disclose it. Changes to this Privacy Policy are effective when they are posted on this page.")
                                                                                                        .font(.system(size: 10, weight: .light))
                                                                                                        .foregroundColor(.black)
                                                                                                        .multilineTextAlignment(.leading)
                                                                                                        .padding(.horizontal, 10)
                                                                                                    
                                                                                                    
                                                                                                    Spacer()
                                                                                                        .frame(height: 10)
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    Text("For any questions on this Privacy Policy, please contact us by email at Admin@.SocialTech Labs.com or mail at SocialTech Labs, Inc., 815 Superior Avenue, East, Suite 1618, Cleveland, Ohio  44114")
                                                                                                        .font(.system(size: 10, weight: .medium))
                                                                                                        .foregroundColor(.black)
                                                                                                        .multilineTextAlignment(.leading)
                                                                                                        .padding(.horizontal, 5)
                                                                                                    
                                                                                                    
                                                                                                    Spacer()
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                  
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

