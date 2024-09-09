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
  photograph: "images/acx.jpg",
  photographWidth: 6.42em,
  gutterWidth: 10em,
)[
#figure(
  // placement: auto,
  image("images/top_half_eng.png", width: 40%),

)

= 安尘汐
*联系电话*：13002460562 *邮箱*：anxl000517@163.com *出生年月*：2000.05 

*政治面貌*：共青团员  *籍贯*：辽宁

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
  [ *基于多任务和高层特征的曝光轮廓不清叶片的边缘检测* (课题项目，独立完成)],
  [],
  date[ 2023 年 04 月 – 2024 年 06 月 ],
)

- *项目背景:* 强光导致图像的采集效果变差，引起了叶片图像边缘的模糊，影响了对叶片的基于视觉的检测/测量效果。
- *个人工作:* 为了解决边缘模糊问题，*1.)* 提取图像极高层信息作为图像中物体的轮廓表示并添加监督；*2.)* 强制模型进行参数共享，限制模型大小来增强多任务学习效果；*3.)* 根据叶片数据集的正负样本量和自然场景边缘数据集的正负样本量加权BCE损失，实现良好的背景负样本抑制效果。

- *项目结果:* 提出了BedNet-IR网络，利用高层特征和显著性检测、边缘检测多任务学习方法实现叶片由于曝光轮廓被隐去的良好边缘预测，ODS-F和OIS-F在极端光照叶片数据集上分别达到0.815和0.926；同时泛化性能良好。

#xiangmu_item(


  [ *相似航空机加件细粒度分类  *  (项目负责人)],


  [东北大学 / 沈阳飞机工业集团],

  date[ 2023 年 07 月 – 2024 年 05 月 ]
)
- *项目背景:* 本项目是和沈飞的合作项目，目的是自动识别战斗机上的74种相似工件，缩短生产流程，提高生产稳定性。
- *个人工作:* #sym.circle.filled *硬件设计*: 根据工件尺寸对相机，镜头进行选型，设计图像采集平台并加工、安装。#sym.circle.filled *算法设计*: 设计基于ViT的双输入孪生网络，接收机加件的双视角视图。*1.)* 提出Token Selected Self-Attention，选择与图像更相关的tokens互相做自注意力计算，并只更新这些tokens的值；*2.)* 使用选择分数对各tokens进行加权求和，使用MLP分类；*3.)* 针对机加件极为相似的特点，惩罚过于自信的输出概率分布，将输出概率分布的负熵添加到损失中。
- *项目结果:* 最终实现极相似机加件99.8%(无限位，视角偏差±10°)，100%(有限位)的分类准确率，为企业撰写总结报告和说明书。
== 实习经历
#shixi_item(
  [ *沈阳新松机器人自动化股份有限公司*  ],

  [算法实习生],

  date[ 2024 年 07 月 – 至今 ]
)
- *负责项目: *基于accelerated features (CVPR24)的兴趣点检测和匹配，用于实时SLAM系统。
- *个人工作: *为了适应企业AGV的室内工作场景，*1.) *改进accelerated features网络的关键点检测头和描述子生成并进行微调，丰富特征点的描述；*2.) *使用MegaDepth和扭曲的COCO-20k数据集进行预训练，调整COCO-20k的扭曲方式进行模型微调，把模型应用场景向室内转移。

- *项目结果: *将室内场景匹配的旋转鲁棒性从原方法45°提高到现在的150°，并保持检测和匹配的实时性，在$720#sym.times 1280$分辨率的图像上推理速度达到200 frames/min，并且能够实时处理快速移动的分辨率为$240#sym.times 240$的图像。

==  专业技能
- 熟悉Python编程语言，Pytorch深度学习框架，linux操作系统，了解git常见操作。熟练使用Solidworks，AutoCad等三维、二维建模软件。


- 熟悉常见的边缘检测传统算子和深度学习边缘检测算法，如Sobel, Canny, RCF, PidiNet等；了解常见的特征点提取与匹配方法，如xfeature, Loftr, LightGlue等；熟悉深度学习基本理论及经典网络模型，如ResNet，RepVGG，ViT等。


== 获奖情况
- 一等学业奖学金两次；二等学业奖学金一次，三等学业奖学金两次(本科期间)，神州高铁命名奖学金三次(硕士期间)；
- 辽宁省人工智能大赛三等奖；互联网+大学生创新创业大赛辽宁省三等奖；挑战杯大学生创业计划竞赛辽宁省二等奖。
- 大学生创新创业大赛省级良好(新型扭转-弯曲软体机器人的研制)，发表一篇会议论文；
== 发表论文
A Novel Edge Detection Method of Blade with Multi-Supervision for Fore-Background Confusion Caused by Extreme Illumination.
(IEEE Sensors Journal Q1， *第一作者*)


== 自我评价
本人品行端正、乐于助人；坚持运动，个性积极乐观；具有强烈进取心、责任心，具有较好沟通与合作能力。


