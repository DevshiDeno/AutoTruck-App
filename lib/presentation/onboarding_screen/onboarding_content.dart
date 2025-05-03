import 'package:truck_booking/core/app_export.dart';

class OnboardingContents {
  final String title;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.desc,
  });

  static List<OnboardingContents> contents = [
    OnboardingContents(
      title: "DIRECT ACCESS.\n Streamlined process",
      desc:
          "At AutoTruck Africa, we offer a unique service that gives you direct access to drivers and their trucks. Our platform allows you to search for trucks based on tonnage, type, or location. Once you find a truck that meets your needs, you can contact the driver directly through the contact details provided.",
    ),
    OnboardingContents(
      title: "Broad Network Access",
      desc:
          "At AutoTruck Africa, we pride ourselves on our extensive network that spans across Kenya and throughout Africa. Our platform connects cargo owners with a diverse array of truck owners, ensuring reliable and efficient transportation solutions tailored to your specific needs.",
    ),
    OnboardingContents(
      title: "Cargo Transportation",
      desc:
          "We offer comprehensive cargo transport services across Africa, accommodating all truck sizes to ensure we meet any shipping needs. Whether you need to move goods locally or across borders, our fleet is ready to deliver your cargo safely and efficiently.",
    ),
    OnboardingContents(
        title: "Friendly Staff",
        desc:
            "At AutoTruck Africa, we pride ourselves on delivering a friendly and approachable service to all our users. From the moment you post a job to the successful delivery of your cargo, our dedicated team is here to assist you every step of the way. We believe in fostering strong relationships built on trust and communication, ensuring that your experience with us is as smooth and pleasant as possible.")
  ];
}
