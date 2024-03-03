class FaqModal {
  FaqModal({required this.title, required this.description});

  final String title;
  final String description;
}

List<FaqModal> FAQs = [
  FaqModal(
      title: 'What is the purpose of the MRI Brain Tumor Classification App?',
      description:
          "The MRI Brain Tumor Classification App is designed to assist in the automated classification of brain tumors based on MRI scans. It utilizes machine learning models to classify images into 13 different classes, providing valuable insights for medical professionals in the diagnosis and treatment of brain tumors."),
  FaqModal(
      title: 'How does the app work?',
      description:
          "The app employs deep learning techniques to analyze MRI scans. Users can upload an MRI image through the app, and the machine learning model will process the image and provide a classification result indicating the type of tumor present."),
  FaqModal(
      title: 'What are the 13 different classes the app can classify?',
      description:
          "The app can classify brain tumors into 13 distinct categories, including but not limited to glioblastoma, meningioma, pituitary tumor, acoustic neuroma, and more. Each class represents a specific type of brain tumor."),
  FaqModal(
      title: 'How accurate is the classification?',
      description:
          "The accuracy of the classification depends on the quality of the input MRI scan and the performance of the underlying machine learning model. The model has been trained on a diverse dataset, but it's essential to note that the app is not a substitute for professional medical advice. Consultation with a healthcare professional is always recommended."),
  FaqModal(
      title: 'Is the app suitable for clinical diagnosis?',
      description:
          "While the app can aid in the preliminary assessment of brain tumors, it is not intended for clinical diagnosis. The results should be considered as supplementary information, and users are encouraged to consult with qualified healthcare professionals for accurate diagnosis and treatment."),
  FaqModal(
      title: 'How can I upload an MRI scan?',
      description:
          "To upload an MRI scan, navigate to the Scanner page, and look for the upload button or take photo option. Follow the on-screen instructions to select and upload the MRI image from your device's storage."),
  FaqModal(
      title: 'Is my data secure?',
      description:
          "The app prioritizes user privacy and data security. MRI scans are processed locally on the device, and no personal information is stored or transmitted to external servers. Ensure that you grant the necessary permissions for image access during app installation."),
  FaqModal(
      title: 'Can I trust the results provided by the app?',
      description:
          "While the app aims for high accuracy, it is crucial to interpret the results cautiously. The app should be used as a tool to raise awareness and prompt further discussion with healthcare professionals rather than as a definitive diagnostic tool."),
  FaqModal(
      title: 'How often are updates released?',
      description:
          "We strive to improve the app continuously. Updates, including model enhancements and bug fixes, will be released periodically. Ensure that you keep the app up to date to benefit from the latest improvements."),
  FaqModal(
      title: 'Where can I get support or report issues?',
      description:
          "For support or to report any issues, please contact any of the developer mentioned in about developer page. We value your feedback and are committed to addressing any concerns promptly."),
];
