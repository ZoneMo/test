package com.tencent.mm.plugin.d.c;

import android.util.SparseArray;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;

public final class e
  implements l
{
  public static final int cjP = i;
  public static final int cjQ = i + 1;
  public static final int cjR = 2 + cjP;
  private static com.tencent.mm.plugin.d.a.g dZC = null;
  private SparseArray dZB = new SparseArray();
  f dZD = new g(1800L);
  f dZE = new g(3600L);
  f dZF = new g(86400L);
  f dZG = new g(-9223372036854775808L);
  private Object lock = new Object();

  static
  {
    int i = "kv_key_start".hashCode();
  }

  public e()
  {
    this.dZB.put(10222, this.dZG);
    this.dZB.put(10221, this.dZG);
    this.dZB.put(10259, this.dZG);
    this.dZB.put(9, this.dZG);
    this.dZB.put(10, this.dZG);
    this.dZB.put(10090, this.dZG);
    this.dZB.put(10170, this.dZG);
    this.dZB.put(10169, this.dZG);
    this.dZB.put(10108, this.dZG);
    this.dZB.put(10109, this.dZG);
    this.dZB.put(10110, this.dZG);
    this.dZB.put(10111, this.dZG);
    this.dZB.put(cjQ, this.dZE);
    this.dZB.put(cjR, this.dZE);
    this.dZB.put(24, this.dZE);
    this.dZB.put(26, this.dZE);
    this.dZB.put(10071, this.dZF);
    this.dZB.put(10076, this.dZE);
    this.dZB.put(19, this.dZF);
    this.dZB.put(10112, this.dZD);
    this.dZB.put(10113, this.dZD);
    this.dZB.put(10114, this.dZD);
    this.dZB.put(10115, this.dZD);
    this.dZB.put(10240, this.dZD);
    this.dZB.put(10241, this.dZD);
    this.dZB.put(15, this.dZD);
    this.dZB.put(16, this.dZD);
    this.dZB.put(27, this.dZE);
    this.dZB.put(38, this.dZD);
  }

  private static String Zb()
  {
    if (be.se())
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = be.uz().sS();
      arrayOfObject[1] = com.tencent.mm.a.f.h("__file_kvstat__".getBytes());
      return String.format("%s/%s", arrayOfObject);
    }
    return "";
  }

  static com.tencent.mm.plugin.d.a.f a(com.tencent.mm.plugin.d.a.g paramg, com.tencent.mm.plugin.d.a.f paramf)
  {
    if ((paramg == null) || (paramf == null))
    {
      aa.w("MicroMsg.KVReportHelper", "get item error, list or info is null");
      return null;
    }
    Iterator localIterator = paramg.dZk.iterator();
    while (localIterator.hasNext())
    {
      com.tencent.mm.plugin.d.a.f localf = (com.tencent.mm.plugin.d.a.f)localIterator.next();
      if (localf.YY() == paramf.YY())
        return localf;
    }
    return null;
  }

  static com.tencent.mm.plugin.d.a.g bb(boolean paramBoolean)
  {
    boolean bool = true;
    Object localObject;
    if (dZC != null)
    {
      Object[] arrayOfObject3 = new Object[bool];
      arrayOfObject3[0] = Integer.valueOf(dZC.dZc);
      aa.f("MicroMsg.KVReportHelper", "memlist not null, size is %d", arrayOfObject3);
      localObject = dZC;
      return localObject;
    }
    String str = Zb();
    Object[] arrayOfObject1 = new Object[bool];
    arrayOfObject1[0] = str;
    aa.e("MicroMsg.KVReportHelper", "history file name = %s", arrayOfObject1);
    byte[] arrayOfByte = cj.lF(str);
    Object[] arrayOfObject2 = new Object[bool];
    if (arrayOfByte == null)
    {
      arrayOfObject2[0] = Boolean.valueOf(bool);
      aa.e("MicroMsg.KVReportHelper", "history data is null ? %B", arrayOfObject2);
      if ((arrayOfByte == null) || (arrayOfByte.length <= 0))
        break label191;
    }
    while (true)
    {
      try
      {
        com.tencent.mm.plugin.d.a.g localg = new com.tencent.mm.plugin.d.a.g().S(arrayOfByte);
        localObject = localg;
        if (localObject == null)
          localObject = new com.tencent.mm.plugin.d.a.g();
        dZC = (com.tencent.mm.plugin.d.a.g)localObject;
        if ((!paramBoolean) || (p.mk(str)))
          break;
        cj.deleteFile(str);
        return localObject;
        bool = false;
      }
      catch (Exception localException)
      {
        if (!p.mk(str))
          cj.deleteFile(str);
        localObject = null;
        continue;
      }
      label191: localObject = null;
    }
  }

  public final x Za()
  {
    LinkedList localLinkedList;
    synchronized (this.lock)
    {
      com.tencent.mm.plugin.d.a.g localg = bb(true);
      dZC = new com.tencent.mm.plugin.d.a.g();
      if ((localg != null) && (localg.dZc > 0))
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(localg.dZc);
        aa.f("MicroMsg.KVReportHelper", "kvList.size is %d", arrayOfObject);
        localLinkedList = new LinkedList();
        Iterator localIterator = localg.dZk.iterator();
        if (localIterator.hasNext())
          localLinkedList.add((com.tencent.mm.plugin.d.a.f)localIterator.next());
      }
    }
    aa.d("MicroMsg.KVReportHelper", "kvList.size is 0, return null");
    return null;
  }

  public final int b(com.tencent.mm.plugin.d.a.e parame)
  {
    if ((parame == null) || (parame.getType() != 1))
      return 0;
    com.tencent.mm.plugin.d.a.f localf = (com.tencent.mm.plugin.d.a.f)parame;
    int i = localf.fNl;
    switch (localf.YX())
    {
    default:
      this.dZB.put(i, this.dZG);
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      f localf1 = (f)this.dZB.get(localf.fNl);
      if (localf1 == null)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(localf.fNl);
        aa.c("MicroMsg.KVReportHelper", "logID = %d, handler is null, use recordNow handler", arrayOfObject);
        localf1 = this.dZG;
      }
      synchronized (this.lock)
      {
        f.a(localf1, localf);
        return 1;
        this.dZB.put(i, this.dZF);
        continue;
        this.dZB.put(i, this.dZE);
        continue;
        this.dZB.put(i, this.dZD);
      }
    }
  }

  public final void clear()
  {
    synchronized (this.lock)
    {
      dZC = null;
      return;
    }
  }

  public final void save()
  {
    synchronized (this.lock)
    {
      com.tencent.mm.plugin.d.a.g localg = dZC;
      if (localg != null);
      try
      {
        aa.f("MicroMsg.KVReportHelper", "kvList = %s", new Object[] { localg });
        String str = Zb();
        aa.f("MicroMsg.KVReportHelper", "history file name = %s", new Object[] { str });
        if (localg.dZc > 0)
        {
          cj.e(str, localg.toByteArray());
          aa.d("MicroMsg.KVReportHelper", "save kvstat list ok!");
        }
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(localg.dZc);
        aa.f("MicroMsg.KVReportHelper", "list size is %d", arrayOfObject);
        return;
      }
      catch (IOException localIOException)
      {
        while (true)
          aa.w("MicroMsg.KVReportHelper", "save error");
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.d.c.e
 * JD-Core Version:    0.6.2
 */