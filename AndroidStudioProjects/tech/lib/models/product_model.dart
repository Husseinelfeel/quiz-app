 class Product {
  final int id, price;
  final String title, subTitle, description, image;

  Product(
      {required this.id,
        required this.price,
        required this.title,
        required this.subTitle,
        required this.description,
        required this.image});
}




// list of products
 List<Product> products = [
  Product(
      id: 1,
      price: 59,
      title: "سماعات لاسلكية",
      subTitle: "جودة صوت عالية",
      image: "images/airpod.png",
      description:
      "سماعات آيربودز خفيفة الوزن وتوفر تصميماً محدداً يجلسون في الزاوية المثالية فقط لضمان الراحة وتوجيه الصوت إلى أذنك. "),
  Product(
      id: 2,
      price: 1099,
      title: "جهاز موبايل",
      subTitle: "وأصبح للموبايل قوة",
      image: "images/mobile.png",
      description:
      "يتميز هاتف الموبايل هذا بطبقة خارجية مقاومة لآثار بصمات الأصابع للحفاظ على المظهر الجمالي وهو مزود بزر للقطة فلاش"),
  Product(
    id: 3,
    price: 39,
    title: "نظارات ثلاثية الأبعاد",
    subTitle: "لنقلك للعالم الافتراضي",
    image: "images/class.png",
    description:
    "مصمَّمة لتكبير الصور الموجودة على هاتفك المحمول وتوفير تجربة ثلاثية الأبعاد رائعة",
  ),
  Product(
    id: 4,
    price: 56,
    title: "سماعات",
    subTitle: "لساعات استماع طويلة",
    image: "images/headset.png",
    description:
    " مصممة لتمنحك مقاساً مثالياً بإطار محيط بالرأس محبوك من القماش الشبكي وواقيات أذن مصنوعة من إسفنج ميموري فوم مصممة لتمنحك أفضل أداء صوتي",
  ),
  Product(
    id: 5,
    price: 68,
    title: "مسجل صوت",
    subTitle: "سجل اللحظات المهمة حولك",
    image: "images/speaker.png",
    description: "يعمل بشكلٍ متواصل لأكثر من 3 ساعات بمستوى صوت وسط"
        "    أزرار بحجم كبير لسهولة التشغيل وإمكانية الاستخدام لجميع الأعمار",
  ),
  Product(
      id: 6,
      price: 39,
      title: "كاميرات كمبيوتر",
      subTitle: "بجودة ودقة صورة عالية",
      image: "images/camera.png",
      description:
      "كاميرا الويب لوجيتيك C920S برو بدقة كاملة الوضوح مثالية للاستخدام مع معظم تطبيقات البث أو الرسائل الفورية مثل سكايب جوجل"),
  Product(
    id: 7,
    price: 68,
    title: "مسجل صوت",
    subTitle: "سجل اللحظات المهمة حولك",
    image: "images/speaker.png",
    description: "يعمل بشكلٍ متواصل لأكثر من 3 ساعات بمستوى صوت وسط"
        "أزرار بحجم كبير لسهولة التشغيل وإمكانية الاستخدام لجميع الأعمار",
  ),
];
