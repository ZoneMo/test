package com.tencent.mm.af;

import com.tencent.mm.ab.l;
import com.tencent.mm.ab.r;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

public final class d
{
  public int bTN = 0;
  public String cxZ = "BeiJing;GuangZhou;ShangHai;";
  public int cya = 0;
  public int cyb = 2;
  public int cyc = 2;
  public int cyd = 2;
  public int cye = 10240;
  public int cyf = 10240000;
  public int cyg = 100;
  public int cyh = 100;
  public int cyi = 100;
  private Random cyj = new Random();
  public List cyk = null;

  private int CI()
  {
    switch (c.cxX)
    {
    default:
      return this.cyg;
    case 0:
      return this.cyg;
    case 1:
      return this.cyh;
    case 2:
    }
    return this.cyi;
  }

  public static d CK()
  {
    aa.d("upload", "parseFromFile");
    l locall = r.BM();
    String str1 = locall.BJ() + l.I(1, 9);
    int i = com.tencent.mm.a.c.ar(str1);
    d locald1;
    if (i == -1)
    {
      aa.e("upload", "read file failed " + i + str1);
      locald1 = null;
      return locald1;
    }
    byte[] arrayOfByte = com.tencent.mm.a.c.g(str1, 0, i);
    if (arrayOfByte == null)
    {
      aa.e("upload", "read file failed " + i + str1);
      return null;
    }
    String str2 = new String(arrayOfByte);
    if (cj.hX(str2))
      return null;
    int j = str2.indexOf('<');
    String str3;
    if (j > 0)
      str3 = str2.substring(j);
    while (true)
    {
      int k = str3.hashCode();
      locald1 = (d)c.CF().get(Integer.valueOf(k));
      if (locald1 != null)
        break;
      Map localMap = u.aL(str3, "Config");
      if (localMap == null)
      {
        aa.e("upload", "parse msg failed");
        return null;
      }
      label1195: 
      try
      {
        d locald2 = new d();
        label327: label465: label475: label1500: for (int m = 0; ; m++)
        {
          StringBuilder localStringBuilder1 = new StringBuilder(".Config.Item");
          Object localObject1;
          label243: String str4;
          Object localObject2;
          String[] arrayOfString;
          if (m == 0)
          {
            localObject1 = "";
            str4 = (String)localMap.get(localObject1 + ".$key");
            aa.d("upload", "key " + str4);
            if (str4 == null)
              break label1195;
            if (!str4.equals("region"))
              break label475;
            StringBuilder localStringBuilder2 = new StringBuilder(".Config.Item");
            if (m != 0)
              break label465;
            localObject2 = "";
            locald2.cxZ = ((String)localMap.get(localObject2));
            if ((locald2.cxZ == null) || (locald2.cxZ.length() <= 0))
              continue;
            arrayOfString = locald2.cxZ.split(";");
            locald2.cyk = new ArrayList();
            if ((arrayOfString == null) || (arrayOfString.length <= 0))
              continue;
          }
          for (int n = 0; ; n++)
          {
            if (n >= arrayOfString.length)
              break label1500;
            if ((arrayOfString[n] != null) && (arrayOfString[n].length() > 0))
            {
              locald2.cyk.add(arrayOfString[n]);
              continue;
              localObject1 = Integer.valueOf(m);
              break label243;
              localObject2 = Integer.valueOf(m);
              break label327;
              if (str4.equals("sex"))
              {
                StringBuilder localStringBuilder3 = new StringBuilder(".Config.Item");
                if (m == 0);
                for (Object localObject3 = ""; ; localObject3 = Integer.valueOf(m))
                {
                  locald2.bTN = cj.getInt((String)localMap.get(localObject3), 0);
                  break;
                }
              }
              if (str4.equals("rate"))
              {
                StringBuilder localStringBuilder4 = new StringBuilder(".Config.Item");
                if (m == 0);
                for (Object localObject4 = ""; ; localObject4 = Integer.valueOf(m))
                {
                  locald2.cya = cj.getInt((String)localMap.get(localObject4), 0);
                  break;
                }
              }
              if (str4.equals("minsize"))
              {
                StringBuilder localStringBuilder5 = new StringBuilder(".Config.Item");
                if (m == 0);
                for (Object localObject5 = ""; ; localObject5 = Integer.valueOf(m))
                {
                  locald2.cye = cj.getInt((String)localMap.get(localObject5), 0);
                  break;
                }
              }
              if (str4.equals("maxsize"))
              {
                StringBuilder localStringBuilder6 = new StringBuilder(".Config.Item");
                if (m == 0);
                for (Object localObject6 = ""; ; localObject6 = Integer.valueOf(m))
                {
                  locald2.cyf = cj.getInt((String)localMap.get(localObject6), 0);
                  break;
                }
              }
              if (str4.equals("daycount_single"))
              {
                StringBuilder localStringBuilder7 = new StringBuilder(".Config.Item");
                if (m == 0);
                for (Object localObject7 = ""; ; localObject7 = Integer.valueOf(m))
                {
                  locald2.cyg = cj.getInt((String)localMap.get(localObject7), 0);
                  break;
                }
              }
              if (str4.equals("daycount_chatroom"))
              {
                StringBuilder localStringBuilder8 = new StringBuilder(".Config.Item");
                if (m == 0);
                for (Object localObject8 = ""; ; localObject8 = Integer.valueOf(m))
                {
                  locald2.cyh = cj.getInt((String)localMap.get(localObject8), 0);
                  break;
                }
              }
              if (str4.equals("daycount_app"))
              {
                StringBuilder localStringBuilder9 = new StringBuilder(".Config.Item");
                if (m == 0);
                for (Object localObject9 = ""; ; localObject9 = Integer.valueOf(m))
                {
                  locald2.cyi = cj.getInt((String)localMap.get(localObject9), 0);
                  break;
                }
              }
              if (str4.equals("rate_single"))
              {
                StringBuilder localStringBuilder10 = new StringBuilder(".Config.Item");
                if (m == 0);
                for (Object localObject10 = ""; ; localObject10 = Integer.valueOf(m))
                {
                  locald2.cyb = cj.getInt((String)localMap.get(localObject10), 0);
                  break;
                }
              }
              if (str4.equals("rate_chatroom"))
              {
                StringBuilder localStringBuilder11 = new StringBuilder(".Config.Item");
                if (m == 0);
                for (Object localObject11 = ""; ; localObject11 = Integer.valueOf(m))
                {
                  locald2.cyc = cj.getInt((String)localMap.get(localObject11), 0);
                  break;
                }
              }
              if (!str4.equals("rate_app"))
                break label1500;
              StringBuilder localStringBuilder12 = new StringBuilder(".Config.Item");
              if (m == 0);
              for (Object localObject12 = ""; ; localObject12 = Integer.valueOf(m))
              {
                locald2.cyd = cj.getInt((String)localMap.get(localObject12), 0);
                break;
              }
              aa.d("upload", "sex " + locald2.bTN);
              aa.d("upload", "rate_single " + locald2.cyb);
              aa.d("upload", "rate_chatroom " + locald2.cyc);
              aa.d("upload", "rate_app " + locald2.cyd);
              aa.d("upload", "rate " + locald2.cya);
              aa.d("upload", "minsize " + locald2.cye);
              aa.d("upload", "maxsize " + locald2.cyf);
              aa.d("upload", "daycount_single " + locald2.cyg);
              aa.d("upload", "daycount_chatroom " + locald2.cyh);
              aa.d("upload", "daycount_app " + locald2.cyi);
              aa.d("upload", "region " + locald2.cxZ);
              c.CF().f(Integer.valueOf(k), locald2);
              return locald2;
              str3 = str2;
              break;
            }
          }
        }
      }
      catch (Exception localException)
      {
      }
    }
    return null;
  }

  public final boolean CG()
  {
    i locali = v.tJ();
    String str1;
    boolean bool;
    String[] arrayOfString;
    if ("  getRegionCode " + locali != null)
    {
      str1 = locali.rL();
      aa.d("upload", str1);
      String str2 = locali.rL();
      bool = false;
      if (str2 != null)
      {
        int i = str2.length();
        bool = false;
        if (i > 0)
        {
          List localList = this.cyk;
          bool = false;
          if (localList != null)
          {
            int j = this.cyk.size();
            bool = false;
            if (j > 0)
            {
              arrayOfString = str2.split("_");
              bool = false;
              if (arrayOfString != null)
              {
                int k = arrayOfString.length;
                bool = false;
                if (k <= 0);
              }
            }
          }
        }
      }
    }
    for (int m = 0; ; m++)
    {
      int n = arrayOfString.length;
      bool = false;
      if (m < n)
      {
        if ((arrayOfString[m] != null) && (arrayOfString[m].length() > 0))
        {
          Iterator localIterator = this.cyk.iterator();
          do
            if (!localIterator.hasNext())
              break;
          while (!((String)localIterator.next()).trim().toLowerCase().equals(arrayOfString[m].trim().toLowerCase()));
          aa.d("upload", "isInRegion");
          bool = true;
        }
      }
      else
      {
        return bool;
        str1 = "";
        break;
      }
    }
  }

  public final int CH()
  {
    switch (c.cxX)
    {
    default:
      return this.cyb;
    case 0:
      return this.cyb;
    case 1:
      return this.cyc;
    case 2:
    }
    return this.cyd;
  }

  public final boolean CJ()
  {
    aa.d("upload", "type " + c.cxX);
    int i = CI();
    int j = CH();
    Integer localInteger = Integer.valueOf(cj.c((Integer)be.uz().sr().get(16646145)));
    aa.d("upload", "daycount " + CI() + "  count " + localInteger + " rate " + j);
    if (localInteger.intValue() > i);
    while ((j == 0) || (!ba.bt(al.getContext())))
      return false;
    int k = cj.a((Integer)be.uz().sr().get(12290), 0);
    boolean bool;
    if (this.bTN == 0)
      bool = true;
    while (true)
    {
      aa.d("upload", "fitSex " + this.bTN + " " + bool + " " + this.bTN);
      if ((!bool) || (!CG()))
        break;
      int m = this.cyj.nextInt(j);
      aa.d("upload", "luck " + m);
      if (m != j / 2)
        break;
      return true;
      if (this.bTN == k)
        bool = true;
      else
        bool = false;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.af.d
 * JD-Core Version:    0.6.2
 */