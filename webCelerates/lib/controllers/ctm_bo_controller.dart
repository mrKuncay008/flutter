import 'package:celerates/models/bo_model.dart';
import 'package:get/get.dart';

class CtmBoController extends GetxController {
  RxString status = 'Recruitment'.obs;

  var recruiter =
      'The process of outsourcing that offers an organization outsources all or part of its recruitment functions and takes roles on responsibility for the entire recruitment process, from sourcing and screening candidates to onboarding new teams.\n\nWith this service, you will able to get cost savings experience, improved efficiency, way to have specialized recruiting expertise, and increased flexibility to adapt to business improvement.';
  var human =
      'The process of outsourcing that offers service to take over some or all of its HR functions, including recruitment, payroll activities, administration, the employee benefits system, and employee development to comply with proper regulations.\n\nWith this service, you will able to get cost savings experience, improved efficiency, way to have specialized recruiting expertise, and increased flexibility to adapt to business improvement.';
  var talent =
      'The process of outsourcing that offers talent development and training and is in charge of responsibility for designing assessments, learning management systems, curriculum development, and coaching to get preferable measurement.\n\nWith this service, you will able to get cost savings experience, improved efficiency, way to have specialized training expertise, and increased flexibility to adapt to business improvement.';
  var managed =
      'The process of outsourcing that offers support for IT infrastructure and applications, in a range of services to manage and maintain the IT environment, including providing IT support services.\n\nWith this service, you will able to reduce operational costs, improve efficiency, access specialized expertise, and the ability to scale IT operations.';
  final listTabRecruitment = [
    'Man Power Planning',
    'Interview',
    'Vacancies Advertising \nStrategy',
    'Negotiation',
    'Candidate Search',
    'Contract Signing',
    'Assessment of \nTechnical Skills',
    'Induction',
    'Psychological Test',
  ];

  final listTabHuman = [
    'Recruitment',
    'Onboarding',
    'Payroll Processing',
    'Tax Administration',
    'Benefits Management',
    'Training and Development',
    'Employee Regulations',
    'Employee Performance \nManagement',
  ];

  final listTabTalent = [
    'Assessment Design',
    'Program Design',
    'Learning Management \nSystem',
    'Curriculum Development',
    'Coaching & Mentoring',
    'Team Development',
    'Program Evaluation',
    'Grading System',
  ];

  final listTabManaged = [
    'Network Management',
    'Server Management',
    'Security Management',
    'Data Backup and Recovery',
    'End-user technical support',
    'Troubleshooting',
    'Ticket management',
  ];

  final listTabRecruitmentMob = [
    'Man Power Planning',
    'Interview',
    'Vacancies Advertising Strategy',
    'Negotiation',
    'Candidate Search',
    'Contract Signing',
    'Assessment of Technical Skills',
    'Induction',
    'Psychological Test',
  ];

  final listTabHumanMob = [
    'Recruitment',
    'Onboarding',
    'Payroll Processing',
    'Tax Administration',
    'Benefits Management',
    'Training and Development',
    'Employee Regulations',
    'Employee Performance Management',
  ];

  final listTabTalentMob = [
    'Assessment Design',
    'Program Design',
    'Learning Management System',
    'Curriculum Development',
    'Coaching & Mentoring',
    'Team Development',
    'Program Evaluation',
    'Grading System',
  ];

  final listTabManagedMob = [
    'Network Management',
    'Server Management',
    'Security Management',
    'Data Backup and Recovery',
    'End-user technical support',
    'Troubleshooting',
    'Ticket management',
  ];

  final listRecruitment = <BoModel>[
    BoModel(
        assets: 'assets/png/mvp_2/bpo/recruitment/_2112464307440.png',
        title: 'Requirement Gathering',
        last: false),
    BoModel(
        assets: 'assets/png/mvp_2/bpo/recruitment/Group (1).png',
        title: 'Sourcing Strategy Development',
        last: false),
    BoModel(
        assets: 'assets/png/mvp_2/bpo/recruitment/search.png',
        title: 'Candidate\nScreening',
        last: false),
    BoModel(
        assets: 'assets/png/mvp_2/bpo/recruitment/abilities.png',
        title: 'Assessment of Technical Skill & Psychology',
        last: true),
    // BoModel(
    //     assets: 'assets/png/mvp_2/bpo/recruitment/job-interview.png',
    //     title: 'Interview',
    //     last: false),
    // BoModel(
    //     assets: 'assets/png/mvp_2/bpo/recruitment/proposal.png',
    //     title: 'Offer Management',
    //     last: false),
    // BoModel(
    //     assets: 'assets/png/mvp_2/bpo/recruitment/agreement.png',
    //     title: 'Contract\nSigning',
    //     last: false),
    // BoModel(
    //     assets: 'assets/png/mvp_2/bpo/recruitment/handshake.png',
    //     title: 'Onboarding and Induction',
    //     last: true),
  ];

  final listCorporate = <BoModel>[
    BoModel(
        assets: 'assets/png/mvp_2/bpo/corporate/task.png',
        title: "Task  Analysis",
        last: false),
    BoModel(
        assets: 'assets/png/mvp_2/bpo/corporate/user_people.png',
        title: "Person Analysis",
        last: false),
    BoModel(
        assets: 'assets/png/mvp_2/bpo/corporate/analysis_organization.png',
        title: "Organizational Analysis",
        last: false),
  ];

  final listHR = <BoModel>[
    BoModel(
        assets: 'assets/png/mvp_2/bpo/hr/to-do-list 1.png',
        title: "Requirement",
        last: false),
    BoModel(
        assets: 'assets/png/mvp_2/bpo/hr/handshake.png',
        title: "Onboarding",
        last: false),
    BoModel(
        assets: 'assets/png/mvp_2/bpo/hr/salary 1.png',
        title: "Payroll\nProcessing",
        last: false),
    BoModel(
        assets: 'assets/png/mvp_2/bpo/hr/deadline 1.png',
        title: "Tax\nAdministration",
        last: false),
    BoModel(
        assets: 'assets/png/mvp_2/bpo/hr/increase 1.png',
        title: "Benefits\nManagement",
        last: false),
    // BoModel(assets: 'assets/png/mvp_2/bpo/hr/presentation 1.png', title: "Training and\nDevelopment", last: false),
    // BoModel(assets: 'assets/png/mvp_2/bpo/hr/ranking 1.png', title: "Employee Performance Management", last: true),
  ];

  final listHR2 = <BoModel>[
    BoModel(
        assets: 'assets/png/mvp_2/bpo/hr/presentation 1.png',
        title: "Training and\nDevelopment",
        last: false),
    BoModel(
        assets: 'assets/png/mvp_2/bpo/hr/ranking 1.png',
        title: "Employee Performance Management",
        last: true),
  ];

  final listManaged = <BoModel>[
    BoModel(
        assets: "assets/png/mvp_2/bpo/help/team 1.png",
        title: "Network Management",
        last: false),
    BoModel(
        assets: "assets/png/mvp_2/bpo/help/Group.png",
        title: "Server\nManagement",
        last: false),
    BoModel(
        assets: "assets/png/mvp_2/bpo/help/sync 1.png",
        title: "Data Backup and\nRecovery",
        last: false),
    BoModel(
        assets: "assets/png/mvp_2/bpo/help/Icons.png",
        title: "Troubleshooting",
        last: false),
    BoModel(
        assets: "assets/png/mvp_2/bpo/help/ticket 1.png",
        title: "Ticket\nManagement",
        last: true),
  ];
}
