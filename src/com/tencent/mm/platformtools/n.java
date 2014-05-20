package com.tencent.mm.platformtools;

import android.util.SparseArray;
import com.tencent.mm.ap.k;
import com.tencent.mm.model.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import junit.framework.Assert;

public final class n
{
  private static SparseArray cGt = new SparseArray();

  public static final o a(int paramInt, String paramString, HashMap paramHashMap)
  {
    boolean bool1 = true;
    if ((!cj.hX(paramString)) && (paramHashMap != null));
    int i;
    o localo;
    for (boolean bool2 = bool1; ; bool2 = false)
    {
      Assert.assertTrue(bool2);
      i = paramString.hashCode();
      localo = (o)cGt.get(i);
      if (localo != null)
        break label99;
      localo = new o(paramString);
      if (localo.b(paramString, paramHashMap))
        break;
      throw new a((byte)0);
    }
    cGt.put(i, localo);
    while (true)
    {
      localo.eM(paramInt);
      return localo;
      label99: if (!localo.cGu);
      long l;
      while (true)
      {
        Assert.assertTrue(bool1);
        l = localo.aDB();
        Iterator localIterator = paramHashMap.values().iterator();
        while (true)
          if (localIterator.hasNext())
          {
            String[] arrayOfString = ((k)localIterator.next()).oe();
            int j = arrayOfString.length;
            int k = 0;
            label164: if (k < j)
            {
              String str = arrayOfString[k];
              aa.d("MicroMsg.GeneralDBHelper", "init sql:" + str);
              try
              {
                localo.aQ(null, str);
                k++;
                break label164;
                bool1 = false;
              }
              catch (Exception localException)
              {
                while (true)
                  Assert.assertTrue("CreateTable failed:[" + str + "][" + localException.getMessage() + "]", false);
              }
            }
          }
      }
      localo.cb(l);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.n
 * JD-Core Version:    0.6.2
 */