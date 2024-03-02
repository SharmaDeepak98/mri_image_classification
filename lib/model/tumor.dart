class Tumor {
  String tumorName;
  String tumorDes;
  String imageUrl;

  Tumor({
    required this.tumorName,
    required this.tumorDes,
    required this.imageUrl,
  });
}

List<Tumor> tumors = [
  Tumor(
      tumorName: 'Neurocytoma',
      tumorDes:
          'Neurocytoma is a type of brain tumor that typically arises from cells called oligodendrocytes \or neurons, which are part of the central nervous system.\n 1) Origin- Neurocytomas usually develop within the ventricular system of the brain, particularly in the lateral ventricles. However, they can also occur in other regions of the brain, such as the cerebral cortex or cerebellum.\n 2) Symptoms- The symptoms of neurocytomas can vary depending on their size and location within the brain. Common symptoms may include headaches, seizures, changes in vision or hearing, nausea, vomiting, and neurological deficits such as weakness or numbness in the limbs.\n 3)Diagnosis: Diagnosis of neurocytoma typically involves a combination of imaging studies such as MRI (Magnetic Resonance Imaging) or CT (Computed Tomography) scans, which can help identify the location, size, and characteristics of the tumor. A biopsy may also be performed to confirm the diagnosis by examining the tumor cells under a microscope.\n 4)Treatment: The treatment approach for neurocytoma depends on various factors including the tumor size, location, grade, and the patient\'s overall health. Treatment options may include surgical resection to remove the tumor, radiation therapy, chemotherapy, or a combination of these therapies. In some cases, particularly for small, asymptomatic tumors, close monitoring without immediate treatment may be recommended.',
      imageUrl: 'assets/images/Neurocytoma.jpg'),
  Tumor(
      tumorName: 'Tuberculoma',
      tumorDes:
          'Tuberculoma is a type of brain tumor caused by tuberculosis (TB) infection. Unlike other brain tumors that arise from abnormal growth of cells within the brain, tuberculomas result from the body\'s immune response to TB bacteria.\n1)Cause: Tuberculomas develop when Mycobacterium tuberculosis, the bacteria that cause tuberculosis, infect the brain. The immune system reacts to the presence of the bacteria by forming granulomas, which are small, organized collections of immune cells. These granulomas can form in various organs, including the brain, and are called tuberculomas when they occur in the brain.\n 2)Symptoms: The symptoms of tuberculoma can vary depending on the size, location, and number of lesions in the brain. Common symptoms may include headache, seizures, focal neurological deficits such as weakness or numbness, altered mental status, and signs of increased intracranial pressure such as nausea, vomiting, and papilledema (swelling of the optic disc).\n 3)Diagnosis: Diagnosis of tuberculoma typically involves a combination of medical history, clinical evaluation, imaging studies such as MRI (Magnetic Resonance Imaging) or CT (Computed Tomography) scans of the brain, and sometimes laboratory tests such as cerebrospinal fluid analysis or TB skin tests. Imaging studies can help identify characteristic features of tuberculomas, such as multiple ring-enhancing lesions with surrounding edema.\n 4)Treatment: Treatment of tuberculoma involves a combination of anti-tuberculosis medications (such as isoniazid, rifampin, pyrazinamide, and ethambutol) to eliminate the TB bacteria and reduce inflammation in the brain. In some cases, surgical intervention may be necessary to drain abscesses or remove large lesions causing mass effect. Corticosteroids may also be prescribed to reduce inflammation and swelling in the brain.',
      imageUrl: 'assets/images/Tuberculoma.png'),
  Tumor(
      tumorName: 'Schwannoma',
      tumorDes: 'Schwannomas, also known as neurilemmomas, are benign tumors that arise from Schwann cells, which are the cells that produce the myelin sheath covering peripheral nerves. While they most commonly occur in the head and neck region, including the vestibular nerve (acoustic neuroma), schwannomas can also develop in the brain, particularly along cranial nerves.\n 1)Origin: Schwannomas originate from Schwann cells, which are responsible for the myelination (insulation) of peripheral nerves. \n 2)Symptoms: The symptoms of brain schwannomas depend on their location and size. Common symptoms may include hearing loss, tinnitus (ringing in the ears), vertigo, balance problems, facial numbness or weakness, headaches, visual disturbances, difficulty swallowing, and changes in speech. The symptoms may be gradual and progressive as the tumor grows and compresses surrounding structures.\n 3)Diagnosis: Diagnosis of brain schwannoma typically involves a combination of medical history, neurological examination, and imaging studies such as MRI (Magnetic Resonance Imaging) or CT (Computed Tomography) scans. These imaging techniques can help visualize the tumor, its location, size, and relationship to adjacent structures. \n 4)Treatment: Treatment options for brain schwannomas depend on factors such as tumor size, location, symptoms, and the patient\'s overall health. Small, asymptomatic tumors may be monitored closely with periodic imaging to track any changes in size or symptoms',
      imageUrl: 'assets/images/Schwannoma.jpg'),
  Tumor(
      tumorName: 'Meningioma',
      tumorDes:
          '-Meningioma is the most common type of primary brain tumor, accounting for approximately 30 percent of all brain tumors',
      imageUrl: 'assets/images/Meningioma.jpg'),
  Tumor(
      tumorName: 'Oligodendroglioma',
      tumorDes:
          '-Oligodendroglioma is a growth of cells that starts in the brain.These cells make a substance that protects nerve cells and helps with the flow of electrical signals in the brain and spinal cord',
      imageUrl: 'assets/images/Oligodendroglioma.jpg'),
  Tumor(
      tumorName: 'Meduloblastoma',
      tumorDes:
          '-Medulloblastoma is a primary central nervous system (CNS) tumor. This means it begins in the brain or spinal cord',
      imageUrl: 'assets/images/Meduloblastoma.jpg'),
  Tumor(
      tumorName: 'Granuloma',
      tumorDes:
          '-A granuloma is a tiny cluster of white blood cells and other tissue. It can appear in your lungs, skin or other parts of your body',
      imageUrl: 'assets/images/Granuloma.jfif'),
  Tumor(
      tumorName: 'Glioblastoma',
      tumorDes:
          '-Glioblastoma is the most common primary brain cancer, or cancer that starts in the brain, with around 12,000 cases diagnosed in the United States each year',
      imageUrl: 'assets/images/Glioblastoma.jpg'),
  Tumor(
      tumorName: 'Germinoma',
      tumorDes:
          '-Germinomas are rare tumors that primarily occur in children and adolescents. These tumors arise from germ cells, which normally become eggs or sperm after migrating to the ovaries or testes during fetal development',
      imageUrl: 'assets/images/Germinoma.jpg'),
  Tumor(
      tumorName: 'Carcinoma',
      tumorDes:
          '-Specifically, a carcinoma is a cancer that begins in a tissue that lines the inner or outer surfaces of the body, and that arises from cells originating in the endodermal, mesodermal or ectodermal germ layer during embryogenesis. Carcinoma',
      imageUrl: 'assets/images/Carcinoma.jpg'),
  Tumor(
      tumorName: 'Astrocitoma',
      tumorDes:
          '
          ',
      imageUrl: 'assets/images/Astrocitoma.jfif'),
];
