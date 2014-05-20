package com.tencent.map.a.a;

import com.tencent.map.location.ab;
import java.util.ArrayList;
import java.util.Iterator;

public final class d
{
  public String TA = null;
  public String TB = null;
  public String TC = null;
  public String TD = null;
  public String TE = null;
  public String TF = null;
  public String TG = null;
  public ArrayList TH = null;
  public boolean TI = false;
  public int TJ = 0;
  public int TK = -1;
  private long TL = -1L;
  public double Tl = 0.0D;
  public double Tm = 0.0D;
  public int Tn = 1;
  public double To = -1.0D;
  public double Tp = 0.0D;
  public double Tq = 0.0D;
  public double Tr = 0.0D;
  public int Ts = 0;
  public String Tt = null;
  public String Tu = null;
  public String Tv = null;
  public String Tw = null;
  public String Tx = null;
  public String Ty = null;
  public String Tz = null;

  public d()
  {
    this.Tp = 0.0D;
    this.To = 0.0D;
    this.Tm = 0.0D;
    this.Tl = 0.0D;
    this.TA = null;
    this.Tz = null;
    this.Ty = null;
    this.Tx = null;
    this.TI = false;
    this.TL = System.currentTimeMillis();
    this.TJ = 0;
    this.TK = -1;
    this.TH = null;
  }

  public d(d paramd)
  {
    this.Tn = paramd.Tn;
    this.Tl = paramd.Tl;
    this.Tm = paramd.Tm;
    this.To = paramd.To;
    this.Tp = paramd.Tp;
    this.TI = paramd.TI;
    this.Tt = paramd.Tt;
    this.Ts = 0;
    this.Tu = paramd.Tu;
    this.Tv = paramd.Tv;
    this.Tw = paramd.Tw;
    this.Tx = paramd.Tx;
    this.Ty = paramd.Ty;
    this.Tz = paramd.Tz;
    this.TA = paramd.TA;
    this.TB = paramd.TB;
    this.TC = paramd.TC;
    this.TD = paramd.TD;
    this.TE = paramd.TE;
    this.TF = paramd.TF;
    this.TG = paramd.TG;
    this.TL = paramd.TL;
    this.TJ = paramd.TJ;
    this.TK = paramd.TK;
    this.TH = null;
    if (paramd.TH != null)
    {
      this.TH = new ArrayList();
      Iterator localIterator = paramd.TH.iterator();
      while (localIterator.hasNext())
      {
        c localc = (c)localIterator.next();
        this.TH.add(localc);
      }
    }
  }

  public final void ah(String paramString)
  {
    this.Tw = "Unknown";
    this.Tv = "Unknown";
    this.Tu = "Unknown";
    this.Tt = "Unknown";
    if (paramString == null);
    String[] arrayOfString;
    int i;
    do
    {
      do
      {
        return;
        arrayOfString = paramString.split(",");
      }
      while (arrayOfString == null);
      i = arrayOfString.length;
      if (i > 0)
        this.Tt = arrayOfString[0];
      if (i > 1)
        this.Tu = arrayOfString[1];
      if (i == 3)
        this.Tv = arrayOfString[1];
      while (i == 3)
      {
        this.Tw = arrayOfString[2];
        return;
        if (i > 3)
          this.Tv = arrayOfString[2];
      }
    }
    while (i <= 3);
    this.Tw = arrayOfString[3];
  }

  public final String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    StringBuilder localStringBuilder2 = localStringBuilder1.append(this.TK).append(" ").append(this.TJ).append(" ");
    String str1;
    StringBuilder localStringBuilder3;
    if (this.TI)
    {
      str1 = "Mars";
      localStringBuilder3 = localStringBuilder2.append(str1).append(" ");
      if (this.Tn != 0)
        break label424;
    }
    label424: for (String str2 = "GPS"; ; str2 = "Network")
    {
      localStringBuilder3.append(str2).append("\n");
      localStringBuilder1.append(this.Tl).append(" ").append(this.Tm).append("\n");
      localStringBuilder1.append(this.To).append(" ").append(this.Tp).append("\n");
      localStringBuilder1.append(this.Tq).append(" ").append(this.Tr).append("\n");
      if ((this.TK == 3) || (this.TK == 4))
        localStringBuilder1.append(this.Tt).append(" ").append(this.Tu).append(" ").append(this.Tv).append(" ").append(this.Tw).append(" ").append(this.Tx).append(" ").append(this.Ty).append(" ").append(this.Tz).append(" ").append(this.TA).append("\n");
      if ((this.TK != 4) || (this.TH == null))
        break label431;
      localStringBuilder1.append(this.TH.size()).append("\n");
      Iterator localIterator = this.TH.iterator();
      while (localIterator.hasNext())
      {
        c localc = (c)localIterator.next();
        localStringBuilder1.append(localc.Th).append(",").append(localc.Ti).append(",").append(localc.Tj).append(",").append(localc.Tk).append(",").append(localc.Tl).append(",").append(localc.Tm).append("\n");
      }
      str1 = "WGS84";
      break;
    }
    label431: if (this.TK == 7)
    {
      if (this.Ts != 0)
        break label558;
      localStringBuilder1.append(this.Tt).append(" ").append(this.Tu).append(" ").append(this.Tv).append(" ").append(this.Tw).append(" ").append(this.Tx).append(" ").append(this.Ty).append(" ").append(this.Tz).append(" ").append(this.TA).append("\n");
    }
    while (true)
    {
      localStringBuilder1.toString();
      ab.mi();
      return localStringBuilder1.toString();
      label558: if (this.Ts == 1)
        localStringBuilder1.append(this.Tt).append(" ").append(this.TB).append(" ").append(this.TC).append(" ").append(this.TD).append(" ").append(this.TE).append(" ").append(this.TF).append(" ").append(this.TG).append("\n");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.map.a.a.d
 * JD-Core Version:    0.6.2
 */