package com.tencent.mm.j;

import com.tencent.mm.model.be;
import com.tencent.mm.modelcdntran.keep_SceneResult;
import com.tencent.mm.p.h;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.by;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class b
{
  private static final com.tencent.mm.a.d chd = new com.tencent.mm.a.d(100);
  public String appId;
  public String appName;
  public int bLY;
  public String bQs;
  public String bQt;
  public String bXF;
  public String caw;
  public String cgB;
  public int cgC;
  public String cgD;
  public String cgE;
  public String cgF;
  public int cgG;
  public int cgH;
  public String cgI;
  public String cgJ;
  public String cgK;
  public String cgL;
  public int cgM;
  public String cgN;
  public String cgO;
  public int cgP;
  public String cgQ;
  public String cgR;
  public LinkedList cgS = null;
  public int cgT;
  public int cgU;
  public String cgV;
  public String cgW;
  public int cgX;
  public String cgY;
  public int cgZ;
  public String cha;
  public String chb;
  public int chc;
  public String content;
  public String description;
  public String extInfo;
  public String mediaTagName;
  public String messageAction;
  public String messageExt;
  public int sdkVer;
  public String thumburl;
  public String title;
  public int type;
  public String url;

  public static b a(b paramb)
  {
    b localb = new b();
    if (paramb == null)
      return localb;
    localb.caw = paramb.caw;
    localb.appId = paramb.appId;
    localb.appName = paramb.appName;
    localb.cgH = paramb.cgH;
    localb.cgE = paramb.cgE;
    localb.cgC = paramb.cgC;
    localb.content = paramb.content;
    localb.description = paramb.description;
    localb.extInfo = paramb.extInfo;
    localb.mediaTagName = paramb.mediaTagName;
    localb.messageAction = paramb.messageAction;
    localb.messageExt = paramb.messageExt;
    localb.cgG = paramb.cgG;
    localb.cgD = paramb.cgD;
    localb.cgI = paramb.cgI;
    localb.cgB = paramb.cgB;
    localb.sdkVer = paramb.sdkVer;
    localb.title = paramb.title;
    localb.type = paramb.type;
    localb.bLY = paramb.bLY;
    localb.cgT = paramb.cgT;
    localb.url = paramb.url;
    localb.cgF = paramb.cgF;
    localb.bQs = paramb.bQs;
    localb.bQt = paramb.bQt;
    localb.bXF = paramb.bXF;
    localb.thumburl = paramb.thumburl;
    localb.cgJ = paramb.cgJ;
    localb.cgQ = paramb.cgQ;
    localb.cgR = paramb.cgR;
    localb.cgU = paramb.cgU;
    localb.cgV = paramb.cgV;
    localb.cgX = paramb.cgX;
    localb.cgW = paramb.cgW;
    localb.cgZ = paramb.cgZ;
    localb.cha = paramb.cha;
    localb.chc = paramb.chc;
    localb.chb = paramb.chb;
    localb.cgY = paramb.cgY;
    return localb;
  }

  public static String a(b paramb, String paramString, keep_SceneResult paramkeep_SceneResult, int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("<appmsg appid=\"" + cj.sS(paramb.appId) + "\" sdkver=\"" + paramb.sdkVer + "\">");
    localStringBuilder1.append("<title>" + cj.sS(paramb.title) + "</title>");
    localStringBuilder1.append("<des>" + cj.sS(paramb.description) + "</des>");
    StringBuilder localStringBuilder2 = new StringBuilder("<action>");
    String str;
    if (cj.hX(paramb.caw))
    {
      str = "view";
      localStringBuilder1.append(str + "</action>");
      localStringBuilder1.append("<type>" + paramb.type + "</type>");
      localStringBuilder1.append("<showtype>").append(paramb.bLY).append("</showtype>");
      localStringBuilder1.append("<content>" + cj.sS(paramb.content) + "</content>");
      localStringBuilder1.append("<url>" + cj.sS(paramb.url) + "</url>");
      localStringBuilder1.append("<lowurl>" + cj.sS(paramb.cgB) + "</lowurl>");
      localStringBuilder1.append("<dataurl>" + cj.sS(paramb.cgQ) + "</dataurl>");
      localStringBuilder1.append("<lowdataurl>" + cj.sS(paramb.cgR) + "</lowdataurl>");
      switch (paramb.type)
      {
      case 11:
      case 12:
      default:
        label420: localStringBuilder1.append("<appattach>");
        if ((paramkeep_SceneResult == null) || ((cj.hX(paramString)) && (paramInt1 == 0) && (paramInt2 == 0)))
        {
          localStringBuilder1.append("<totallen>" + paramb.cgC + "</totallen>");
          localStringBuilder1.append("<attachid>" + cj.sS(paramb.cgE) + "</attachid>");
          localStringBuilder1.append("<emoticonmd5>" + cj.sS(paramb.cgF) + "</emoticonmd5>");
          localStringBuilder1.append("<fileext>" + cj.sS(paramb.cgD) + "</fileext>");
        }
        break;
      case 10:
      case 13:
      case 14:
      }
    }
    while (true)
    {
      localStringBuilder1.append("</appattach>");
      localStringBuilder1.append("<extinfo>" + cj.sS(paramb.extInfo) + "</extinfo>");
      localStringBuilder1.append("<androidsource>" + paramb.cgG + "</androidsource>");
      if (!cj.hX(paramb.bQs))
      {
        localStringBuilder1.append("<sourceusername>" + cj.sS(paramb.bQs) + "</sourceusername>");
        localStringBuilder1.append("<sourcedisplayname>" + cj.sS(paramb.bQt) + "</sourcedisplayname>");
        localStringBuilder1.append("<commenturl>" + cj.sS(paramb.bXF) + "</commenturl>");
      }
      localStringBuilder1.append("<thumburl>" + cj.sS(paramb.thumburl) + "</thumburl>");
      localStringBuilder1.append("<mediatagname>" + cj.sS(paramb.mediaTagName) + "</mediatagname>");
      localStringBuilder1.append("<messageaction>" + bW(cj.sS(paramb.messageAction)) + "</messageaction>");
      localStringBuilder1.append("<messageext>" + bW(cj.sS(paramb.messageExt)) + "</messageext>");
      localStringBuilder1.append("<emoticongift>");
      localStringBuilder1.append("<packageflag>" + paramb.cgX + "</packageflag>");
      localStringBuilder1.append("<packageid>" + cj.sS(paramb.cgW) + "</packageid>");
      localStringBuilder1.append("</emoticongift>");
      localStringBuilder1.append("<emoticonshared>");
      localStringBuilder1.append("<packageflag>" + paramb.chc + "</packageflag>");
      localStringBuilder1.append("<packageid>" + cj.sS(paramb.chb) + "</packageid>");
      localStringBuilder1.append("</emoticonshared>");
      localStringBuilder1.append("</appmsg>");
      if (2 == paramb.bLY)
        localStringBuilder1.append("<ShakePageResult>").append(paramb.cgJ).append("</ShakePageResult>");
      return localStringBuilder1.toString();
      str = cj.sS(paramb.caw);
      break;
      localStringBuilder1.append("<productitem type=\"" + paramb.cgU + "\">");
      localStringBuilder1.append("<productinfo>" + cj.sS(paramb.cgV) + "</productinfo>");
      localStringBuilder1.append("</productitem>");
      break label420;
      localStringBuilder1.append("<mallproductitem type=\"" + paramb.cgZ + "\">");
      localStringBuilder1.append("<mallproductinfo>" + cj.sS(paramb.cha) + "</mallproductinfo>");
      localStringBuilder1.append("</mallproductitem>");
      break label420;
      localStringBuilder1.append("<tvinfo>" + cj.sS(paramb.cgY) + "</tvinfo>");
      break label420;
      localStringBuilder1.append("<attachid>" + cj.sS(paramString) + "</attachid>");
      if ((paramkeep_SceneResult.field_fileLength > 0) && (!cj.hX(paramkeep_SceneResult.field_fileId)))
      {
        localStringBuilder1.append("<cdnattachurl>" + cj.sS(paramkeep_SceneResult.field_fileId) + "</cdnattachurl>");
        localStringBuilder1.append("<totallen>" + paramkeep_SceneResult.field_fileLength + "</totallen>");
      }
      if (paramkeep_SceneResult.field_thumbimgLength > 0)
      {
        localStringBuilder1.append("<cdnthumburl>" + cj.sS(paramkeep_SceneResult.field_fileId) + "</cdnthumburl>");
        localStringBuilder1.append("<cdnthumblength>" + paramkeep_SceneResult.field_thumbimgLength + "</cdnthumblength>");
        localStringBuilder1.append("<cdnthumbheight>" + paramInt2 + "</cdnthumbheight>");
        localStringBuilder1.append("<cdnthumbwidth>" + paramInt1 + "</cdnthumbwidth>");
        localStringBuilder1.append("<cdnthumbaeskey>" + paramkeep_SceneResult.field_aesKey + "</cdnthumbaeskey>");
      }
      localStringBuilder1.append("<aeskey>" + cj.sS(paramkeep_SceneResult.field_aesKey) + "</aeskey>");
      localStringBuilder1.append("<encryver>1</encryver>");
      localStringBuilder1.append("<fileext>" + cj.sS(paramb.cgD) + "</fileext>");
    }
  }

  public static String b(b paramb)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<msg>");
    localStringBuilder.append(a(paramb, null, null, 0, 0));
    localStringBuilder.append("</msg>");
    chd.f(Integer.valueOf(localStringBuilder.toString().hashCode()), paramb);
    return localStringBuilder.toString();
  }

  public static final b bR(String paramString)
  {
    b localb1;
    if (cj.hX(paramString))
    {
      localb1 = null;
      return localb1;
    }
    int i = paramString.indexOf('<');
    if (i > 0);
    for (String str1 = paramString.substring(i); ; str1 = paramString)
    {
      int j = str1.hashCode();
      localb1 = (b)chd.get(Integer.valueOf(j));
      if (localb1 != null)
        break;
      Map localMap = u.aL(str1, "msg");
      if (localMap == null)
      {
        aa.e("MicroMsg.AppMessage", "parse msg failed");
        return null;
      }
      while (true)
      {
        b localb2;
        try
        {
          localb2 = new b();
          localb2.appId = ((String)localMap.get(".msg.appmsg.$appid"));
          localb2.sdkVer = cj.getInt((String)localMap.get(".msg.appmsg.$sdkver"), 0);
          localb2.title = ((String)localMap.get(".msg.appmsg.title"));
          localb2.description = ((String)localMap.get(".msg.appmsg.des"));
          localb2.caw = ((String)localMap.get(".msg.appmsg.action"));
          localb2.type = cj.getInt((String)localMap.get(".msg.appmsg.type"), 0);
          localb2.content = ((String)localMap.get(".msg.appmsg.content"));
          localb2.url = ((String)localMap.get(".msg.appmsg.url"));
          localb2.cgB = ((String)localMap.get(".msg.appmsg.lowurl"));
          localb2.cgQ = ((String)localMap.get(".msg.appmsg.dataurl"));
          localb2.cgR = ((String)localMap.get(".msg.appmsg.lowdataurl"));
          localb2.cgC = cj.getInt((String)localMap.get(".msg.appmsg.appattach.totallen"), 0);
          localb2.cgE = ((String)localMap.get(".msg.appmsg.appattach.attachid"));
          localb2.cgD = ((String)localMap.get(".msg.appmsg.appattach.fileext"));
          localb2.cgF = ((String)localMap.get(".msg.appmsg.appattach.emoticonmd5"));
          localb2.extInfo = ((String)localMap.get(".msg.appmsg.extinfo"));
          localb2.cgG = cj.getInt((String)localMap.get(".msg.appmsg.androidsource"), 0);
          localb2.bQs = ((String)localMap.get(".msg.appmsg.sourceusername"));
          localb2.bQt = ((String)localMap.get(".msg.appmsg.sourcedisplayname"));
          localb2.bXF = ((String)localMap.get(".msg.commenturl"));
          localb2.thumburl = ((String)localMap.get(".msg.appmsg.thumburl"));
          localb2.mediaTagName = ((String)localMap.get(".msg.appmsg.mediatagname"));
          localb2.messageAction = ((String)localMap.get(".msg.appmsg.messageaction"));
          localb2.messageExt = ((String)localMap.get(".msg.appmsg.messageext"));
          localb2.cgH = cj.getInt((String)localMap.get(".msg.appinfo.version"), 0);
          localb2.appName = ((String)localMap.get(".msg.appinfo.appname"));
          localb2.cgI = ((String)localMap.get(".msg.fromusername"));
          localb2.cgK = ((String)localMap.get(".msg.appmsg.appattach.cdnattachurl"));
          localb2.cgL = ((String)localMap.get(".msg.appmsg.appattach.cdnthumburl"));
          localb2.cgM = cj.getInt((String)localMap.get(".msg.appmsg.appattach.cdnthumblength"), 0);
          localb2.cgN = ((String)localMap.get(".msg.appmsg.appattach.aeskey"));
          localb2.cgP = cj.getInt((String)localMap.get(".msg.appmsg.appattach.encryver"), 1);
          localb2.cgO = ((String)localMap.get(".msg.appmsg.appattach.cdnthumbaeskey"));
          localb2.cgU = cj.getInt((String)localMap.get(".msg.appmsg.productitem.$type"), 0);
          localb2.cgV = ((String)localMap.get(".msg.appmsg.productitem.productinfo"));
          localb2.cgX = cj.getInt((String)localMap.get(".msg.appmsg.emoticongift.packageflag"), 0);
          localb2.cgW = ((String)localMap.get(".msg.appmsg.emoticongift.packageid"));
          localb2.chb = ((String)localMap.get(".msg.appmsg.emoticonshared.packageid"));
          localb2.chc = cj.getInt((String)localMap.get(".msg.appmsg.emoticonshared.packageflag"), 0);
          localb2.cgY = ((String)localMap.get(".msg.appmsg.tvinfo"));
          switch (localb2.type)
          {
          default:
            localb2.bLY = cj.getInt((String)localMap.get(".msg.appmsg.showtype"), 0);
            switch (localb2.bLY)
            {
            default:
              localb2.cgT = cj.getInt((String)localMap.get(".msg.appmsg.mmreader.category.item.itemshowtype"), 0);
              chd.f(Integer.valueOf(j), localb2);
              return localb2;
            case 1:
            case 2:
            }
            break;
          case 13:
          }
          localb2.cgZ = cj.getInt((String)localMap.get(".msg.appmsg.mallproductitem.$type"), 0);
          localb2.cha = ((String)localMap.get(".msg.appmsg.mallproductitem.mallproductinfo"));
          continue;
        }
        catch (Exception localException)
        {
          aa.e("MicroMsg.AppMessage", "parse amessage xml failed");
          return null;
        }
        if (cj.getInt((String)localMap.get(".msg.appmsg.mmreader.category.$count"), 0) > 0)
          if (localMap != null)
            break label1061;
        label1061: StringBuilder localStringBuilder;
        for (String str3 = null; ; str3 = localStringBuilder.toString())
        {
          localb2.content = str3;
          localb2.cgS = h.d(localMap);
          break;
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("~SEMI_XML~");
          Iterator localIterator = localMap.entrySet().iterator();
          while (localIterator.hasNext())
          {
            Map.Entry localEntry = (Map.Entry)localIterator.next();
            String str4 = (String)localEntry.getKey();
            String str5 = (String)localEntry.getValue();
            if (str5 != null)
            {
              int k = str4.length();
              int m = str5.length();
              localStringBuilder.append((char)(k >> 16)).append((char)k).append(str4);
              localStringBuilder.append((char)(m >> 16)).append((char)m).append(str5);
            }
          }
        }
        String str2 = paramString.toLowerCase();
        localb2.cgJ = paramString.substring(17 + str2.indexOf("<ShakePageResult>".toLowerCase()), str2.indexOf("</ShakePageResult>".toLowerCase()));
      }
    }
  }

  public static String bS(String paramString)
  {
    Map localMap = u.aL(paramString, "msg");
    String str;
    if (localMap == null)
    {
      aa.e("MicroMsg.AppMessage", "parseAppMsgDyeingTempToShow fail, values is null");
      str = null;
    }
    do
    {
      return str;
      str = (String)localMap.get(".msg.appmsg.mmreader.category.item.title");
    }
    while (str != null);
    return "";
  }

  public static String bT(String paramString)
  {
    Map localMap = by.sM(paramString);
    String str;
    if (localMap == null)
    {
      c localc = bV(paramString);
      StringBuilder localStringBuilder = new StringBuilder("");
      Iterator localIterator = localc.che.iterator();
      while (localIterator.hasNext())
      {
        d locald = (d)localIterator.next();
        if (!cj.hX(locald.title))
          localStringBuilder.append(locald.title);
      }
      str = localStringBuilder.toString();
    }
    do
    {
      return str;
      str = (String)localMap.get(".msg.appmsg.mmreader.category.item.title");
    }
    while (str != null);
    return "";
  }

  public static c bU(String paramString)
  {
    Map localMap = by.sM(paramString);
    if (localMap == null)
      return bV(paramString);
    int i = cj.getInt((String)localMap.get(".msg.appmsg.mmreader.category.$type"), 0);
    String str1 = cj.hW((String)localMap.get(".msg.appmsg.mmreader.name"));
    int j = cj.getInt((String)localMap.get(".msg.appmsg.mmreader.category.$count"), 0);
    String str2 = (String)localMap.get(".msg.commenturl");
    c localc = new c();
    localc.type = i;
    localc.name = str1;
    localc.bXF = str2;
    int k = 0;
    if (k < j)
    {
      d locald = new d();
      StringBuilder localStringBuilder = new StringBuilder(".msg.appmsg.mmreader.category.item");
      if (k == 0);
      for (String str3 = ""; ; str3 = String.valueOf(k))
      {
        String str4 = str3;
        locald.title = ((String)localMap.get(str4 + ".title"));
        locald.url = ((String)localMap.get(str4 + ".url"));
        locald.chf = ((String)localMap.get(str4 + ".shorturl"));
        locald.chg = ((String)localMap.get(str4 + ".longurl"));
        locald.time = cj.getLong((String)localMap.get(str4 + ".pub_time"), 0L);
        locald.chh = ((String)localMap.get(str4 + ".cover"));
        locald.chi = ((String)localMap.get(str4 + ".tweetid"));
        locald.chj = ((String)localMap.get(str4 + ".digest"));
        locald.type = cj.getInt((String)localMap.get(str4 + ".itemshowtype"), 0);
        localc.che.add(locald);
        k++;
        break;
      }
    }
    localc.cgS = h.d(localMap);
    String str5 = cj.hW((String)localMap.get(".msg.fromusername"));
    if (!cj.hX(str5))
    {
      String str6 = be.uz().su().tO(str5).rq();
      localc.bQs = str5;
      localc.bQt = str6;
    }
    return localc;
  }

  private static c bV(String paramString)
  {
    try
    {
      c localc2 = new c().m(com.tencent.mm.a.a.decode(paramString));
      return localc2;
    }
    catch (Exception localException1)
    {
      try
      {
        c localc1 = new c().m(cj.ib(paramString));
        return localc1;
      }
      catch (Exception localException2)
      {
      }
    }
    return new c();
  }

  private static String bW(String paramString)
  {
    return "<![CDATA[" + paramString + "]]>";
  }

  public final void a(a parama)
  {
    parama.field_appId = this.appId;
    parama.field_title = this.title;
    parama.field_description = this.description;
    parama.field_type = this.type;
    parama.field_source = this.appName;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.j.b
 * JD-Core Version:    0.6.2
 */