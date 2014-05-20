package com.tencent.mm.m;

import com.tencent.mm.sdk.platformtools.aa;
import java.lang.ref.WeakReference;
import java.util.Vector;

final class o
  implements p
{
  o(m paramm)
  {
  }

  public final void ei(String paramString)
  {
    Vector localVector1 = new Vector();
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(m.a(this.ckI).size());
    arrayOfObject[2] = Integer.valueOf(m.a(this.ckI).size());
    aa.e("MicroMsg.AvatarStorage", "notifyChanged user:%s clonesize:%d watchers:%d", arrayOfObject);
    Vector localVector2 = new Vector();
    Vector localVector3 = m.a(this.ckI);
    for (int i = 0; ; i++)
    {
      try
      {
        if (i < m.a(this.ckI).size())
        {
          WeakReference localWeakReference = (WeakReference)m.a(this.ckI).get(i);
          if (localWeakReference == null)
            continue;
          p localp = (p)localWeakReference.get();
          if (localp != null)
            localVector2.add(localp);
          else
            localVector1.add(localWeakReference);
        }
      }
      finally
      {
      }
      m.a(this.ckI).removeAll(localVector1);
      for (int j = 0; j < localVector2.size(); j++)
        ((p)localVector2.get(j)).ei(paramString);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.o
 * JD-Core Version:    0.6.2
 */