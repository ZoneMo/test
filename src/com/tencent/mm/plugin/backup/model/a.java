package com.tencent.mm.plugin.backup.model;

import com.tencent.mm.j.d;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public final class a
{
  public static String cJH = "]]>";
  public static String cJI = "<msg>";
  public static String cJJ = "</msg>";

  public static String ii(String paramString)
  {
    int i = 0;
    com.tencent.mm.j.c localc = com.tencent.mm.j.b.bU(paramString);
    b localb = new b(paramString);
    if (!localb.isValid())
    {
      aa.e("MicroMsg.AppmsgConvert", "buffer error");
      return "";
    }
    c localc1 = new c();
    LinkedList localLinkedList = localc.che;
    HashMap localHashMap = new HashMap();
    localc1.ij("msg");
    localHashMap.put("appid", (String)localb.cJK.get(".msg.appmsg.$appid"));
    localHashMap.put("sdkver", (String)localb.cJK.get(".msg.appmsg.$sdkver"));
    localc1.c("appmsg", localHashMap);
    Object localObject1;
    Object localObject2;
    Object localObject3;
    int j;
    label390: StringBuilder localStringBuilder2;
    if ((localLinkedList == null) || (localLinkedList.size() == 0))
    {
      localObject1 = "";
      localObject2 = "";
      localObject3 = "";
      localc1.T("title", (String)localObject1);
      localc1.T("des", (String)localb.cJK.get(".msg.appmsg.des"));
      localc1.T("action", (String)localb.cJK.get(".msg.appmsg.action"));
      localc1.y("type", localb.getType());
      localc1.y("showtype", localb.Gd());
      localc1.T("content", (String)localb.cJK.get(".msg.appmsg.content"));
      localc1.T("url", (String)localObject2);
      localc1.T("lowurl", (String)localb.cJK.get(".msg.appmsg.lowurl"));
      localc1.ij("appattach");
      localc1.y("totallen", localb.Ge());
      localc1.T("attachid", (String)localb.cJK.get(".msg.appmsg.appattach.attachid"));
      localc1.T("fileext", (String)localb.cJK.get(".msg.appmsg.appattach.fileext"));
      localc1.ik("appattach");
      localc1.ij("mmreader");
      localHashMap.put("type", localc.type);
      StringBuilder localStringBuilder1 = new StringBuilder();
      if (localLinkedList != null)
        break label947;
      j = 0;
      localHashMap.put("count", j);
      localc1.c("category", localHashMap);
      localc1.T("name", localc.bQt);
      localc1.ij("topnew");
      localc1.T("cover", (String)localb.cJK.get(".msg.appmsg.mmreader.category.topnew.cover"));
      localc1.T("width", (String)localb.cJK.get(".msg.appmsg.mmreader.category.topnew.width"));
      localc1.T("height", (String)localb.cJK.get(".msg.appmsg.mmreader.category.topnew.height"));
      localc1.T("digest", (String)localObject3);
      localc1.ik("topnew");
      label516: if (i >= localLinkedList.size())
        break label968;
      localc1.ij("item");
      String str1 = ((d)localLinkedList.get(i)).title;
      String str2 = ((d)localLinkedList.get(i)).url;
      String str3 = ((d)localLinkedList.get(i)).chf;
      String str4 = ((d)localLinkedList.get(i)).chg;
      String str5 = ((d)localLinkedList.get(i)).time;
      String str6 = ((d)localLinkedList.get(i)).chh;
      String str7 = ((d)localLinkedList.get(i)).chi;
      String str8 = ((d)localLinkedList.get(i)).chj;
      localc1.T("title", str1);
      localc1.T("url", str2);
      localc1.T("shorturl", str3);
      localc1.T("longurl", str4);
      localc1.T("pub_time", str5);
      localc1.T("cover", str6);
      localc1.T("tweetid", str7);
      localc1.T("digest", str8);
      localStringBuilder2 = new StringBuilder(".msg.appmsg.mmreader.category.item");
      if (i != 0)
        break label959;
    }
    label947: label959: for (String str9 = ""; ; str9 = String.valueOf(i))
    {
      String str10 = str9;
      localc1.T("fileid", (String)localb.cJK.get(str10 + ".fileid"));
      localc1.ij("source");
      localc1.ij("source");
      localc1.T("name", localc.bQt);
      localc1.ik("source");
      localc1.ik("source");
      localc1.ik("item");
      i++;
      break label516;
      String str11 = ((d)localLinkedList.get(0)).title;
      String str12 = ((d)localLinkedList.get(0)).url;
      String str13 = ((d)localLinkedList.get(0)).chj;
      localObject1 = str11;
      localObject2 = str12;
      localObject3 = str13;
      break;
      j = localLinkedList.size();
      break label390;
    }
    label968: localc1.ik("category");
    localc1.ij("publisher");
    localc1.T("username", localc.bQs);
    localc1.T("nickname", localc.bQt);
    localc1.ik("publisher");
    localc1.ik("mmreader");
    localc1.ik("appmsg");
    localc1.T("fromusername", localc.bQs);
    localc1.y("scene", localb.Gf());
    localc1.ij("appinfo");
    localc1.T("version", (String)localb.cJK.get(".msg.appinfo.appname"));
    localc1.T("appname", (String)localb.cJK.get(".msg.appinfo.version"));
    localc1.ik("appinfo");
    localc1.T("commenturl", localc.bXF);
    localc1.ik("msg");
    aa.d("MicroMsg.AppmsgConvert", "xml " + localc1.cJM.toString());
    return localc1.cJM.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.a
 * JD-Core Version:    0.6.2
 */