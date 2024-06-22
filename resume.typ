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
    content: "1071797355@qq.com",
    link: "mailto:1071797355@qq.com"
  ),
  // (
  //   icon: faGithub,
  //   content: "github.com/Xiaole-An",
  //   link: "https://github.com/Xiaole-An",
  // ),
)

#h(2em)  // 手动顶行, 2em 代表两个字的宽度

]


== #faGraduationCap 教育背景

#sidebar(withLine: true, sideWidth: 5%)[
  硕士
  
  本科
][
  *东北大学* · 机械工程与自动化学院 · 机械工程专业（推荐免试）
  
  *东北大学* · 机械工程与自动化学院 · 机械工程专业
]

== #faCode 项目经历

#item(
  [ *基于多任务和高层特征的曝光轮廓不清叶片的边缘检测* ],
  [],
  date[ 2023 年 04 月 – 2024 年 06 月 ],
)


利用高层特征的显著性检测、边缘检测多任务学习方法实现叶片由于曝光轮廓被隐去的良好边缘预测

- 提取图像极高层信息作为图像中物体的轮廓表示并添加监督
- 使用相同的网络依次加权融合来自不同任务的不同层级的特征
- 根据数据集的正负样本量加权BCE损失，实现良好的背景负样本抑制效果

#item(


  [ *相似航空机加件细粒度分类  * —— 东北大学 / 沈阳飞机工业集团  2022JX04H012],


  [],

  date[ 2023 年 07 月 – 2024 年 05 月 ]
)


自主设计图像采集平台，使用双视角图像实现现有机加件100%分类正确率

- 设计相机支架、工件放置平台，对相机、镜头、光源进行选型
- 设计孪生网络，在分类头融合logit实现双视角输入的图像分类
- 改进CE损失，针对机加件极为相似的特点最大化输出向量的分布熵抑制高置信度的错误结果，提高分类准确率

== #faWrench 专业技能

// #sidebar(withLine: false, sideWidth: 12%)[
//   *操作系统*
  
//   *掌握*
  
//   *熟悉*

//   *了解*
// ][
//   #faLinux Linux, #h(0.5em) #faWindows Windows
  
//   React, JavaScript, Python
  
//   Vue, TypeScript, Node.js

//   Webpack, Java
// ]
熟悉Python编程语言，Pytorch深度学习框架，linux操作系统，了解git常见操作


熟悉常见的边缘检测传统算子和深度学习边缘检测算法，如Sobel, Canny, RCF, PidiNet等。熟悉深度学习基本理论及经典网络模型，如CNN，ResNet，RepVGG，VIT等



使用过C\#调用Mech-Eye Nano相机对海康Visionmaster软件进行二次开发

英语(CET-6)

== #faAward 获奖情况

#item(
  [ *一等学业奖学金* ],
  [],
  date[ 2022年 10 月，2023 年 10 月 ]
)

#award(
  [ *辽宁省人工智能大赛*],
  [二等奖],
  date[ 2023年6月 ]
)




== #faBuildingColumns 待发表论文
*Chenxi An*, Kechen Song, et al. A Novel Edge Detection Method of Blade with Multi-Supervision for Fore-Background Confusion Caused by Extreme Illumination.
(IEEE Sensors Journal 二审修回)

// #item(
//   [ *微软学生俱乐部技术部部长* ],

//   date[ 2021 年 09 月 – 2022 年 09 月 ]
// )