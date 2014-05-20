package com.tencent.mm.ui;

import android.util.SparseArray;
import com.tencent.mm.sdk.platformtools.aa;
import info.guardianproject.database.CursorDataItem;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

final class i
  implements n
{
  i(h paramh)
  {
  }

  public final void aEe()
  {
    if (h.a(this.gkP, h.b(this.gkP)))
    {
      HashSet localHashSet = new HashSet(h.b(this.gkP).size());
      Iterator localIterator1 = h.b(this.gkP).values().iterator();
      while (localIterator1.hasNext())
        localHashSet.add(((l)localIterator1.next()).fc);
      aa.i(this.gkP.TAG, "newcursor all event is delete");
      h.c(this.gkP).notifyChange(localHashSet.toArray(), null);
    }
    while (true)
    {
      h.b(this.gkP).clear();
      return;
      if (!h.b(this.gkP).containsKey(this.gkP.gkO))
      {
        long l2 = System.currentTimeMillis();
        SparseArray[] arrayOfSparseArray1 = this.gkP.aDY();
        SparseArray[] arrayOfSparseArray2 = this.gkP.a(new HashSet(h.b(this.gkP).values()), arrayOfSparseArray1);
        String str2 = this.gkP.TAG;
        Object[] arrayOfObject2 = new Object[3];
        arrayOfObject2[0] = Long.valueOf(System.currentTimeMillis() - l2);
        arrayOfObject2[1] = Integer.valueOf(arrayOfSparseArray1[0].size());
        arrayOfObject2[2] = Integer.valueOf(arrayOfSparseArray2[0].size());
        aa.d(str2, "newcursor refreshPosistion last :%d, oldpos size is %d ,newpos size is %d  ", arrayOfObject2);
        Iterator localIterator2 = h.b(this.gkP).values().iterator();
        if (localIterator2.hasNext())
        {
          l locall = (l)localIterator2.next();
          if (locall != null)
            if (locall.gkS != null)
            {
              String str4 = this.gkP.TAG;
              Object[] arrayOfObject4 = new Object[1];
              arrayOfObject4[0] = locall.fc;
              aa.d(str4, "newcursor notify cache update : key : %s ", arrayOfObject4);
            }
          while (true)
          {
            h.c(this.gkP).notifyChange(locall.fc, (CursorDataItem)locall.gkS);
            break;
            aa.e(this.gkP.TAG, "newcursor event is null ! ");
          }
        }
        this.gkP.a(arrayOfSparseArray2);
        String str3 = this.gkP.TAG;
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Integer.valueOf(h.c(this.gkP).getPosistionMaps()[0].size());
        aa.d(str3, "newcursor after resort new pos size :%d  ", arrayOfObject3);
      }
      else
      {
        long l1 = System.currentTimeMillis();
        h.a(this.gkP, new m(this.gkP, this.gkP.aDX()), true, false);
        String str1 = this.gkP.TAG;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Long.valueOf(System.currentTimeMillis() - l1);
        aa.d(str1, "cache unuseful,reset cursor,last : %d", arrayOfObject1);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.i
 * JD-Core Version:    0.6.2
 */