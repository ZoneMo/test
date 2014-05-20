package com.tencent.mm.sdk.e;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Vector;

public abstract class am
{
  private int gfG = 0;
  private final Hashtable gfH = new Hashtable();
  private final HashSet gfI = new HashSet();

  private Vector aAa()
  {
    try
    {
      Vector localVector = new Vector();
      localVector.addAll(this.gfH.keySet());
      return localVector;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void aAb()
  {
    Vector localVector = aAa();
    if ((localVector == null) || (localVector.size() <= 0))
      return;
    while (true)
    {
      Object localObject2;
      Object localObject4;
      synchronized (this.gfI)
      {
        ArrayList localArrayList = new ArrayList(this.gfI);
        this.gfI.clear();
        HashMap localHashMap = new HashMap();
        Iterator localIterator1 = localVector.iterator();
        continue;
        if (!localIterator1.hasNext())
          break;
        localObject2 = localIterator1.next();
        Object localObject3 = this.gfH.get(localObject2);
        Iterator localIterator2 = localArrayList.iterator();
        if (localIterator2.hasNext())
        {
          localObject4 = localIterator2.next();
          if ((localObject4 != null) && (localObject3 != null))
            if ((localObject3 instanceof Looper))
            {
              Looper localLooper = (Looper)localObject3;
              Handler localHandler = (Handler)localHashMap.get(localLooper);
              if (localHandler == null)
              {
                localHandler = new Handler(localLooper);
                localHashMap.put(localLooper, localHandler);
              }
              localHandler.post(new an(this, localObject2, localObject4));
            }
        }
      }
    }
  }

  public final void Ei()
  {
    if (this.gfG > 0);
    for (int i = 1; ; i = 0)
    {
      if (i == 0)
        aAb();
      return;
    }
  }

  public void a(Object paramObject, Looper paramLooper)
  {
    try
    {
      if (!this.gfH.containsKey(paramObject))
      {
        if (paramLooper == null)
          break label30;
        this.gfH.put(paramObject, paramLooper);
      }
      while (true)
      {
        return;
        label30: this.gfH.put(paramObject, new Object());
      }
    }
    finally
    {
    }
  }

  public final boolean ah(Object paramObject)
  {
    synchronized (this.gfI)
    {
      boolean bool = this.gfI.add(paramObject);
      return bool;
    }
  }

  protected abstract void i(Object paramObject1, Object paramObject2);

  public final void lock()
  {
    this.gfG = (1 + this.gfG);
  }

  public final void remove(Object paramObject)
  {
    try
    {
      this.gfH.remove(paramObject);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void removeAll()
  {
    try
    {
      this.gfH.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void unlock()
  {
    this.gfG = (-1 + this.gfG);
    if (this.gfG <= 0)
    {
      this.gfG = 0;
      aAb();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.e.am
 * JD-Core Version:    0.6.2
 */