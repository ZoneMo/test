package com.tencent.mm.storage;

import com.tencent.mm.a.c;
import com.tencent.mm.aq.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

final class t
{
  protected final long ggL = 86400L;
  private a ggM = new a();

  public t()
  {
    byte[] arrayOfByte = c.h(be.uz().sW() + "checkmsgid.ini", 0, -1);
    if (!cj.A(arrayOfByte));
    try
    {
      this.ggM.cu(arrayOfByte);
      if (aAT())
        aAS();
      return;
    }
    catch (IOException localIOException)
    {
      aa.w("MicroMsg.DelSvrIdMgr", "DelSvrIDs parse Error");
    }
  }

  private void a(int paramInt1, int paramInt2, long paramLong, boolean paramBoolean)
  {
    if (paramInt2 == 0)
      return;
    if (paramBoolean)
      aAT();
    int i = paramInt1 - (int)(paramLong / 86400L);
    switch (i)
    {
    default:
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i);
      aa.b("MicroMsg.DelSvrIdMgr", "should not add to thease lists, dayIndex:%d", arrayOfObject);
    case 0:
    case 1:
    case 2:
    }
    while (paramBoolean)
    {
      aAS();
      return;
      this.ggM.gjL.add(Integer.valueOf(paramInt2));
      continue;
      this.ggM.gjM.add(Integer.valueOf(paramInt2));
      continue;
      this.ggM.gjN.add(Integer.valueOf(paramInt2));
    }
  }

  private void aAS()
  {
    try
    {
      byte[] arrayOfByte = this.ggM.toByteArray();
      c.a(be.uz().sW() + "checkmsgid.ini", arrayOfByte, arrayOfByte.length);
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  private boolean aAT()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(this.ggM.gjK);
    arrayOfObject[1] = Integer.valueOf(this.ggM.gjL.size());
    arrayOfObject[2] = Integer.valueOf(this.ggM.gjM.size());
    arrayOfObject[3] = Integer.valueOf(this.ggM.gjN.size());
    aa.f("MicroMsg.DelSvrIdMgr", "checkOldData todayIndex:%d, t0Size:%d, t1Size:%d, t2Size:%d", arrayOfObject);
    int i = (int)(cj.FC() / 86400L);
    int j = i - this.ggM.gjK;
    this.ggM.gjK = i;
    boolean bool = false;
    switch (j)
    {
    default:
      this.ggM.gjN.clear();
      this.ggM.gjM.clear();
      this.ggM.gjL.clear();
      bool = true;
    case 0:
      return bool;
    case 1:
      this.ggM.gjN = this.ggM.gjM;
      this.ggM.gjM = this.ggM.gjL;
      this.ggM.gjL.clear();
      return true;
    case 2:
    }
    this.ggM.gjN = this.ggM.gjL;
    this.ggM.gjM.clear();
    this.ggM.gjL.clear();
    return true;
  }

  protected final void a(int paramInt1, int paramInt2, long paramLong)
  {
    a(paramInt1, paramInt2, paramLong, true);
  }

  protected final void c(List paramList1, List paramList2)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramList1.size());
    aa.d("MicroMsg.DelSvrIdMgr", "add size:%d", arrayOfObject);
    aAT();
    int i = (int)(cj.FC() / 86400L);
    for (int j = 0; j < paramList1.size(); j++)
      a(i, ((Integer)paramList1.get(j)).intValue(), ((Long)paramList2.get(j)).longValue(), false);
    aAS();
  }

  protected final boolean lQ(int paramInt)
  {
    if (aAT())
      aAS();
    Iterator localIterator1 = this.ggM.gjL.iterator();
    while (localIterator1.hasNext())
      if (((Integer)localIterator1.next()).intValue() == paramInt)
        return true;
    Iterator localIterator2 = this.ggM.gjM.iterator();
    while (localIterator2.hasNext())
      if (((Integer)localIterator2.next()).intValue() == paramInt)
        return true;
    Iterator localIterator3 = this.ggM.gjN.iterator();
    while (localIterator3.hasNext())
      if (((Integer)localIterator3.next()).intValue() == paramInt)
        return true;
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.t
 * JD-Core Version:    0.6.2
 */