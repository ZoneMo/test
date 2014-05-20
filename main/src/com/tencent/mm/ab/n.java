package com.tencent.mm.ab;

import com.tencent.mm.a.c;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.ct;
import com.tencent.mm.protocal.a.mi;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Iterator;
import java.util.LinkedList;

public final class n extends com.tencent.mm.sdk.b.g
{
  public final boolean a(com.tencent.mm.sdk.b.e parame)
  {
    int i;
    int j;
    if ((be.se()) && (!be.uG()))
    {
      i = 1;
      if (i == 0)
        break label326;
      if (1000L * cj.M(cj.a((Long)be.uz().sr().get(68097), 0L)) <= 3600000L)
        break label108;
      j = 1;
    }
    LinkedList localLinkedList;
    while (true)
      if (j != 0)
      {
        localLinkedList = new LinkedList();
        byte[] arrayOfByte = c.h(be.uz().sW() + "eggresult.rep", 0, -1);
        if (arrayOfByte == null)
        {
          return false;
          i = 0;
          break;
          label108: j = 0;
          continue;
        }
        try
        {
          Iterator localIterator = new g().u(arrayOfByte).cvR.iterator();
          while (localIterator.hasNext())
          {
            f localf = (f)localIterator.next();
            if (localf.cvP != 0)
            {
              mi localmi1 = new mi();
              localmi1.fAs = 17;
              localmi1.fNk = (localf.cvK + "," + localf.cvP);
              localLinkedList.add(localmi1);
            }
            if (localf.cvQ != 0)
            {
              mi localmi2 = new mi();
              localmi2.fAs = 18;
              localmi2.fNk = (localf.cvK + "," + localf.cvQ);
              localLinkedList.add(localmi2);
            }
          }
        }
        catch (Exception localException)
        {
        }
      }
    while (true)
    {
      if (!localLinkedList.isEmpty())
      {
        ct.a(localLinkedList);
        be.uz().sr().set(68097, Long.valueOf(cj.FC()));
      }
      label326: aa.d("MicroMsg.PostTaskReportEgg", "report egg done");
      return false;
      c.deleteFile(be.uz().sW() + "eggresult.rep");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ab.n
 * JD-Core Version:    0.6.2
 */