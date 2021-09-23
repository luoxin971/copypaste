/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : copypaste

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 22/09/2021 21:03:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
create database 'copypaste';
use 'copypaste';

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ip` int UNSIGNED NULL DEFAULT NULL,
  `browser` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_delete` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES (1, 'test a text', 3232235850, 'abc', '2021-09-21 21:38:18', '2021-09-21 21:38:18', 0);
INSERT INTO `content` VALUES (2, 'test second text', 3232235990, 'safari', '2021-09-21 21:48:24', '2021-09-21 21:48:24', 0);
INSERT INTO `content` VALUES (3, 'ttttttttt', 3232235850, 'chrome xxx', '2021-09-21 22:05:23', '2021-09-21 22:05:23', 0);
INSERT INTO `content` VALUES (4, '<p>圣诞节落空发送大量789</p>', NULL, NULL, '2021-09-21 22:22:01', '2021-09-21 22:22:01', 0);
INSERT INTO `content` VALUES (5, '<p>圣诞节</p><p>今天是基于记号</p>', 3232235850, 'Chrome 9 93.0.4577.82', '2021-09-21 22:27:52', '2021-09-21 22:27:52', 0);
INSERT INTO `content` VALUES (6, '<p>按半年的时间法律框架</p><p>就是砥砺奋进</p>', 3232235850, 'Chrome 9 93.0.4577.82', '2021-09-21 22:29:24', '2021-09-21 22:29:24', 0);
INSERT INTO `content` VALUES (7, '<p>特天天尽量克服<b>就打算离开房间</b></p>', 3232235850, 'Chrome 9 93.0.4577.82', '2021-09-21 22:33:06', '2021-09-21 22:33:06', 0);
INSERT INTO `content` VALUES (8, '<article><h1>入门和安装</h1><p><a href=\"https://hutool.cn/\"><img src=\"https://static.sitestack.cn/projects/hutool/f9a099b6d2d9a25dd0e94ae39fb2c9ee.jpeg\" alt=\"入门和安装 - 图1\"/></a></p><p><strong>A set of tools that keep Java sweet.</strong></p><p><a href=\"https://search.maven.org/search?q=g:%22cn.hutool%22%20AND%20a:%22hutool-all%22\"><img src=\"https://static.sitestack.cn/projects/hutool/060987abe551a86dff357a9dd43b6816.svg\" alt=\"入门和安装 - 图2\"/></a><a href=\"https://www.apache.org/licenses/LICENSE-2.0.html\"><img src=\"https://static.sitestack.cn/projects/hutool/85aa85fa4764f996f093c003b02f3c10.svg\" alt=\"入门和安装 - 图3\"/></a><a href=\"https://www.oracle.com/technetwork/java/javase/downloads/index.html\"><img src=\"https://static.sitestack.cn/projects/hutool/09acdd97177efea6ac393925b9aa7ccf.svg\" alt=\"入门和安装 - 图4\"/></a><a href=\"https://travis-ci.org/looly/hutool\"><img src=\"https://static.sitestack.cn/projects/hutool/59d00739be060a6acc5b289dfa52a5b3.svg\" alt=\"入门和安装 - 图5\"/></a><a href=\"https://www.codacy.com/app/looly/hutool?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=looly/hutool&amp;utm_campaign=Badge_Grade\"><img src=\"https://static.sitestack.cn/projects/hutool/fe5689e82893d5e46849f6ae262231d1.svg\" alt=\"入门和安装 - 图6\"/></a><a href=\"https://gitter.im/hutool/Lobby?utm_source=badge&amp;utm_medium=badge&amp;utm_campaign=pr-badge&amp;utm_content=badge\"><img src=\"https://static.sitestack.cn/projects/hutool/61bdcaf43a556a5caa276f019755c84c.svg\" alt=\"入门和安装 - 图7\"/></a><a href=\"https://gitee.com/loolly/hutool/stargazers\"><img src=\"https://static.sitestack.cn/projects/hutool/617b17033f0d226d793e716fe340859a.svg\" alt=\"gitee star\"/></a><a href=\"https://github.com/looly/hutool\"><img src=\"https://static.sitestack.cn/projects/hutool/275de6950728fb41249973771afd3cfc.svg\" alt=\"github star\"/></a><a href=\"https://app.netlify.com/sites/hutool/deploys\"><img src=\"https://static.sitestack.cn/projects/hutool/be29d68dace0b02c66b01a009e9d1adf.svg\" alt=\"netlify\"/></a></p><p>— 主页：<a href=\"https://hutool.cn/\">https://hutool.cn/</a>&nbsp;|&nbsp;<a href=\"https://www.hutool.club/\">https://www.hutool.club/</a>&nbsp;—</p><p>— QQ群③：<a href=\"https://shang.qq.com/wpa/qunwpa?idkey=35764b2247c46ffebe28e4541e5b2af8f5dee5efcf47ceec69d21e4521aa8c75\">555368316</a>&nbsp;— — QQ群④：<a href=\"https://shang.qq.com/wpa/qunwpa?idkey=309056e409a304a454c7ba250a10d38dd82b9b49cd0e1f180fedbde78b02ae0d\">718802356</a>&nbsp;—</p><hr/><h2><a></a>简介</h2><p>Hutool是一个Java工具包，也只是一个工具包，它帮助我们简化每一行代码，减少每一个方法，让Java语言也可以“甜甜的”。它最初是作者项目中“util”包的一个整理，后来慢慢积累并加入更多非业务相关功能，并广泛学习其它开源项目精髓，经过自己整理修改，最终形成丰富的开源工具集。</p><p>Hutool是Hu + tool的自造词，谐音“糊涂”，寓意，追求“万事都作糊涂观，无所谓失，无所谓得”的境界。</p><h3><a></a>Hutool如何改变我们的coding方式</h3><p>Hutool的目标是使用一个工具方法代替一段复杂代码，从而最大限度的避免“复制粘贴”代码的问题，彻底改变我们写代码的方式。</p><p>以计算MD5为例：</p><ul><li>【以前】打开百度 -&gt; 搜“Java MD5加密” -&gt; 打开某篇博客-&gt; 复制粘贴 -&gt; 改改好用</li><li>【现在】引入Hutool -&gt; SecureUtil.md5()同样，当我们想实现什么功能，脑袋中第一个想到的就是去找XXXUtil，而非百度。</li></ul><hr/><h2><a></a>包含组件</h2><p>一个Java基础工具类，对文件、流、加密解密、转码、正则、线程、XML等JDK方法进行封装，组成各种Util工具类，同时提供以下组件：</p><ul><li>hutool-aop JDK动态代理封装，提供非IOC下的切面支持</li><li>hutool-bloomFilter 布隆过滤，提供一些Hash算法的布隆过滤</li><li>hutool-cache 简单缓存实现</li><li>hutool-core 核心，包括Bean操作、日期、各种Util等</li><li>hutool-cron 定时任务模块，提供类Crontab表达式的定时任务</li><li>hutool-crypto 加密解密模块，提供对称、非对称和摘要算法封装</li><li>hutool-db JDBC封装后的数据操作，基于ActiveRecord思想</li><li>hutool-dfa 基于DFA模型的多关键字查找</li><li>hutool-extra 扩展模块，对第三方封装（模板引擎、邮件、Servlet、二维码、Emoji、FTP、分词等）</li><li>hutool-http 基于HttpUrlConnection的Http客户端封装</li><li>hutool-log 自动识别日志实现的日志门面</li><li>hutool-script 脚本执行封装，例如Javascript</li><li>hutool-setting 功能更强大的Setting配置文件和Properties封装</li><li>hutool-system 系统参数调用封装（JVM信息等）</li><li>hutool-json JSON实现</li><li>hutool-captcha 图片验证码实现</li><li>hutool-poi 针对POI中Excel的封装</li><li>hutool-socket 基于Java的NIO和AIO的Socket封装可以根据需求对每个模块单独引入，也可以通过引入<code>hutool-all</code>方式引入所有模块。</li></ul><hr/><h2><a></a>文档</h2><p><a href=\"https://www.hutool.cn/docs/\">中文文档</a><a href=\"https://www.hutool.club/docs/\">中文文档（备用）</a></p><p><a href=\"https://apidoc.gitee.com/loolly/hutool/\">参考API</a></p><hr/><h2><a></a>安装</h2><h3><a></a>Maven</h3><p>在项目的pom.xml的dependencies中加入以下内容:</p><pre><ol><li><code>&lt;dependency&gt;</code></li><li><code>    &lt;groupId&gt;cn.hutool&lt;/groupId&gt;</code></li><li><code>    &lt;artifactId&gt;hutool-all&lt;/artifactId&gt;</code></li><li><code>    &lt;version&gt;4.5.15&lt;/version&gt;</code></li><li><code>&lt;/dependency&gt;</code></li></ol></pre><h3><a></a>Gradle</h3><pre><ol><li><code>compile \'cn.hutool:hutool-all:4.5.15\'</code></li></ol></pre><h3><a></a>非Maven项目</h3><p>点击以下任一链接，下载<code>hutool-all-X.X.X.jar</code>即可：</p><ul><li><a href=\"https://repo1.maven.org/maven2/cn/hutool/hutool-all/4.5.15/\">Maven中央库1</a></li><li><a href=\"http://repo2.maven.org/maven2/cn/hutool/hutool-all/4.5.15/\">Maven中央库2</a></li></ul><blockquote><p>注意Hutool支持JDK7+，对Android平台没有测试，不能保证所有工具类获工具方法可用。</p></blockquote><h3><a></a>编译安装</h3><p>访问Hutool的码云主页：<a href=\"https://gitee.com/loolly/hutool\">https://gitee.com/loolly/hutool</a>&nbsp;下载整个项目源码（v4-master或v4-dev分支都可）然后进入Hutool项目目录执行：</p><pre><ol><li><code>bin/hutool.sh install</code></li></ol></pre><p>然后就可以使用Maven引入了。</p><hr/><h2><a></a>添砖加瓦</h2><h3><a></a>提供bug反馈或建议</h3><ul><li><a href=\"https://gitee.com/loolly/hutool/issues\">码云Gitee</a></li><li><a href=\"https://github.com/looly/hutool/issues\">Github</a></li></ul><h3><a></a>遵照的原则</h3><p>Hutool欢迎任何人为Hutool添砖加瓦，贡献代码，不过作者是一个强迫症患者，为了照顾病人，需要提交的pr（pull request）符合一些规范，规范如下：</p><ul><li>注释完备，尤其每个新增的方法应按照Java文档规范标明方法说明、参数说明、返回值说明等信息，如果愿意，也可以加上你的大名。</li><li>Hutool的缩进按照Eclipse（不要跟我说IDEA多好用，作者非常懒，学不会）默认（tab）缩进，所以请遵守（不要和我争执空格与tab的问题，这是一个病人的习惯）。</li><li>新加的方法不要使用第三方库的方法，Hutool遵循无依赖原则（除非在extra模块中加方法工具）。</li><li>请pull request到<code>v4-dev</code>分支。Hutool在4.x版本后使用了新的分支：<code>v4-master</code>是主分支，表示已经发布中央库的版本，这个分支不允许pr，也不允许修改。<code>v4-dev</code>分支是开发分支，Hutool的下个版本或者SNAPSHOT版本在这个分支上开发，你可以pr到这个分支。</li></ul><h3><a></a>贡献代码的步骤</h3><ul><li>在Gitee或者Github上fork项目到自己的repo</li><li>把fork过去的项目也就是你的项目clone到你的本地</li><li>修改代码（记得一定要修改v4-dev分支）</li><li>commit后push到自己的库（v4-dev分支）</li><li>登录Gitee或Github在你首页可以看到一个 pull request 按钮，点击它，填写一些说明信息，然后提交即可。</li><li>等待作者合并</li></ul><hr/><h2><a></a>捐赠</h2><p>如果你觉得Hutool不错，可以捐赠请作者吃包辣条~，在此表示感谢^_^。</p><p>点击以下链接，将页面拉到最下方点击“捐赠”即可。</p><p><a href=\"https://gitee.com/loolly/hutool\">前往捐赠</a></p></article><p>上一篇:<a href=\"https://www.bookstack.cn/read/hutool/latest-version.md\">【新版本看这里】</a></p><p>下一篇:<a href=\"https://www.bookstack.cn/read/hutool/3e26077b0de69914.md\">更新记录</a></p>', 3232235850, 'Chrome 9 93.0.4577.82', '2021-09-21 22:36:36', '2021-09-21 22:36:36', 0);

SET FOREIGN_KEY_CHECKS = 1;
