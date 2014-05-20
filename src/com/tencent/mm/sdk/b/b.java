package com.tencent.mm.sdk.b;

import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import junit.framework.Assert;

public final class b
  implements f
{
  private final HashMap gbU = new HashMap();

  public final void a(e parame, Looper paramLooper)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = parame.getId();
    aa.f("MicroMsg.EventPoolImpl", "publish %s", arrayOfObject);
    Assert.assertNotNull("EventPoolImpl.asyncPublish event", parame);
    Assert.assertNotNull("EventPoolImpl.asyncPublish looper", paramLooper);
    new Handler(paramLooper).post(new c(this, parame));
  }

  public final boolean a(String paramString, g paramg)
  {
    try
    {
      aa.f("MicroMsg.EventPoolImpl", "addListener %s", new Object[] { paramString });
      Assert.assertNotNull("EventPoolImpl.add", paramg);
      LinkedList localLinkedList = (LinkedList)this.gbU.get(paramString);
      if (localLinkedList == null)
      {
        HashMap localHashMap = this.gbU;
        localLinkedList = new LinkedList();
        localHashMap.put(paramString, localLinkedList);
      }
      boolean bool = localLinkedList.add(paramg);
      return bool;
    }
    finally
    {
    }
  }

  public final boolean b(String paramString, g paramg)
  {
    try
    {
      aa.f("MicroMsg.EventPoolImpl", "removeListener %s", new Object[] { paramString });
      Assert.assertNotNull("EventPoolImpl.remove", paramg);
      LinkedList localLinkedList = (LinkedList)this.gbU.get(paramString);
      if (localLinkedList == null);
      boolean bool1;
      for (boolean bool2 = false; ; bool2 = bool1)
      {
        return bool2;
        bool1 = localLinkedList.remove(paramg);
      }
    }
    finally
    {
    }
  }

  public final boolean f(e parame)
  {
    try
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = parame.getId();
      aa.f("MicroMsg.EventPoolImpl", "publish %s", arrayOfObject1);
      Assert.assertNotNull("EventPoolImpl.publish", parame);
      String str = parame.getId();
      LinkedList localLinkedList = (LinkedList)this.gbU.get(str);
      if (localLinkedList == null)
      {
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = str;
        arrayOfObject2[1] = cj.azV();
        aa.c("MicroMsg.EventPoolImpl", "No listener for this event %s, Stack: %s.", arrayOfObject2);
      }
      for (boolean bool = false; ; bool = true)
      {
        return bool;
        if (parame.ayI())
          Collections.sort(localLinkedList, new d(this));
        Iterator localIterator = localLinkedList.iterator();
        while ((localIterator.hasNext()) && ((!((g)localIterator.next()).a(parame)) || (!parame.ayI())));
        if (parame.gbX != null)
          parame.gbX.run();
      }
    }
    finally
    {
    }
  }

  public final boolean g(e parame)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = parame.getId();
    aa.f("MicroMsg.EventPoolImpl", "hasListener %s", arrayOfObject);
    Assert.assertNotNull("EventPoolImpl.hasListener", parame);
    String str = parame.getId();
    LinkedList localLinkedList = (LinkedList)this.gbU.get(str);
    return (localLinkedList != null) && (localLinkedList.size() > 0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.b.b
 * JD-Core Version:    0.6.2
 */