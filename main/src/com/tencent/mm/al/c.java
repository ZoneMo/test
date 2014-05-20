package com.tencent.mm.al;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.bi;
import com.tencent.mm.storage.bj;
import com.tencent.mm.storage.e;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class c
{
  public static void avz()
  {
    int i;
    if ((be.se()) && (!be.uG()))
      i = 1;
    while ((i != 0) && (oQ()))
    {
      String str = (String)be.uz().sr().get(77829, null);
      if (str != null)
      {
        Map localMap = d.rr(str);
        if ((localMap != null) && (localMap.size() > 0))
        {
          LinkedList localLinkedList = new LinkedList();
          Iterator localIterator = localMap.entrySet().iterator();
          while (true)
            if (localIterator.hasNext())
            {
              Map.Entry localEntry = (Map.Entry)localIterator.next();
              d locald = (d)localEntry.getValue();
              if (locald != null)
              {
                int j = locald.cN;
                int k = locald.cvP;
                if ((j > 0) || (k > 0))
                  localLinkedList.add(new bj(10166, (String)localEntry.getKey() + "," + j + "," + k));
                aa.d("PostTaskTenMinutesLogicState", "report PostTaskTenMinutesLogicState  name " + (String)localEntry.getKey() + " " + j + "  " + k);
                continue;
                i = 0;
                break;
              }
            }
          if (!localLinkedList.isEmpty())
          {
            be.uz().st().a(new bi(localLinkedList));
            be.uz().sr().set(77829, null);
          }
        }
      }
    }
    be.uz().sr().set(77828, Long.valueOf(cj.FC()));
    aa.d("PostTaskTenMinutesLogicState", "report PostTaskTenMinutesLogicState done ");
  }

  public static boolean oQ()
  {
    return 1000L * cj.M(cj.a((Long)be.uz().sr().get(77828), 0L)) > 1800000L;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.al.c
 * JD-Core Version:    0.6.2
 */