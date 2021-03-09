<%--
  Created by IntelliJ IDEA.
  User: 71046
  Date: 2020/12/6
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>新闻细节</title>
  </head>
  <body>

  <ul>
    <li ><a href="#" type="radio" name="sex" id="button1" onclick="show1()"> karrigan:mouz进步很大，我们对过去两周取得的成绩感到骄傲</a></li>
    <li><a href="#" type="radio" name="sex" id="button2" onclick="show2()" >A队暴虐黑豹</a></li>
    <li><a href="#" type="radio" name="sex" id="button3" onclick="show3()" >NIP正式宣布展开“忍者之路”人才培养计划</a></li>
  </ul>
  <div style="display:none" id="div1">
    <p>这位丹麦老将谈到了mousesports动荡的一年，以及最近在DreamHack冬季大师赛的成绩，备战BLAST Premier所做的准备。 mousesports在今年最后一场比赛中信心满满，此前他们战胜了Heroic，Liquid和Cloud9。在DreamHack冬季大师赛的决赛中以1:3输给了Astralis，拿到了亚军。 这是自4月EPL S11以来，mousesports首次接近夺冠，战队在这一年中度过了一段艰难的时期，最终招入Bymas取代了左手狙神woxic，前者几乎是一位没有比赛经验的天才选手，而后者则拿到了2019年年度选手TOP12。 在经历了一段艰难时期后，karrigan对战队重返巅峰感到欣慰，他承认战队在前几日对阵Astralis中由于自己缺乏经验导致了比赛失利，尽管如此，当被问及他的队员为何在最后两张地图发挥失常时，他没有指责任何一个队友。 同时还问及了关于这位30岁的IGL的职业未来，之前有报道称他可能离开mousesports回到FaZe，karrigan的回答显然回避了这个问题，他只是说道会让战队重回巅峰。 以下是采访原文（该采访发布于BLAST Premier比赛前）：</p>
  </div>
  <div style="display:none" id="div2">
    <p>DH冬季大师赛淘汰赛第二日FURIA vs Astralis。A队在今日比赛中再次给观众教学了如何用“教科书”式的团队配合赢得游戏，无论进攻还是防守，A队细致紧密如同机械运作的处理方式带给黑豹窒息般的重压。黑豹的应对之法或许就是一次次的加速快攻，但往往作用不大，而且今日两图黑豹五人打得可谓郁闷不已。除此之外替换上场的Bubzkji在图二Nuke的表现并不差，也许A队在未来也将采用六人阵容，让我们拭目以待。恭喜Astralis 2-0 FURIA与Mouz会师决赛。</p>
  </div>
  <div style="display:none" id="div3">
    <p>今日早时，瑞典豪门俱乐部NIP正式宣布将与CS老将Potti合作，展开一项名为“忍者之路”的人才培养计划，旨在重点培养瑞典未来的CSGO选手。届时他们将于瑞典本土赛事方一同致力于发掘、招募和支持新一代年轻选手。在本土赛事Elitserien的每个赛季结束后，将有2到3名脱颖而出的选手加入 "忍者之路 "计划。届时，选手将由Potti、NIP的现任教练THREAT等人组成的评审团选出。</p>
  </div>

  <script>
    function show1(){
      document.getElementById("div1").style.display="block";
      document.getElementById("div2").style.display="none";
      document.getElementById("div3").style.display="none";
    };
    function show2()
    {
      document.getElementById("div2").style.display="block";
      document.getElementById("div1").style.display="none";
      document.getElementById("div3").style.display="none";
    }
    function show3()
    {
      document.getElementById("div3").style.display="block";
      document.getElementById("div1").style.display="none";
      document.getElementById("div2").style.display="none";

    }
  </script>
  </body>
</html>
