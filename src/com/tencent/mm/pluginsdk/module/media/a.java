package com.tencent.mm.pluginsdk.module.media;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class a
{
  private ArrayList fiG = new ArrayList();
  private LinkedList fiH = new LinkedList();
  private int fiI = 0;
  private String fiJ;
  private String fiK;
  private String fiL;
  private long fiM;
  private String fiN;
  private String fiO;
  private boolean fiP = false;
  private String title;

  private static void a(a parama, b paramb)
  {
    for (int i = -1 + parama.fiG.size(); ; i--)
      if ((i >= 0) && (((b)parama.fiG.get(i)).timestamp != paramb.timestamp))
      {
        if (((b)parama.fiG.get(i)).timestamp < paramb.timestamp)
          parama.fiG.add(i + 1, paramb);
      }
      else
      {
        if (i < 0)
          parama.fiG.add(0, paramb);
        return;
      }
  }

  public static a aG(String paramString1, String paramString2)
  {
    if (paramString1 == null)
    {
      aa.w("MicroMsg.LrcMgr", "getLrcMgr: but lrc is null");
      return null;
    }
    long l = cj.FE();
    aa.c("MicroMsg.LrcMgr", "getLrcMgr beg: src lrc = %s", new Object[] { paramString1 });
    a locala = new a();
    if (paramString1 == null)
      aa.w("MicroMsg.LrcMgr", "parserLrc: but lrc or lrcMgr is null");
    while (true)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(locala.fiG.size());
      aa.d("MicroMsg.LrcMgr", "parse finish: sentence size [%d], result:", arrayOfObject2);
      Iterator localIterator = locala.fiG.iterator();
      while (localIterator.hasNext())
        aa.i("MicroMsg.LrcMgr", ((b)localIterator.next()).toString());
      String str1 = paramString1.replaceAll("\n", " ").replaceAll("\r", " ");
      Matcher localMatcher1 = Pattern.compile("(\\[((\\d{2}:\\d{2}(\\.\\d{2}){0,1}\\])|(al:|ar:|by:|offset:|re:|ti:|ve:))[^\\[]*)").matcher(str1);
      label648: 
      while (localMatcher1.find())
      {
        String str2 = localMatcher1.group();
        int k = localMatcher1.start();
        int m = localMatcher1.end();
        Object[] arrayOfObject4 = new Object[3];
        arrayOfObject4[0] = str2;
        arrayOfObject4[1] = Integer.valueOf(k);
        arrayOfObject4[2] = Integer.valueOf(m);
        aa.d("MicroMsg.LrcMgr", "new msg %s , start %d , end %d", arrayOfObject4);
        if (str2 == null)
        {
          aa.w("MicroMsg.LrcMgr", "parserLine fail: lrcMgr or str is null");
        }
        else if (str2.startsWith("[ti:"))
        {
          locala.title = aH(str2, "[ti:");
        }
        else if (str2.startsWith("[ar:"))
        {
          locala.fiJ = aH(str2, "[ar:");
        }
        else if (str2.startsWith("[al:"))
        {
          locala.fiK = aH(str2, "[al:");
        }
        else if (str2.startsWith("[by:"))
        {
          locala.fiL = aH(str2, "[by:");
        }
        else if (str2.startsWith("[offset:"))
        {
          locala.fiM = cj.getLong(aH(str2, "[offset:"), 0L);
        }
        else if (str2.startsWith("[re:"))
        {
          locala.fiN = aH(str2, "[re:");
        }
        else if (str2.startsWith("[ve:"))
        {
          locala.fiO = aH(str2, "[ve:");
        }
        else
        {
          Pattern localPattern = Pattern.compile("\\[(\\d{2}:\\d{2}(\\.\\d{2}){0,1})\\]");
          Matcher localMatcher2 = localPattern.matcher(str2);
          b localb4 = new b();
          while (true)
          {
            if (!localMatcher2.find())
              break label648;
            if (localMatcher2.groupCount() > 0)
              localb4.timestamp = qA(localMatcher2.group(1));
            String[] arrayOfString = localPattern.split(str2);
            int n;
            if ((arrayOfString != null) && (arrayOfString.length > 0))
            {
              String str3 = arrayOfString[(-1 + arrayOfString.length)];
              if (str3 != null)
                str3 = str3.trim();
              if (cj.hX(str3))
                str3 = " ";
              localb4.content = str3;
              n = 0;
            }
            while (true)
              if (n < locala.fiH.size())
              {
                b localb5 = new b();
                localb5.timestamp = ((Long)locala.fiH.get(n)).longValue();
                localb5.content = localb4.content;
                b.b(localb5);
                a(locala, localb5);
                n++;
                continue;
                aa.d("MicroMsg.LrcMgr", "need repeat");
                locala.fiH.add(Long.valueOf(localb4.timestamp));
                break;
              }
            locala.fiH.clear();
            a(locala, localb4);
          }
        }
      }
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Long.valueOf(locala.fiM);
      aa.e("MicroMsg.LrcMgr", "handle offset %d", arrayOfObject1);
      if (locala.fiM != 0L)
      {
        for (int j = 0; j < locala.fiG.size(); j++)
        {
          b localb3 = (b)locala.fiG.get(j);
          localb3.timestamp += locala.fiM;
        }
        locala.fiM = 0L;
      }
      for (int i = 0; i < -1 + locala.fiG.size(); i++)
      {
        b localb1 = (b)locala.fiG.get(i);
        if ((b.a(localb1)) && (localb1.content.equals(((b)locala.fiG.get(i + 1)).content)))
          localb1.content = " ";
      }
    }
    if (cj.hX(paramString2))
      aa.w("MicroMsg.LrcMgr", "add lyric prefix: but prefix is empty, return");
    while (true)
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Long.valueOf(cj.O(l));
      aa.c("MicroMsg.LrcMgr", "getLrcMgr finish: use %d ms", arrayOfObject3);
      return locala;
      b localb2 = new b();
      localb2.timestamp = 0L;
      localb2.content = paramString2;
      if (locala.fiG.isEmpty())
      {
        locala.fiG.add(localb2);
      }
      else if (locala.fiG.size() == 1)
      {
        locala.fiG.add(0, localb2);
        ((b)locala.fiG.get(1)).timestamp = 5000L;
      }
      else
      {
        locala.fiG.add(0, localb2);
        ((b)locala.fiG.get(1)).timestamp = (3L * (((b)locala.fiG.get(2)).timestamp >> 2));
      }
    }
  }

  private static String aH(String paramString1, String paramString2)
  {
    if ((cj.hX(paramString1)) || (cj.hX(paramString2)))
      return paramString1;
    if (paramString2.length() >= -1 + paramString1.length())
      return "";
    String str = paramString1.substring(paramString2.length(), -1 + paramString1.length());
    aa.e("MicroMsg.LrcMgr", "str[%s] prefix[%s] attr[%s]", new Object[] { paramString1, paramString2, str });
    return str;
  }

  private static long qA(String paramString)
  {
    while (true)
    {
      try
      {
        String[] arrayOfString1 = paramString.split(":");
        int i = Integer.parseInt(arrayOfString1[0]);
        if (arrayOfString1.length > 1)
        {
          String[] arrayOfString2 = arrayOfString1[1].split("\\.");
          k = Integer.parseInt(arrayOfString2[0]);
          int m = arrayOfString2.length;
          j = 0;
          if (m > 1)
          {
            int n = Integer.parseInt(arrayOfString2[1]);
            j = n;
          }
          return 1000 * (i * 60) + k * 1000 + j * 10;
        }
      }
      catch (Exception localException)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localException.getLocalizedMessage();
        aa.c("MicroMsg.LrcMgr", "strToLong error: %s", arrayOfObject);
        return 0L;
      }
      int j = 0;
      int k = 0;
    }
  }

  public final float a(float paramFloat, long paramLong)
  {
    int i = bE(paramLong);
    if (-1 == i)
    {
      aa.w("MicroMsg.LrcMgr", "getCurVelocity: but getCurIndex fail");
      return 0.0F;
    }
    if (i == -1 + this.fiG.size())
      return 0.0F;
    long l = ((b)this.fiG.get(i + 1)).timestamp - ((b)this.fiG.get(i)).timestamp;
    if (0L == l)
      return 0.0F;
    return paramFloat / (float)l;
  }

  public final boolean aqw()
  {
    return this.fiP;
  }

  public final long aqx()
  {
    if (this.fiG.isEmpty())
      return 20000L;
    return 20000L + ((b)this.fiG.get(-1 + this.fiG.size())).timestamp;
  }

  public final int aqy()
  {
    return this.fiG.size();
  }

  public final void bD(long paramLong)
  {
    if (this.fiP)
    {
      aa.w("MicroMsg.LrcMgr", "has add tail");
      return;
    }
    this.fiP = true;
    if (this.fiG.isEmpty());
    for (b localb1 = new b(); ; localb1 = (b)this.fiG.get(-1 + this.fiG.size()))
    {
      long l1 = Math.max(paramLong, localb1.timestamp);
      long l2 = Math.max(l1 - 5000L, l1 + localb1.timestamp >> 1);
      long l3 = (l1 - l2) / 5L;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Long.valueOf(l1);
      arrayOfObject[1] = Long.valueOf(l2);
      arrayOfObject[2] = Long.valueOf(l3);
      aa.d("MicroMsg.LrcMgr", "maxTimestamp[%d], begTimestamp[%d], step[%d]", arrayOfObject);
      for (int i = 0; i < 5; i++)
      {
        b localb2 = new b();
        localb2.timestamp = (l2 + l3 * i);
        localb2.content = " ";
        this.fiG.add(localb2);
      }
      break;
    }
  }

  public final int bE(long paramLong)
  {
    if (this.fiG.isEmpty())
    {
      aa.w("MicroMsg.LrcMgr", "getCurIndex: but sentence list is empty");
      return -1;
    }
    int j;
    if (((b)this.fiG.get(this.fiI)).timestamp <= paramLong)
    {
      j = -1 + this.fiG.size();
      for (int k = this.fiI; k < j; k++)
        if ((((b)this.fiG.get(k)).timestamp <= paramLong) && (paramLong < ((b)this.fiG.get(k + 1)).timestamp))
        {
          this.fiI = k;
          return this.fiI;
        }
    }
    for (this.fiI = j; ; this.fiI = 0)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.fiI);
      aa.c("MicroMsg.LrcMgr", "curIndex %d", arrayOfObject);
      return this.fiI;
      for (int i = this.fiI; i > 0; i--)
        if ((((b)this.fiG.get(i)).timestamp >= paramLong) && (paramLong > ((b)this.fiG.get(i - 1)).timestamp))
        {
          this.fiI = i;
          return this.fiI;
        }
    }
  }

  public final b kd(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.fiG.size()))
      return null;
    return (b)this.fiG.get(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.module.media.a
 * JD-Core Version:    0.6.2
 */