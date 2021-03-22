class Course {
  final int id;
  final String status;
  final String level;
  final String language;
  double numberOfHours;
  int numberOfEnrolledStudents;
  Category category;
  String description;
  List<String> objectives;
  List<String> requirements;
  List<String> include;
  String nameAr;
  String nameEn;
  String photo;
  Teacher teacher;
  int price;
  int rating;
  bool hasOfferNow;
  String discountStartedAt;
  String discountFinishedAt;
  bool visibility;
  int passingPercentage;
  String createdAt;
  String updatedAt;

  Course(
      {this.id,
      this.status,
      this.level,
      this.language,
      this.numberOfHours,
      this.numberOfEnrolledStudents,
      this.category,
      this.description,
      this.objectives,
      this.requirements,
      this.include,
      this.nameAr,
      this.nameEn,
      this.photo,
      this.teacher,
      this.price,
      this.rating,
      this.hasOfferNow,
      this.discountStartedAt,
      this.discountFinishedAt,
      this.visibility,
      this.passingPercentage,
      this.createdAt,
      this.updatedAt});
}