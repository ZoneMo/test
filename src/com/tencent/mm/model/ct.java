package com.tencent.mm.model;

import com.tencent.mm.protocal.a.mi;
import com.tencent.mm.protocal.a.mj;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.az;
import com.tencent.mm.storage.e;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public final class ct
{
  public static final int cjP = i;
  public static final int cjQ = i + 1;
  public static final int cjR = 2 + cjP;
  private static ct cjU;
  private long cjS = 0L;
  private Map cjT = new HashMap();

  static
  {
    int i = "kv_key_start".hashCode();
  }

  private ct()
  {
    this.cjT.put(Integer.valueOf(cjQ), new cu(this));
    this.cjT.put(Integer.valueOf(cjR), new df(this));
    this.cjT.put(Integer.valueOf(24), new dj(this));
    this.cjT.put(Integer.valueOf(25), new dk(this));
    this.cjT.put(Integer.valueOf(26), new dl(this));
    this.cjT.put(Integer.valueOf(10071), new dm(this));
    this.cjT.put(Integer.valueOf(10076), new dn(this));
    this.cjT.put(Integer.valueOf(19), new do(this));
    this.cjT.put(Integer.valueOf(10112), new dp(this));
    this.cjT.put(Integer.valueOf(10113), new cv(this));
    this.cjT.put(Integer.valueOf(10114), new cw(this));
    this.cjT.put(Integer.valueOf(10115), new cx(this));
    this.cjT.put(Integer.valueOf(10240), new cy(this));
    this.cjT.put(Integer.valueOf(10241), new cz(this));
    this.cjT.put(Integer.valueOf(15), new da(this));
    this.cjT.put(Integer.valueOf(16), new db(this));
    this.cjT.put(Integer.valueOf(27), new dc(this));
    this.cjT.put(Integer.valueOf(38), new dd(this));
    this.cjT.put(Integer.valueOf(10090), new de(this));
    this.cjT.put(Integer.valueOf(10237), new dg(this));
    this.cjT.put(Integer.valueOf(10238), new dh(this));
    this.cjT.put(Integer.valueOf(10239), new di(this));
  }

  private static void a(cs paramcs)
  {
    if ((paramcs != null) && (be.uz() != null) && (be.se()) && (be.uz().sr() != null) && (!be.uG()));
    try
    {
      be.uz().sr().set(8215, cj.cp(paramcs.toByteArray()));
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  public static void a(LinkedList paramLinkedList)
  {
    mj localmj;
    int i;
    if ((be.se()) && (!be.uG()))
    {
      localmj = new mj();
      localmj.fAD = paramLinkedList;
      if (paramLinkedList == null)
        break label62;
      i = paramLinkedList.size();
    }
    while (true)
    {
      localmj.fAC = i;
      try
      {
        be.uz().st().a(new az(36, localmj.toByteArray()));
        return;
        label62: i = 0;
      }
      catch (IOException localIOException)
      {
      }
    }
  }

  public static void e(int paramInt, String paramString)
  {
    LinkedList localLinkedList = new LinkedList();
    mi localmi = new mi();
    localmi.fAs = paramInt;
    localmi.fNk = paramString;
    localLinkedList.add(localmi);
    a(localLinkedList);
  }

  public static ct vB()
  {
    if (cjU == null)
      cjU = new ct();
    return cjU;
  }

  private static cs vD()
  {
    if ((be.uz() != null) && (be.se()) && (!be.uG()) && (be.uz().sr() != null))
    {
      byte[] arrayOfByte = cj.ib((String)be.uz().sr().get(8215));
      if ((arrayOfByte == null) || (arrayOfByte.length <= 0))
        return new cs();
      try
      {
        cs localcs = new cs();
        localcs.p(arrayOfByte);
        return localcs;
      }
      catch (IOException localIOException)
      {
      }
    }
    return new cs();
  }

  public final void a(int paramInt, Object[] paramArrayOfObject)
  {
    dq localdq = (dq)this.cjT.get(Integer.valueOf(paramInt));
    if (localdq == null)
      return;
    cs localcs = vD();
    if (localcs != null)
    {
      Iterator localIterator = localcs.cjO.iterator();
      while (localIterator.hasNext())
      {
        cr localcr = (cr)localIterator.next();
        if (localcr.key == paramInt)
          localdq.a(localcr, paramArrayOfObject);
      }
    }
    while (true)
    {
      a(localcs);
      return;
      localcs.cjO.add(localdq.b(paramInt, paramArrayOfObject));
    }
  }

  public final void vC()
  {
    if (System.currentTimeMillis() - this.cjS < 60000L)
      return;
    this.cjS = System.currentTimeMillis();
    while (true)
    {
      try
      {
        cs localcs = vD();
        i = 0;
        Iterator localIterator = localcs.cjO.iterator();
        if (localIterator.hasNext())
        {
          cr localcr = (cr)localIterator.next();
          dq localdq = (dq)this.cjT.get(Integer.valueOf(localcr.key));
          if ((localdq != null) && (localdq.a(localcr)))
          {
            j = 1;
            break label119;
          }
        }
        else
        {
          if (i == 0)
            break;
          a(localcs);
          return;
        }
      }
      catch (Exception localException)
      {
        return;
      }
      int j = i;
      label119: int i = j;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.ct
 * JD-Core Version:    0.6.2
 */