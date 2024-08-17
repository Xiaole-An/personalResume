#import "template.typ": *

// 设置图标, 来源: https://fontawesome.com/icons/
// 如果要修改图标颜色, 请手动修改 svg 文件中的 fill="rgb(38, 38, 125)" 属性
#let faAward = icon("icons/fa-award.svg")
#let faBuildingColumns = icon("icons/fa-building-columns.svg")
#let faCode = icon("icons/fa-code.svg")
#let faEnvelope = icon("icons/fa-envelope.svg")
#let faGithub = icon("icons/fa-github.svg")
#let faGraduationCap = icon("icons/fa-graduation-cap.svg")
#let faLinux = icon("icons/fa-linux.svg")
#let faPhone = icon("icons/fa-phone.svg")
#let faWindows = icon("icons/fa-windows.svg")
#let faWrench = icon("icons/fa-wrench.svg")

// 主题颜色
#let themeColor = rgb("#080a23")

// 设置简历选项与头部
#show: resume.with(
  // 字体基准大小
  size: 10pt,
  // 标题颜色
  themeColor: themeColor,
  // 控制纸张的边距
  top: 1.5cm,
  bottom: 2cm,
  left: 2cm,
  right: 2cm,
  // 如果不需要头像，则将下面的参数注释或删除
  photograph: "images/photo.png",
  photographWidth: 6.42em,
  gutterWidth: 3em,
)[
#figure(
  // placement: auto,
  image("images/top_half_eng.png", width: 40%),

)

= 安尘汐

#info(
  color: themeColor,
  (
    // 其实 icon 也可以直接填字符串, 如 "fa-phone.svg" 
    icon: faPhone,
    content: "(+86) 130-0246-0562"
  ),
  (
    icon: faBuildingColumns,
    content: "东北大学",
  ),
  (
    icon: faGraduationCap,
    content: "机械工程",
  ),
  (
    icon: faEnvelope,
    content: "anxl000517@163.com",
    link: "mailto:anxl000517@163.com"
  ),
  (
    content: "出生年月：2000.05",
  ), 
  (
    content: "政治面貌：共青团员",
  ), 
  (
    content:"英语水平：CET-6"
  ),
  (
    content:"现住址：辽宁沈阳"
  ),
  // (
  //   icon: faGithub,
  //   content: "github.com/Xiaole-An",
  //   link: "https://github.com/Xiaole-An",
  // ),
)

#h(2em)  // 手动顶行, 2em 代表两个字的宽度

]


==  教育背景

#sidebar(withLine: true, sideWidth: 5%)[
  硕士

  本科
][
  *东北大学* · 机械工程与自动化学院 · 机械工程专业（推荐免试）机器视觉与机器人实验室 （前15%）


  
  *东北大学* · 机械工程与自动化学院 · 机械工程专业（前20%） 
  
]

==  项目经历

#item(
  [ *基于多任务和高层特征的曝光轮廓不清叶片的边缘检测* ],
  [],
  date[ 2023 年 04 月 – 2024 年 06 月 ],
)

- *项目内容:* 为了解决强光导致的边缘模糊，本项目提取图像极高层信息作为图像中物体的轮廓表示并添加监督，使用相同的网络依次加权融合来自不同任务的不同层级的特征，根据叶片数据集的正负样本量和自然场景边缘数据集的正负样本量加权BCE损失，实现良好的背景负样本抑制效果。

- *项目结果:* 提出了BedNet-IR网络，利用高层特征和显著性检测、边缘检测多任务学习方法实现叶片由于曝光轮廓被隐去的良好边缘预测，同时也展示出了较好的泛化性能。

#xiangmu_item(


  [ *相似航空机加件细粒度分类  *    ],


  [东北大学 / 沈阳飞机工业集团],

  date[ 2023 年 07 月 – 2024 年 05 月 ]
)

- *项目内容:* 设计相机支架、工装，对相机、镜头、光源进行选型，完成图像采集平台的硬件设计与平台搭建，使用C\#调用Mech-Eye Nano相机实现机加件的二维+三维信息采集并利用C\#对海康威视Visionmaster软件进行二次开发，设计二维+三维分类算法。
- *项目结果:* 独立完成课题组与企业的合作项目，自主设计图像采集平台，使用双视角图像输入实现现有机加件100%分类正确率，与企业项目负责人沟通，及时跟进项目需求，汇报项目进展
- *课题内容:*设计孪生网络，在分类头融合logit实现双视角输入的图像分类，改进CE损失，针对机加件极为相似的特点最大化输出向量的分布熵抑制高置信度的错误结果，提高分类准确率。
== 实习经历
#shixi_item(
  [ *沈阳新松机器人自动化股份有限公司*  ],

  [算法实习生],

  date[ 2024 年 07 月 – 至今 ]
)
- *工作内容:*负责特征点提取和匹配算法的训练和改进、调优工作。构建单应性矩阵对图像进行投射投影变换实现数据增强，将匹配鲁棒性从45°提高到60°。
==  专业技能
熟悉Python编程语言，Pytorch深度学习框架，linux操作系统，了解git常见操作


熟悉常见的边缘检测传统算子和深度学习边缘检测算法，如Sobel, Canny, RCF, PidiNet等。

熟悉深度学习基本理论及经典网络模型，如CNN，ResNet，RepVGG，ViT等。


== 获奖情况
一等学业奖学金两次(硕士期间)；二等学业奖学金一次，三等学业奖学金两次(本科期间)；辽宁省人工智能大赛三等奖；互联网+大学生创新创业大赛辽宁省三等奖；挑战杯大学生创业计划竞赛辽宁省二等奖

== 发表论文
*Chenxi An*, Kechen Song, et al. A Novel Edge Detection Method of Blade with Multi-Supervision for Fore-Background Confusion Caused by Extreme Illumination.
(IEEE Sensors Journal Q1)


== 自我评价
本人品行端正、乐于助人；坚持运动，个性积极乐观；具有强烈进取心、责任心，具有较好沟通与合作能力。


