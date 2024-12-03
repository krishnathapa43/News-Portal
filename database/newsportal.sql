-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2022 at 10:39 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'sms.b@gmail.com', 1, '2021-05-26 18:30:00', '2022-06-15 06:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(6, 'Gadgets', 'computer accessories', '2021-06-21 18:30:00', '2022-06-12 02:15:10', 1),
(9, 'Security', 'Here we post all about cybersecurity news', '2022-06-12 02:05:46', NULL, 1),
(10, 'Telecom', 'Telicommunication', '2022-06-12 02:10:28', NULL, 1),
(11, 'Cloud ', 'all cloud based news', '2022-06-12 02:24:02', NULL, 1),
(12, 'Social media', 'social media news ', '2022-06-12 02:30:10', NULL, 1),
(16, 'Startups', 'The startup news', '2022-08-07 07:21:43', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(8, 23, 'hello', '123@gmail.com', 'Um wait', '2022-06-18 03:46:17', 1),
(9, 23, 'hi', 'bharatkumarthapa49@gmail.com', 'hello', '2022-06-18 03:49:37', 1),
(14, 15, 'Bharat Kumar Thapa', 'bharatkumarthapa49@gmail.com', 'I guess Something went wrong\r\n', '2022-06-26 01:41:03', 1),
(21, 23, 'Bharat Kumar Thapa', '1385211002@365.mit.edu.ge', 'hello ', '2022-08-05 02:48:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About our site', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Online News Portal will provide the user flexibility to read the news online. Online news portal will provide the users to give feedback. So that the admin can do changes according to the users’ point of view. Here the users can read the news anywhere they are located and related to any type. Here the news is available all the time</span></font><br>', '2021-06-29 18:30:00', '2022-08-07 08:05:20'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address : </b>Kathmandu Nepal</p><p><b>Phone Number : </b>+977 -1234567890</p><p><b>Email address : </b>sms.b@gmail.com</p>\n<b>Social media links: </b> <a href=\"https://linktr.ee/bharatkumarthapa\" class=\"btn-primary\">Linktr.ee</a>', '2021-06-29 18:30:00', '2022-08-07 08:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(15, 'Kantipur TV’s Twitter account ‘Hacked’: Series of Hacking Continues', 9, 12, 'The Twitter account of Kantipur Television has been hacked.\r\n\r\nThe television account of ourktv has been out of access since this yesterday evening, said Dilbhushan Pathak, editor-in-chief of the television.\r\n\r\n\r\nThe handle currently has no name, and the profile and cover images have been deleted.\r\n\r\nIrrelevant tweets are being twitted such as ‘Refresh your metadata’ and ‘Something is coming.’\r\n\r\n and Further investigation is being conducted and the television technical team is collaborating with Twitter support, according to Editor Pathak.\r\n\r\nJust recently OCR Digital YouTube account was hacked. series of hacking attempts have increased in Nepal.', '2022-06-12 02:08:54', '2022-08-05 02:53:03', 1, 'Kantipur-TV’s-Twitter-account-‘Hacked’:-Series-of-Hacking-Continues', '967c31df23f6b5be17863b541f3e633d.png', 10, 'admin', NULL),
(16, 'Namaste Pay Launches NT’s Data and Voice Pack Services', 10, 13, 'Namaste Pay has launched Nepal Telecom’s “Data and Voice Pack”  services in its App. The service is now available on both platforms i.e. Android and IOS.\r\n\r\nNamaste Pay users can now purchase all the listed packages available under the data and voice packs provided by Nepal Telecom through Namaste Pay wallet balance.\r\n\r\n\r\nNamaste Pay users will be able to enjoy attractive offers on Nepal Telecom’s data and voice packs in the coming days.\r\n\r\nAbout Namaste Pay:\r\nNamaste Pay is a payment service provider, headquartered in Tripureshwor Kathmandu and is jointly promoted by Nepal Telecom and Rastriya Banijya Bank. Namaste Pay aims to provide one-stop digital payment solutions for multiple categories of goods, services, and other financial services.\r\n\r\nNamaste Pay is dedicated to creating a cashless society, by providing modern services not only to the banked and digitally educated people but also to the unbanked masses to bring about true financial inclusion.\r\n\r\nFor more details click www.namastepay.com', '2022-06-12 02:12:43', '2022-08-07 05:36:43', 1, 'Namaste-Pay-Launches-NT’s-Data-and-Voice-Pack-Services', 'e6b21abe362a30337824dd617a2ca483.png', 3, 'admin', NULL),
(17, 'Smartphones Have Become Accessories That Are Powered By AI', 6, 14, 'Going Beyond the Basics Smartphones Have Become Accessories That Are Powered By AI\r\n\r\nSmartphones have progressed in leaps and bounds over time in response to shifting consumer perceptions, evolving into the true multi-functional devices we carry in our hands today.\r\n\r\n\r\nRemember the times when phones were created too large and cumbersome to carry around in a pocket or purse? Or when this huge device could only produce low-res images? Back in the early days, mobile phones’ sole purpose was for calling other people whilst on the move and carried big batteries to support users throughout the day and help them with most of their tasks.\r\n\r\nSoon after, the ability to click pictures and other facilities were introduced. Since then, smartphone users have never settled for less and compromised with what they want and need when it comes to purchasing a smartphone.\r\n\r\nPersonalized technology for making a statement\r\nProfessional-quality pictures can now be captured with pocket-sized devices thanks to the introduction of smart cameras. AI-powered smart features enable smartphones to precisely identify the environment and automatically enhance the photographs by eliminating noise, correcting light, sharpening the subject, and removing any unwanted or blurry elements in the frame. The smartphone uses an artificial intelligence algorithm to analyze and identify the background and recognize people and objects. It further suggests various modes and features like a blur that make the subject stand out and drastically improve the scene.\r\n\r\nvivo, the global technology brand, with its commitment to “customer-centric innovation” is leading by offering AI camera technology in their smartphone portfolio across their affordable and premium series.\r\n\r\nThe AI Camera algorithm distinguishes the subject from the background and provides multiple inbuilt preset scenes including Sunset, Macro, Landscape, Portrait, and others that intelligently predict the environment based on the lighting and other factors and implements the settings accordingly, helping the users to capture the moment perfectly in a single shot.\r\n\r\nPremium aesthetics with the luxurious design language\r\nThe global smartphone brand is often seen in the news for the device’s terrific camera and design features which seem to have captured the hearts of smartphone enthusiasts. All Vivo smartphones stand in terms of their ethereal design and exquisite features.\r\n\r\nvivo has pioneered this sleek design, ensuring that the best technologies are fitted into a thin and stylish body. A case in point is when in 2012 Vivo launched the world’s thinnest smartphone at the time of its release: X1 which was only 6.55mm thick. It was also the world’s first to put a dedicated Hi-Fi quality audio chip in a smartphone. Then again in 2014, Vivo released X5Max with 4.75mm in thickness. It remains the world’s thinnest phone until now.\r\n\r\nWith such interesting outlooks, incredible features, and jaw-dropping designs, Vivo sure has caught everyone’s attention with their devices. We know the brand will only go upward from here on!', '2022-06-12 02:17:20', '2022-08-05 02:56:04', 1, 'Smartphones-Have-Become-Accessories-That-Are-Powered-By-AI', '21cafee3438336c804b7718fb0b06707.jpg', 1, 'admin', NULL),
(18, 'Pega expands partnership with Google Cloud to drive digital transformation', 11, 15, 'Pegasystems has formed a strategic partnership with Google Cloud to enable joint clients to accelerate their digital transformations with Pega’s low-code enterprise software on Google Cloud’s highly scalable cloud services.\r\n\r\nAs part of the agreement, Pega will make Pega Cloud applications available on Google Cloud as a fully hosted and managed as-a-service offering. In addition, Pega and Google Cloud will collaborate on addressing new industry-specific use cases and joint go-to-market activities and will bring Pega Infinity applications to the Google Cloud Marketplace.\r\n\r\nThe partnership is consistent with Pega’s cloud choice strategy, which allows clients to decide how they want to deploy Pega, providing the choice, flexibility, and support to configure their cloud environment to best suit their needs and adapt to business changes. Pega clients now have a second Pega Cloud option on which to host their Pega applications, fully managed by Pega, which powers millions of automated processes and billions of customer interactions every day for some of the most important organizations in the world. The combined solution will provide clients a secure and reliable path to modernizing their software infrastructure with the flexibility to help easily scale and adapt as their needs change.\r\n\r\nIn addition, the partnership brings additional strategic elements that will help drive growth and opportunity for both companies, including:\r\n\r\nJoint go-to-market activities: The two companies will collaborate on go-to-market activities with collaboration on co-selling, field sales enablement, migration accelerators, and marketing activities. Google will also offer accelerators and incentives to support clients using Pega software on-premises who wish to migrate to Pega Cloud running on Google Cloud Platform.\r\nExploration of new industry use cases: Pega will partner with Google Cloud to identify opportunities where capabilities from both companies can address customers’ use cases in key industries, beginning with telecommunications, healthcare, and financial services.\r\nPega availability on Google Cloud Marketplace: Pega solutions from its core Pega Infinity software suite – including Pega Customer Service, Pega Customer Decision Hub, Pega Sales Automation, and Pega Platform – will be listed and available for purchase on Google Cloud Marketplace. This will make it easy for Pega Cloud clients on Google Cloud to purchase and deploy the Pega software they need when they need it to drive their business.\r\nPega Infinity applications for Pega Cloud clients on Google Cloud will be available by the end of Q2 2022, starting with Pega Platform in the Americas. Other Pega Infinity solutions and regions are planned to go online over the next 18-24 months. Pega Infinity solutions are expected to be available on Google Cloud Marketplace by the end of Q3 this year.\r\nCarola Cazenave, head of global partner ecosystem, Pega, said: “This deep collaboration with Google not only gives our clients a cloud choice with one of the leading cloud vendors, it also provides us with a powerful new growth channel to be innovative and drive our business forward.\r\n\r\n“We look forward to giving our Pega Cloud clients the exceptional speed, security, and scalability that Google Cloud reliably provides to clients around the world.”\r\n\r\nRodrigo Rocha, director of ISV partnerships, Google Cloud, said: “Businesses can now deploy Pega’s customer engagement applications at the global scale, on Google Cloud’s trusted and highly-performant infrastructure.\r\n\r\n“Pega’s partnership with Google Cloud will also add value for organizations who are looking to utilize Pega and Google Cloud together to address specific industry opportunities, such as helping leading telecom companies better manage a customers’ data journey or helping the automotive industry enhance intelligent capabilities.”', '2022-06-12 02:27:23', NULL, 1, 'Pega-expands-partnership-with-Google-Cloud-to-drive-digital-transformation', '90d271c13cecb131edee7c0dc37fbffd.jpg', NULL, 'admin', NULL),
(19, 'LinkedIn Launches New Ad Campaign to Highlight Rising Conversation in the App', 12, 16, 'LinkedIn has launched a new ad campaign that aims to highlight the power of community on the platform, and how that can help to guide users in their career progression.\r\n<br><br>\r\n\r\nThe campaign, which is now live in the UK, India, and Germany, presents LinkedIn’s growing membership as a dinner table conversation, where users can move their respective seats to find the discussions that best suit their interests.\r\n<br><br><br>\r\n\r\nAs explained by LinkedIn:  \r\n\r\n“For many of us, the last two years of uncertainty have been a period of great reflection and the catalyst to truly identify what it is we really want from our lives […] Our global research underlines this sentiment, with huge swathes of us spending time reassessing and revaluating our lives and careers - with 67% of people in the UK, 57% in Germany and 82% in India considering a new challenge this year. We are a workforce that’s on the move and looking for a change.”\r\n\r\nWithin that, LinkedIn is facilitating new career discussions and opportunities, whether via LinkedIn Events, audio rooms, InMail, etc.\r\n<br>\r\nIt’s a good campaign, which underlines the rising activity in the app – though it does seem more suited to, say, Clubhouse instead, which is solely focused on topical discussions.\r\n\r\nBut LinkedIn has, of course, copied Clubhouse’s key features, while the platform is also seeing ‘record levels of engagement’ according to reportage from parent company Microsoft.\r\n\r\nMaybe, then, LinkedIn is the place to be to engage in many types of discussions, and the dinner table metaphor does seem like an inviting way to present social media discourse.\r\n\r\nEven if it’s not accurate. Can you imagine a real dinner table discussion inspired by social media apps? The Twitter one would be chaotic, then you’d have your family and friends altogether on the Facebook table, and a bunch of weird folk over at the Reddit end.\r\n\r\nBut the base idea is appealing, especially with career development in mind, and it does seem like a good way to promote LinkedIn.\r\n\r\nAs noted, the new campaign is now live in the UK, India, and Germany and will run throughout June 2022 across TV, VOD, and digital channels.', '2022-06-12 02:35:48', '2022-08-07 07:19:02', 1, 'LinkedIn-Launches-New-Ad-Campaign-to-Highlight-Rising-Conversation-in-the-App', '5509a14af7536c1734cc0432952d484f.jpg', 25, 'admin', 'admin'),
(23, 'Redmi Note 11 Pro 5G in Nepal: More price for an improved battery and design along with weakened cameras', 6, 14, 'Redmi Note 11 Pro 5G is the recent release from Xiaomi in Nepal. This is also one of the three models in the Redmi Note 11 lineup.\r\n\r\nThe first smartphone of this series was launched two months ago and now Note 11 Pro 5G and Note 11S have joined the lineup. Redmi Note series smartphones are well reputed for providing ample features at affordable pricing and are one of the top-selling smartphones in Nepal.\r\n\r\nRedmi Note 11 Pro 5G is the best offering in the Note 11 lineup, at least in Nepal at the moment. This phone flexes a huge AMOLED display that supports a higher refresh rate for a smooth user experience. The phone also features a larger resolution camera setup and liquid cool technology as well. The phone features plenty of other useful features. Yet, there are some serious issues with the phone–from the camera to the price. Hence, we do not think it will follow the success the brand previously had.', '2022-06-13 04:56:03', '2022-08-07 08:38:29', 1, 'Redmi-Note-11-Pro-5G-in-Nepal:-More-price-for-an-improved-battery-and-design-along-with-weakened-cameras', 'fcb6a4b4161d8cbd2b4dd1d2fee1683fjpeg', 39, 'admin', NULL),
(25, 'AstroPod Dating App Launched in Nepal, ‘Made in Stars’', 16, 20, 'US-based Nepali technology company Astro Veda has launched a dating app named AstroPod for the first time in Nepal.\r\n\r\nIn the dearth of reliable dating apps in Nepal, the company launched the app.\r\n\r\nThe slogan of the app AstroPod ‍is ‘Made in Stars’.\r\n<br>\r\n‘We launched the AstroPod dating app to share that experience. This app is different from other regular dating apps’, CEO Koirala added, ‘This app comprises the facility of choosing perfect match designed on the basis of Vedic Astrological matchmaking. Moreover, one can have the facility of compatibility test before choosing perfect partner.’\r\n<br>\r\nStarting a software company (specializing in app development) was our goal as it was a gateway to making something for the world in a small part of the world.\r\n<br>\r\nThe initial idea of the project was to start an IM (Instant Messaging) as the core vision/mission of the company was to make the connection between people intact and share happiness back in 2014. However, due to the lack of proper knowledge of advanced technology and a clear revenue source, we had to postpone our Idea.\r\n<br>\r\nRikesh, Vivek and Me started a software company when met Guru Samundra involved to do a project that would serve astrological services to the people around the globe through our app which turned into a company that is now employing 40 professionals and serving more than a million users across the world.\r\n<br>\r\nAstro Veda is Nepal based company that provides Astrological services to the people in need with the goal to make their life easier and advise them to live a happy life.\r\n', '2022-08-07 07:23:52', NULL, 1, 'AstroPod-Dating-App-Launched-in-Nepal,-‘Made-in-Stars’', '1ad773595af89b3852e0e06aedc3ceaf.jpg', NULL, 'admin', NULL),
(26, 'Reddit Shares Insights into Usage by Parents and Students [Infographic]', 12, 16, 'With summer excitement winding down, back to school planning is now well underway for many, and it’s about to ramp up even further as we close in on the beginning of the new school year. <br>\r\n\r\nFor brands, that means that now is the time to kick off your back to school campaigns, and tie-in promotions to reach this audience. Social platforms will likely play a key role in this - though one that likely hasn’t got as much consideration is Reddit.\r\n<br>\r\nReddit says that it sees 85 million monthly views across parenting communities, and back to school discussion is now ramping up. That could make it worth testing out with your campaigns\r\n<br>', '2022-08-07 08:25:33', NULL, 1, 'Reddit-Shares-Insights-into-Usage-by-Parents-and-Students-[Infographic]', '5deaba2bab1e2ae3761253c801bd9bff.png', NULL, 'admin', NULL),
(27, 'Orbus Software launches global partner program', 11, 15, 'Orbus Software, a cloud solutions provider for digital transformation, has launched its new global partner program.\r\n<br>\r\nEvery organisation is looking to accelerate digital transformation and build operational resiliency so that it can respond to new regulations or uncertainty in the environment from events like cyber-attacks, pandemics, and climate change.\r\n<br>\r\nThe program will serve as a vital resource for partners helping their customers become more agile by building sustainable digital processes able to weather and adapt to disruption.\r\n<br>\r\nBy the end of 2021, Orbus Software had over 50 partners across the globe. With the program’s enhanced benefits and resources, its community of resellers, service organizations, system integrators and technology partners supporting business transformation will continue to grow. The tiered program provides a deeper and more accessible range of partner skills and solutions to help customers across various industries, including financial services, pharmaceuticals and the public sector, build more resilient and sustainable digital processes into their operations. Partners will be able to support their customers in delivering faster outcomes by streamlining the entire process, from data capture to reporting and insights.\r\n<br>\r\nMarjorie Martinez, global head of partnerships, Orbus Software, said: “The new program reflects Orbus Software’s commitment to a partner first culture. Our goal is to have meaningful relationships with a wide range of skilled partners committed to helping accelerate digital transformation to create more resilient and sustainable organizations. Partners now have a comprehensive way to grow their businesses, gain product knowledge, and provide better customer service.\r\n', '2022-08-07 08:28:54', '2022-08-07 08:34:50', 1, 'Orbus-Software-launches-global-partner-program', 'a23cb0e1dc72c2011713c7028fa094a9.jpg', NULL, 'admin', NULL),
(28, 'Namaste Pay Launches Flight Tickets', 10, 13, 'Namaste Pay has launched the Domestic Flight Ticket Service for its customers. The service is now available on Android and will soon be available on IOS as well.\r\n<br>\r\nNamaste Pay users can now purchase flight tickets (Way and round trip) for domestic destinations at the economic rates through the Namaste Pay wallet. Namaste Pay users will be able to book airlines from reliable and secure booking partners.\r\n<br>\r\nAdditionally, Namaste Pay launched an exciting offer for the fliers, where the first five customers purchasing flight tickets will get a flat cashback of NPR 300 in their wallet. The rest will get a flat cashback of NPR 150 while purchasing the flight tickets. And one lucky user will get the two-way flight tickets to Pokhara', '2022-08-07 08:30:24', '2022-08-07 08:36:29', 1, 'Namaste-Pay-Launches-Flight-Tickets', 'c7de25fc28a148f1377a293728b5a8bb.jpg', NULL, 'admin', NULL),
(29, 'InDriver launches Set Your Own Price Ride Hailing App in Nepal', 16, 20, 'inDriver, an international ride-hailing service, has launched its services in Kathmandu, the largest city in Nepal.\r\n<br>\r\ninDriver connects drivers and passengers and allows them to independently agree on all the terms of each trip. inDriver’s Real-Time Deals (RTD) model enables passengers to offer their price for their selected route and get counter-offers directly from nearby drivers.\r\n<br>\r\nIn turn, drivers have the freedom to decide for themselves which ride requests suit them best, and can suggest their own prices.\r\n<br>\r\nUnlike other ride-hailing apps, where algorithms determine to price, inDriver offers a unique service by allowing passengers and drivers to independently negotiate the fare of the ride. If the passenger receives multiple offers, they can take their pick based on the driver’s ETA, rating, price, and vehicle model.\r\n<br>\r\nThe driver can also choose a particular order based on the price and distance, the passenger’s rating, the pick-up location, and the number of inDriver trips the customer has already taken.', '2022-08-07 08:31:42', '2022-08-07 08:35:42', 1, 'InDriver-launches-Set-Your-Own-Price-Ride-Hailing-App-in-Nepal', '32441e9eec141c69797b77c69b7cf08d.jpg', NULL, 'admin', NULL),
(30, 'Why Are Banks Getting Threats for a Cyber Attack in Nepal?', 9, 12, 'Cybercrime is a term that is related to the internet’s relationship to technological and electronic elements, including software, hardware, and information systems.\r\n<br>\r\nCyberlaw of Nepal was established on 15th September 2004.\r\n<br>\r\nWhy are banks getting threats for a cyber attack?\r\nIn July 2021, fifteen banks in Nepal were threatened by an email sent by a group illustrating that the system has been compromised. The email created lots of panic in the banking sector, but later nothing happened.\r\n<br>\r\nSimilarly, recently in December, an email was received threatening to compromise various systems of the bank. Cyber attacks can cause substantial financial losses for banks and customers. Banks also stand to suffer significant reputational damage as a direct consequence of a data breach, leading to a progressive erosion in customer trust, competitive advantage, and a narrowing of future sources of revenue.', '2022-08-07 08:33:04', NULL, 1, 'Why-Are-Banks-Getting-Threats-for-a-Cyber-Attack-in-Nepal?', '4f1a29f2c4b1ff95d8c92cc0c992f135.jpg', NULL, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(12, 9, 'ICT news', 'ICT news\r\n', '2022-06-12 02:07:09', '2022-06-18 03:31:18', 1),
(13, 10, 'NTC', 'Nepal telecom', '2022-06-12 02:11:52', NULL, 1),
(14, 6, 'devices', 'all about gadgets', '2022-06-12 02:15:56', '2022-06-27 13:53:17', 1),
(15, 11, 'cloudtech', 'Microsoft, AWS, Google Cloud, Alibaba cloud ', '2022-06-12 02:25:39', NULL, 1),
(16, 12, 'SocialMedia today', 'Social Media Today is a leading industry publication operated by Industry Dive. Our journalists spark ideas and shape agendas for 5+ million decision-makers in the most competitive industries.', '2022-06-12 02:31:07', '2022-06-12 02:36:03', 1),
(19, 12, 'nepal', 'flaksuf ;aldkjf', '2022-06-27 14:18:05', '2022-08-07 07:21:57', 0),
(20, 16, 'News', 'Startup news ', '2022-08-07 07:22:19', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `subcategory` (`SubCategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `admin` (`AdminUserName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
