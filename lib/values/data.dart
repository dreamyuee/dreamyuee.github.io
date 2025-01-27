part of 'values.dart';

//https://api.github.com/repos/david-legend/aerium/stargazers
//https://api.github.com/repos/david-legend/aerium/forks
class MenuData {
  MenuData({
    required this.title,
    required this.routeName,
  });

  final String title;
  final String routeName;
}

class CertificationData {
  CertificationData({
    required this.title,
    required this.image,
    required this.imageSize,
    required this.url,
    required this.awardedBy,
  });

  final String image;
  final double imageSize;
  final String url;
  final String title;
  final String awardedBy;
}

class ProjectDetails {
  ProjectDetails({
    required this.projectImage,
    required this.projectName,
    required this.projectDescription,
    required this.additionalDescription,
    required this.pdf,
    this.technologyUsed,
    this.isPublic,
    this.isLive,
    this.isOnPlayStore,
    this.playStoreUrl,
    this.webUrl,
    this.hasBeenReleased,
    this.gitHubUrl,
  
  });

  final String projectImage;
  final String projectName;
  final String projectDescription;
  final String additionalDescription;
  final bool? isPublic;
  final bool? isOnPlayStore;
  final bool? isLive;
  final bool? hasBeenReleased;
  final String? playStoreUrl;
  final String? gitHubUrl;
  final String? webUrl;
  final String? technologyUsed;
  final String pdf;
}

class PortfolioData {
  PortfolioData({
    required this.title,
    required this.image,
    required this.imageSize,
    required this.subtitle,
    required this.portfolioDescription,
    required this.pdf,
    required this.additionalDescription,
    this.technologyUsed,
    this.isPublic = false,
    this.isOnPlayStore = false,
    this.isLive = false,
    this.gitHubUrl = "",
    this.hasBeenReleased = true,
    this.playStoreUrl = "",
    this.webUrl = "",
    this.subtitleColor,

  });

  final String image;
  final String portfolioDescription;
  final String additionalDescription;
  final double imageSize;
  final String title;
  final String subtitle;
  final bool isPublic;
  final bool hasBeenReleased;
  final String gitHubUrl;
  final bool isOnPlayStore;
  final String playStoreUrl;
  final bool isLive;
  final String webUrl;
  final String? technologyUsed;
  final String pdf;
  final Color? subtitleColor;
  
}

class AllPortfolioData {
  AllPortfolioData({
    required this.title_1,
    required this.pdf_1,
    required this.title_2,
    required this.pdf_2,
    required this.title_3,
    required this.pdf_3,
    required this.title_4,
    required this.pdf_4,
  
  });

final String title_1;
final String pdf_1;
final String title_2;
final String pdf_2;
final String title_3;
final String pdf_3;
final String title_4;
final String pdf_4;

}

class ExperienceData {
  ExperienceData({
    required this.position,
    required this.roles,
    required this.location,
    required this.duration,
    this.company,
    this.companyUrl,
  });

  final String? company;
  final String? companyUrl;
  final String location;
  final String duration;
  final String position;
  final List<String> roles;
}

class SkillData {
  SkillData({
    required this.skillName,
    required this.skillLevel,
  });

  final String skillName;
  final double skillLevel;
}

class SubMenuData {
  SubMenuData({
    required this.title,
    this.isSelected,
    this.content,
    this.skillData,
    this.isAnimation = false,
  });

  final String title;
  final String? content;
  final List<SkillData>? skillData;
  bool isAnimation;
  bool? isSelected;
}

class Data {
  static List<MenuData> menuList = [
    MenuData(title: StringConst.HOME, routeName: HomePage.homePageRoute),
    MenuData(title: StringConst.ABOUT_ME, routeName: AboutPage.aboutPageRoute),
    MenuData(
      title: StringConst.PORTFOLIO,
      routeName: PortfolioPage.portfolioPageRoute,
    ),
//    MenuData(
//      title: StringConst.CONTACT,
//      routeName: ContactPage.contactPageRoute,
//    ),
    // MenuData(
    //   title: StringConst.EXPERIENCE,
    //   routeName: ExperiencePage.experiencePageRoute,
    // ),
    MenuData(title: StringConst.RESUME, routeName: StringConst.RESUME),
    // MenuData(
    //   title: StringConst.CERTIFICATIONS,
    //   routeName: CertificationPage.certificationPageRoute,
    // ),
  ];

  static List<SkillData> skillData = [
    SkillData(skillLevel: 95, skillName: StringConst.FLUTTER),
    SkillData(skillLevel: 70, skillName: StringConst.JAVA),
    SkillData(skillLevel: 78, skillName: StringConst.ANDROID),
    SkillData(skillLevel: 70, skillName: StringConst.KOTLIN),
    SkillData(skillLevel: 80, skillName: StringConst.JAVASCRIPT),
    SkillData(skillLevel: 80, skillName: StringConst.PHP),
    SkillData(skillLevel: 80, skillName: StringConst.LARAVEL),
    SkillData(skillLevel: 80, skillName: StringConst.SQL),
    SkillData(skillLevel: 90, skillName: StringConst.WORDPRESS),
    SkillData(skillLevel: 80, skillName: StringConst.BOOTSTRAP),
    SkillData(skillLevel: 80, skillName: StringConst.HTML_CSS),
  ];

  static List<SubMenuData> subMenuData = [
    SubMenuData(
      title: StringConst.KEY_SKILLS,
      isSelected: true,
      isAnimation: true,
      skillData: skillData,
    ),
    SubMenuData(
      title: StringConst.EDUCATION,
      isSelected: false,
      content: StringConst.EDUCATION_TEXT,
    ),
  ];
  static List<PortfolioData> portfolioData = [
    PortfolioData(
      title: StringConst.ONBOARDING_APP,
      subtitle: StringConst.ONBOARDING_APP_SUBTITLE,
      image: ImagePath.ONBOARDING_APP,
      portfolioDescription: StringConst.ONBOARDING_APP_DETAIL,
      additionalDescription: StringConst.ONBOARDING_APP_DESCRIPTION,
      subtitleColor : Color.fromARGB(255, 221, 114, 139),
      imageSize: 0.15,
      isPublic: true,
      technologyUsed: StringConst.FLUTTER,
      gitHubUrl: StringConst.FOODY_BITE_GITHUB_URL,
      pdf: StringConst.ONBOARDING_APP_PDF,

    ),
    PortfolioData(
      title: StringConst.OTP_TEXT_FIELD,
      subtitle: StringConst.OTP_TEXT_FIELD_SUBTITLE,
      image: ImagePath.OTP_TEXT_FIELD,
      portfolioDescription: StringConst.OTP_TEXT_FIELD_DETAIL,
      additionalDescription: StringConst.OTP_TEXT_FIELD_DESCRIPTION,
      subtitleColor: Color.fromARGB(255, 180, 98, 50),
      imageSize: 0.15,
      isPublic: true,
      isLive: true,
      technologyUsed: StringConst.FLUTTER,
      gitHubUrl: StringConst.OTP_TEXT_FIELD_GITHUB_URL,
      webUrl: StringConst.OTP_TEXT_FIELD_WEB_URL,
      pdf: StringConst.OTP_TEXT_FIELD_PDF,
    ),
    PortfolioData(
      title: StringConst.LOGIN_CATALOG,
      subtitle: StringConst.LOGIN_CATALOG_SUBTITLE,
      image: ImagePath.LOGIN_CATALOG,
      portfolioDescription: StringConst.LOGIN_CATALOG_DETAIL,
      additionalDescription: StringConst.LOGIN_CATALOG_DESCRIPTION,
      subtitleColor: Color.fromARGB(255, 219, 177, 64),
      imageSize: 0.3,
      isPublic: true,
      technologyUsed: StringConst.FLUTTER,
      gitHubUrl: StringConst.LOGIN_CATALOG_GITHUB_URL,
      pdf: StringConst.LOGIN_CATALOG_PDF,
    ),
    PortfolioData(
      title: StringConst.FOODY_BITE,
      subtitle: StringConst.FOODY_BITE_SUBTITLE,
      image: ImagePath.FOODY_BITE,
      portfolioDescription: StringConst.FOODY_BITE_DETAIL,
      additionalDescription: StringConst.FOODY_BITE_DESCRIPTION,
      subtitleColor:  Color.fromARGB(255, 43, 119, 184),
      imageSize: 0.45,
      isPublic: true,
      technologyUsed: StringConst.FLUTTER,
      gitHubUrl: StringConst.FOODY_BITE_GITHUB_URL,
      pdf: StringConst.FOODY_BITE_PDF,
    ),
    PortfolioData(
      title: StringConst.FINOPP,
      subtitle: StringConst.FINOPP_SUBTITLE,
      image: ImagePath.FINOPP,
      portfolioDescription: StringConst.FINOPP_DETAIL,
      additionalDescription: "",
      imageSize: 0.15,
      isPublic: true,
      technologyUsed: StringConst.FLUTTER,
      gitHubUrl: StringConst.FINOPP_GITHUB_URL,
      pdf: StringConst.FINOPP_PDF,
    ),
    PortfolioData(
      title: StringConst.BEQUIP_LOGISTICS,
      subtitle: StringConst.BEQUIP_LOGISTICS_SUBTITLE,
      image: ImagePath.BEQUIP_LOGISTICS,
      portfolioDescription: StringConst.BEQUIP_LOGISTICS_DETAIL,
      additionalDescription: "",
      imageSize: 0.3,
      isLive: true,
      technologyUsed: StringConst.WORDPRESS,
      webUrl: StringConst.BEQUIP_LOGISTICS_WEB_URL,
      pdf: StringConst.BEQUIP_LOGISTICS_PDF,
    ),
    PortfolioData(
      title: StringConst.AERIUM,
      subtitle: StringConst.AERIUM_SUBTITLE,
      image: ImagePath.AERIUM,
      portfolioDescription: StringConst.AERIUM_DETAIL,
      additionalDescription: "",
      imageSize: 0.3,
      isPublic: true,
      isLive: true,
      technologyUsed: StringConst.FLUTTER,
      gitHubUrl: StringConst.AERIUM_GITHUB_URL,
      webUrl: StringConst.AERIUM_WEB_URL,
      pdf: StringConst.AERIUM_PDF,
    ),
    PortfolioData(
      title: StringConst.LEARN_UPP,
      subtitle: StringConst.LEARN_UPP_SUBTITLE,
      image: ImagePath.LEARN_UPP,
      portfolioDescription: StringConst.LEARN_UPP_DETAIL,
      additionalDescription: "",
      imageSize: 0.3,
      isPublic: true,
      technologyUsed: StringConst.FLUTTER,
      gitHubUrl: StringConst.LEARN_UPP_GITHUB_URL,
      pdf: StringConst.LEARN_UPP_PDF,
    ),
    PortfolioData(
      title: StringConst.VYBZ,
      subtitle: StringConst.VYBZ_SUBTITLE,
      image: ImagePath.VYBZ,
      portfolioDescription: StringConst.VYBZ_DETAIL,
      additionalDescription: "",
      imageSize: 0.15,
      isOnPlayStore: false,
      hasBeenReleased: false,
      technologyUsed: StringConst.FLUTTER,
      playStoreUrl: StringConst.VYBZ_PLAYSTORE_URL,
      pdf: StringConst.VYBZ_PDF,
    ),
    PortfolioData(
      title: StringConst.COLOSSAL_TOONS,
      subtitle: StringConst.COLOSSAL_TOONS_SUBTITLE,
      image: ImagePath.COLOSSAL_TOONS,
      portfolioDescription: StringConst.COLOSSAL_TOONS_DETAIL,
      additionalDescription: "",
      imageSize: 0.15,
      isOnPlayStore: false,
      hasBeenReleased: false,
      technologyUsed: StringConst.FLUTTER,
      playStoreUrl: StringConst.COLOSSAL_TOONS_PLAYSTORE_URL,
      pdf: StringConst.COLOSSAL_TOONS_PDF,
    ),
  ];

  static AllPortfolioData allPortfolioData = AllPortfolioData(
    title_1: StringConst.ONBOARDING_APP,
    pdf_1: StringConst.ONBOARDING_APP_PDF,
    title_2: StringConst.OTP_TEXT_FIELD,
    pdf_2: StringConst.OTP_TEXT_FIELD_PDF,
    title_3: StringConst.LOGIN_CATALOG,
    pdf_3: StringConst.LOGIN_CATALOG_PDF,
    title_4: StringConst.FOODY_BITE,
    pdf_4: StringConst.FOODY_BITE_PDF,
  );


  static List<CertificationData> certificationData = [
    CertificationData(
      title: StringConst.ASSOCIATE_ANDROID_DEV,
      url: StringConst.ASSOCIATE_ANDROID_DEV_URL,
      image: ImagePath.ASSOCIATE_ANDROID_DEV,
      imageSize: 0.30,
      awardedBy: StringConst.GOOGLE,
    ),
    CertificationData(
      title: StringConst.DATA_SCIENCE,
      url: StringConst.DATA_SCIENCE_CERT_URL,
      image: ImagePath.DATA_SCIENCE_CERT,
      imageSize: 0.30,
      awardedBy: StringConst.UDACITY,
    ),
    CertificationData(
      title: StringConst.ANDROID_BASICS,
      url: StringConst.ANDROID_BASICS_CERT_URL,
      image: ImagePath.ANDROID_BASICS_CERT,
      imageSize: 0.30,
      awardedBy: StringConst.UDACITY,
    ),
  ];

  static List<ExperienceData> experienceData = [
    ExperienceData(
      company: StringConst.COMPANY_4,
      position: StringConst.POSITION_4,
      companyUrl: StringConst.COMPANY_4_URL,
      roles: [
        StringConst.COMPANY_4_ROLE_1,
        StringConst.COMPANY_4_ROLE_2,
        StringConst.COMPANY_4_ROLE_3,
        StringConst.COMPANY_4_ROLE_4,
      ],
      location: StringConst.LOCATION_4,
      duration: StringConst.DURATION_4,
    ),
    ExperienceData(
      company: StringConst.COMPANY_3,
      position: StringConst.POSITION_3,
      companyUrl: StringConst.COMPANY_3_URL,
      roles: [
        StringConst.COMPANY_3_ROLE_1,
        StringConst.COMPANY_3_ROLE_2,
        StringConst.COMPANY_3_ROLE_3,
        StringConst.COMPANY_3_ROLE_4,
      ],
      location: StringConst.LOCATION_3,
      duration: StringConst.DURATION_3,
    ),
    ExperienceData(
      company: StringConst.COMPANY_2,
      position: StringConst.POSITION_2,
      companyUrl: StringConst.COMPANY_2_URL,
      roles: [
        StringConst.COMPANY_2_ROLE_1,
        StringConst.COMPANY_2_ROLE_2,
        StringConst.COMPANY_2_ROLE_3,
        StringConst.COMPANY_2_ROLE_4,
      ],
      location: StringConst.LOCATION_2,
      duration: StringConst.DURATION_2,
    ),
    ExperienceData(
      company: StringConst.COMPANY_1,
      position: StringConst.POSITION_1,
      companyUrl: StringConst.COMPANY_1_URL,
      roles: [
        StringConst.COMPANY_1_ROLE_1,
        StringConst.COMPANY_1_ROLE_2,
        StringConst.COMPANY_1_ROLE_3,
      ],
      location: StringConst.LOCATION_1,
      duration: StringConst.DURATION_1,
    ),
  ];
}
