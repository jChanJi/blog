-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.11-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'吉春','123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `b_intro` varchar(400) NOT NULL,
  `title` varchar(45) NOT NULL,
  `content` text NOT NULL,
  `time` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'虽然好几个月没更新博客了，但是老罗一直有在准备可以分享的东西的。除了早前在微博分享Android4.2相关技术之外，这次还特意准备了13个PPT，总结之前所研究过的东西。内容从Android组件设计思想，到Android源码开发和调试环境搭建，再到Android专用驱动和应用程序架构等。可以作为《老罗的Android之旅》博客和《Android系统源代码情景分析》一书的导读，希望对大家有帮助。...','《老罗的Android之旅》导读PPT','  经过两年的时间，终于完成对Android系统的研究了。Android是一个博大精深的系统，老罗不敢说自己精通了（事实上最讨厌的就是说自己精通神马神马的了，或者说企业说要招聘精通神马神马的人才），但是至少可以说打通了整个Android系统，从最上面的应用层，一直到最下面的Linux内核，炼就的是一种内功修养。这篇文章和大家一起分享这两年研究Android系统的历程，以此感谢大家一直以来的支持和鼓励。\n\n        以下是本文的提纲：\n        1. 理念\n\n        2. 里程碑\n\n        3. 看过的书\n\n        4. 研究过的内容\n\n        5. 将来要做的事情\n\n        它们涵盖了老罗这两年一直想要和大家分享的内容。好了，不说废话了，直入主题。\n\n        一. 理念\n\n        这里说的理念是说应该带什么样的心态去研究一个系统。古人说书中自的颜如玉，书中自有黄金屋，我想说代码里也有颜如玉和黄金屋，所以老罗希望大家都能“Read The Fucking Source Code”。再者，对于优秀的开源项目来说，不去读一下它的源代码，简直就是暴殄天物啊。那么，读代码有什么好处呢？太多了，除了可以学到别人的优秀代码、架构之外，最重要的是，我们能从中找到答案，从而可以解决自己项目上的燃眉之急。\n\n        我们在项目中碰到问题的时候，通常第一反应都是到网上去搜索答案。但是有时候有些问题，网络并不能给出满意的答案。这时候就千万不要忘了你所拥有的一个大招——从代码中找答案！当然，从代码中找答案说起来是轻松，但是等到直正去找时，可能就会发现云里雾里，根本不知道那些代码在说什么东东，甚至连自己想要看的源代码文件都不知道在哪里。这就要求平时就要养成读代码的习惯，不要临时抱佛脚。有时候临时抱佛脚是能解决问题，但是千万不能抱着这种侥幸心里，掌握一门技术还是需要踏踏实实地一步一步走。\n\n        胡克其实在牛顿之前，就发现了万有引力定律，并且推导出了正确的公式。但由于数学不好，他只能勉强解释行星绕日的圆周运动，而没有认识到支配天体运行的力量是“万有”的。后来数学狂人牛顿用微积分圆满地解决了胡克的问题，并且把他提出的力学三条基本定律推广到了星系空间，改变了自从亚里士多德以来公认的天地不一的旧观点，被科学界奉为伟大的发现。胡克大怒，指责牛顿剽窃了他的成果。牛顿尖酸刻薄的回敬：是啊，我他妈还真是站在巨人的肩膀上呢！\n\n        我们有理由相信像牛顿、乔布斯之类的狂人，不用站在巨人的肩膀上也能取得瞩目的成就。但是，我们不是牛顿，也不是乔布斯，所以在看代码之前，还是找一些前人总结的资料来看看吧。拿Android系统来说，你在至少得懂点Linux内核基础吧！所以在看Android源代码之前，先找些Linux内核的经典书籍来看看吧，骚年！后面老罗会推荐一些书籍给大家。\n\n        另外，我们知道，现在的互联网产品，讲究的是快速迭代。Android系统自第一个版本发布以来，到现在已经经历了很多版本呢？那么我们应该如何去选择版本来阅读呢？一般来说，就是选择最新的版本来阅读了。不过随着又有新版本的源代码的发布，我们所看的源代码就会变成旧版本。这时候心里就会比较纠结：是应该继续看旧的代码，还是去追新版本的代码呢？就当是看连续剧，一下子跳到前面去，可能就不知道讲什么了。其实版本就算更新得再快，基础的东西也是不会轻易变化的。我们看代码时，要抱着的一个目的就是弄懂它的骨架和脉络。毕竟对于一个系统来说，它是有很多细节的，我们无法在短时间把它们都完全吃透。但是主要我们掌握了它的骨架和脉络，以后无论是要了解它的什么细节，都可以很轻轻地找到相关的源文件，并且可以很容易进入主题。','2016-3-4'),(8,'本文作者曾经多次预测了技术发展的趋势，最近的一次预测是“2011年软件发展的趋势与预测”。10项预言中，准确地命中了6项，比如JavaScript VM、NoSQL、大数据分析、私有云、Scala语言等等。今年，他对深度学习的发展趋势做了一个预测，主要是研究领域的趋势预测，而不是工业界的应用。','硬件将加速倍增摩尔定律','\r\n硬件将加速倍增摩尔定律\r\n作者根据其观察到Nvidia和Intel的发展动态，认为这是显而易见的趋势。由于Nvidia具有完整的深度学习生态系统，它们在整个2017年都将主导占据主导地位。在另一个深度学习生态系统成熟之前，没有人会抛弃Nvidia而追求其它的平台。Intel的Xeon Phi方案中途夭折，预计要到2017年年中才能在性能上追赶上Nvidia，那时基于Nervana的芯片才推向市场。Intel的FPGA方案可能因为成本原因而被云提供商所采纳。降低功耗是头等大事。预计到2017年年中，Intel的Nervana芯片每秒可完成30万亿次浮点运算。作者个人猜测，Nvidia目前已经能够实现每秒20万亿次浮点运算，他打赌Intel在2018年之前不会有太多动作。Intel手中的唯一可能的一张王牌是3D XPoint技术。这将有助于提高整个硬件堆栈，但不一定是提升核心能力。\r\n\r\n卷积神经网络（CNN）将会统治而RNNs和LSTM将被淘汰\r\n作者认为CNN模型将成为深度学习系统的主流模型。RNN和LSTM模型及其递归设置和嵌套的记忆节点将越来越少地使用，因为它们无法与CNN所抗衡。就如同GOTO在代码中消失一样，作者希望RNN和LSTM模型也被淘汰。\r\n\r\n简单的调参工作将被元学习取代\r\n当作者刚开始接触深度学习时，他认为优化算法，特别是二阶的算法能够有巨大的提升。如今，已经有替我们优化模型的深度学习模型了。我们不在需要费尽心思改进SGD算法了，作者认为重要的一个原因是元学习（meta-learning）能够根据领域自适应地优化学习过程。\r\n\r\n可微分记忆网络将更常见\r\n记忆模块将从核心节点中抽取出来，只是作为计算机制的一个独立组件，作者觉得这是一个很自然的结果或者说架构。他认为LSTM的遗忘门、输入门和输出门没有必要，它们可以被辅助的可微分记忆模块所取代。这呼应了作者对CNN模型的预测。\r\n\r\n强化学习只会变得更具创造性\r\n对于现实的观察永远是不完美的。我们身边存在着大量SGD无法解决的问题。因此，任何实践性的深度学习系统都必须包含某些形式的强化学习。除此之外，强化学习将会出现在各种深度学习的训练过程中。作者认为强化学习极大地促进了元学习。\r\n\r\n对抗与合作学习将成为王牌\r\n在过去，我们的深度学习系统都只有单一的目标函数。今后，作者希望看到两个或两个以上的网络合作或竞争来实现一个最佳的解决方案。参见“博弈论揭示了深度学习的未来”。\r\n\r\n转移学习引领产业化\r\nAndrew Ng认为这非常重要，作者也表示赞同！\r\n\r\n更多的应用程序将使用深度学习组件\r\n在2016年，我们已经看到深度学习在更大的搜索算法中用作一个功能评价组件。alphago采用深层学习来评估策略。谷歌的Gmail自动回复系统将深度学习与集束搜索(beam search)结合。作者希望看到更多的这类混合算法，而不是新的end-to-end的被训练的DL系统。\r\n\r\n更多的采用设计模式\r\n深度学习只是众多需要抽象结构的复杂领域之一。尽管它用到了很多高深的数学知识，仍有很多未经证明和模糊的概念可以借鉴在其它复杂领域已被证明是有效的方法，比如在软件开发领域有效。作者认为人们最终会从深度学习与模式设计中得到启发。\r\n\r\n工程将超过理论\r\n作者认为研究人员的背景和他们所使用的数学工具会给他们的研究方法带来偏见。深度学习系统和无监督学习系统等等这些新的东西可能我们从来没有遇到过。因此，他觉得没有证据表明我们的传统分析工具将对解开深度学习的谜团提供任何帮助。几十年来，物理学中大量的动态系统一直困扰着作者，他将此类比于深度学习系统。\r\n\r\n然而，尽管我们缺乏了解其本质，但是将不会阻止工程上的应用。作者觉得深度学习几乎就像是生物技术或基因工程。我们已经创建了模拟学习机，我们不知道他们是如何工作的，但是这并没有阻止任何人进行创新。','2016-12-12');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-12 17:19:37
