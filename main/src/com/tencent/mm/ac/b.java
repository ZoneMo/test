package com.tencent.mm.ac;

import android.content.Context;
import android.graphics.Rect;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.e;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

public final class b
{
  public static final String[] cwv = { "LDPI", "HDPI", "MDPI" };
  public String cwk;
  public String cwl;
  public boolean cwm;
  public boolean cwn;
  public int cwo;
  public Rect cwp;
  public int cwq;
  public Rect cwr;
  public String cws;
  public String cwt;
  public Map cwu;
  public String desc;
  public String id;
  public String title;
  public String url;

  private b(String paramString1, String paramString2, String paramString3, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.id = paramString1;
    this.cwk = paramString2;
    this.cwl = paramString3;
    this.cwm = paramBoolean1;
    this.cwn = paramBoolean2;
  }

  private boolean BO()
  {
    long l1 = cj.FD();
    long l2 = 9223372036854775807L;
    long l3 = 0L;
    try
    {
      if (this.cwt != null)
        l2 = new SimpleDateFormat("yyyy-MM-dd-HH").parse(this.cwt).getTime();
      if (this.cws != null)
        l3 = new SimpleDateFormat("yyyy-MM-dd-HH").parse(this.cws).getTime();
      aa.d("MicroMsg.PushMessage", "CHECKTIME : [" + l3 + "," + l2 + "]");
      if ((l2 <= l1) || (l3 > l1))
        return false;
    }
    catch (Exception localException)
    {
      return true;
    }
    return true;
  }

  public static void BQ()
  {
    be.uz().sr().set(8193, "");
    be.uz().sr().set(8449, Long.valueOf(0L));
  }

  public static b Q(Context paramContext)
  {
    int i = 1;
    long l1 = cj.h(be.uz().sr().get(8449), 0);
    long l2 = cj.FC() - l1;
    if ((l1 > 0L) && (l2 >= 86400L))
      BQ();
    b localb;
    String str;
    while (true)
    {
      localb = null;
      return localb;
      str = (String)be.uz().sr().get(8193);
      if (!cj.hX(str))
      {
        if (!str.contains("id=\"setavatar\""))
          break;
        BQ();
      }
    }
    ArrayList localArrayList;
    if (!cj.hX(str))
    {
      localArrayList = o(paramContext, str);
      if ((localArrayList == null) || (localArrayList.size() != i))
        localb = null;
    }
    label186: label189: 
    while (true)
    {
      label125: if (localb == null)
      {
        BQ();
        break;
        localb = (b)localArrayList.get(0);
        if ((localb.cwu == null) || (localb.cwu.size() <= 0))
          break label186;
      }
      while (true)
      {
        if ((i != 0) && (localb.BO()))
          break label189;
        localb = null;
        break label125;
        break;
        i = 0;
      }
    }
  }

  public static String gh(String paramString)
  {
    c localc = gi(paramString);
    if (localc == c.cww)
      return paramString;
    if (localc == c.cwx)
    {
      String str;
      if (paramString == null)
        str = null;
      while (str == null)
      {
        return null;
        int i = paramString.lastIndexOf("/");
        if ((i < 0) || (i >= -1 + paramString.length()))
          str = null;
        else
          str = paramString.substring(i + 1);
      }
      return be.uz().sB() + str;
    }
    return null;
  }

  public static c gi(String paramString)
  {
    if (paramString.indexOf("tips/") == 0)
      return c.cww;
    if (paramString.indexOf("weixin://") == 0)
      return c.cwx;
    return c.cwy;
  }

  public static ArrayList o(Context paramContext, String paramString)
  {
    if ((paramString == null) || (paramString.length() < 0))
      return null;
    String str1 = com.tencent.mm.platformtools.b.ad(paramContext);
    Object localObject1;
    if (str1 == null)
    {
      localObject1 = null;
      if ((localObject1 == null) || (localObject1.size() <= 0))
        return null;
    }
    else
    {
      HashSet localHashSet = new HashSet();
      localHashSet.add(str1);
      String str2 = com.tencent.mm.platformtools.b.ae(paramContext);
      aa.d("MicroMsg.PushMessage", "getDisplaySizeType :" + str2);
      String[] arrayOfString;
      if (str2 != null)
      {
        arrayOfString = str2.split("_");
        if ((arrayOfString != null) && (arrayOfString.length >= 2))
          break label167;
      }
      label167: for (String str9 = null; ; str9 = arrayOfString[0])
      {
        localHashSet.add(str9 + "_L");
        localHashSet.add(str9 + "_P");
        localObject1 = localHashSet;
        break;
      }
    }
    Map localMap = u.aL(paramString, "tips");
    if (localMap == null)
      return null;
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; ; i++)
    {
      StringBuilder localStringBuilder1 = new StringBuilder(".tips.tip");
      Object localObject2;
      b localb;
      HashMap localHashMap;
      int i7;
      label1150: StringBuilder localStringBuilder2;
      if (i > 0)
      {
        localObject2 = Integer.valueOf(i);
        String str3 = localObject2;
        if (localMap.get(str3) == null)
          break;
        String str4 = (String)localMap.get(str3 + ".$id");
        aa.d("MicroMsg.PushMessage", "parseMessages id:" + str4);
        String str5 = (String)localMap.get(str3 + ".$platform");
        if (!str5.equals("android"))
          continue;
        localb = new b(str4, str5, (String)localMap.get(str3 + ".$device"), cj.b(Boolean.valueOf((String)localMap.get(str3 + ".$enableclose"))), cj.b(Boolean.valueOf((String)localMap.get(str3 + ".$transparentclose"))));
        int j = cj.getInt((String)localMap.get(str3 + ".title.$x"), 0);
        int k = cj.getInt((String)localMap.get(str3 + ".title.$y"), 0);
        int m = cj.getInt((String)localMap.get(str3 + ".title.$width"), 0);
        int n = cj.getInt((String)localMap.get(str3 + ".title.$font"), 0);
        int i1 = cj.sQ((String)localMap.get(str3 + ".title.$color"));
        localb.title = ((String)localMap.get(str3 + ".title"));
        localb.cwo = i1;
        localb.cwp = new Rect(j, k, m + j, n + k);
        int i2 = cj.getInt((String)localMap.get(str3 + ".description.$x"), 0);
        int i3 = cj.getInt((String)localMap.get(str3 + ".description.$y"), 0);
        int i4 = cj.getInt((String)localMap.get(str3 + ".description.$width"), 0);
        int i5 = cj.getInt((String)localMap.get(str3 + ".description.$font"), 0);
        int i6 = cj.sQ((String)localMap.get(str3 + ".description.$color"));
        localb.desc = ((String)localMap.get(str3 + ".description"));
        localb.cwq = i6;
        localb.cwr = new Rect(i2, i3, i4 + i2, i5 + i3);
        localb.url = ((String)localMap.get(str3 + ".url"));
        localb.cws = ((String)localMap.get(str3 + ".time.start"));
        localb.cwt = ((String)localMap.get(str3 + ".time.end"));
        aa.d("MicroMsg.PushMessage", "parseMessages id:" + localb.id + " start:" + localb.cws + " end:" + localb.cwt);
        localHashMap = new HashMap();
        i7 = 0;
        localStringBuilder2 = new StringBuilder().append(str3).append(".images.image");
        if (i7 <= 0)
          break label1302;
      }
      label1302: for (Object localObject3 = Integer.valueOf(i7); ; localObject3 = "")
      {
        String str6 = localObject3;
        String str7 = (String)localMap.get(str6);
        aa.d("MicroMsg.PushMessage", " img res:" + str7);
        if (str7 == null)
          break label1309;
        String str8 = (String)localMap.get(str6 + ".$type");
        if (localObject1.contains(str8))
          localHashMap.put(str8, str7);
        i7++;
        break label1150;
        localObject2 = "";
        break;
      }
      label1309: if (localHashMap.size() > 0)
        localb.cwu = localHashMap;
      aa.d("MicroMsg.PushMessage", "msgid :" + localb.id);
      localArrayList.add(localb);
    }
    aa.d("MicroMsg.PushMessage", "msgs size: " + localArrayList.size());
    if (localArrayList.size() > 0)
      return localArrayList;
    return null;
  }

  public final Map BP()
  {
    return this.cwu;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder("ad.id=").append(this.id).append(", platform=").append(this.cwk).append(", device=").append(this.cwl);
    String str1;
    StringBuilder localStringBuilder2;
    if (this.cwm)
    {
      str1 = ", closable";
      localStringBuilder2 = localStringBuilder1.append(str1);
      if (!this.cwn)
        break label89;
    }
    label89: for (String str2 = ", trans-closable"; ; str2 = "")
    {
      return str2;
      str1 = "";
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ac.b
 * JD-Core Version:    0.6.2
 */