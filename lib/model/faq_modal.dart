class faqModal {
  faqModal({required this.title, required this.description});

  final String title;
  final String description;
}

List<faqModal> FAQs = [
  faqModal(
    title: 'How accurate is this app in general?',
    description:
        "Generally, the results of this app are quite accurate and at least comparable to the current state of the art. However, this app is still giving predictions only and those won't be right all the time. \n"
        "Training Loss: 0.0378 \nTraining Accuracy: 97.66% \nValidation Loss: 0.8339 \nValidation Accuracy: 87.89%",
  )
];
