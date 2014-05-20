package com.tencent.mm.plugin.search.model;

import android.database.Cursor;
import android.util.Pair;
import com.tencent.mm.ap.i;
import java.util.HashSet;
import java.util.Iterator;

final class aj extends af
{
  private int ehb = 0;
  private int ehc = 0;

  private aj(ag paramag)
  {
  }

  public final boolean execute()
  {
    HashSet localHashSet = new HashSet();
    Cursor localCursor1 = ag.a(this.ehV).a(a.egw, false, true, false, true, false);
    while (localCursor1.moveToNext())
    {
      long l3 = localCursor1.getLong(0);
      long l4 = localCursor1.getLong(1);
      localHashSet.add(new Pair(Long.valueOf(l3), Long.valueOf(l4)));
    }
    localCursor1.close();
    if (Thread.interrupted())
      throw new InterruptedException();
    int i = 2147483647;
    int j = 0;
    int k = 50;
    Cursor localCursor2;
    if (i >= 50)
    {
      i = 0;
      String str1 = "SELECT msgId, talker, createTime, content, type FROM message ORDER BY createTime DESC LIMIT 50 OFFSET " + j + ";";
      localCursor2 = ag.b(this.ehV).rawQuery(str1, null);
    }
    while (true)
    {
      label156: int i2;
      long l1;
      long l2;
      if (localCursor2.moveToNext())
      {
        i2 = i + 1;
        if (Thread.interrupted())
        {
          localCursor2.close();
          ag.a(this.ehV).commit();
          throw new InterruptedException();
        }
        if (localCursor2.getInt(4) != 1)
          break label548;
        l1 = localCursor2.getLong(0);
        l2 = localCursor2.getLong(2);
        if (localHashSet.remove(new Pair(Long.valueOf(l1), Long.valueOf(l2))))
          break label548;
        if (k < 50)
          break label541;
        ag.a(this.ehV).commit();
        ag.a(this.ehV).beginTransaction();
      }
      label524: label541: for (int i3 = 0; ; i3 = k)
      {
        String str2 = localCursor2.getString(1);
        String str3 = localCursor2.getString(3);
        if (str3 != null)
        {
          String str4 = ag.al(str2, str3);
          ag.a(this.ehV).a(65536, 0, l1, str2, l2, str4);
          int i4 = i3 + 1;
          this.ehb = (1 + this.ehb);
          k = i4;
          i = i2;
          break label156;
          localCursor2.close();
          j += 50;
          break;
          ag.a(this.ehV).commit();
          Iterator localIterator = localHashSet.iterator();
          int m = 50;
          Pair localPair;
          if (localIterator.hasNext())
          {
            localPair = (Pair)localIterator.next();
            if (m < 50)
              break label524;
            ag.a(this.ehV).commit();
            ag.a(this.ehV).beginTransaction();
          }
          for (int n = 0; ; n = m)
          {
            ag.a(this.ehV).a(a.egw, ((Long)localPair.first).longValue(), ((Long)localPair.second).longValue());
            int i1 = n + 1;
            this.ehc = (1 + this.ehc);
            m = i1;
            break;
            ag.a(this.ehV).commit();
            return true;
          }
        }
        i = i2;
        k = i3;
        break label156;
      }
      label548: i = i2;
    }
  }

  public final String toString()
  {
    return "BuildMessageIndex [new: " + this.ehb + ", removed: " + this.ehc + "]";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.aj
 * JD-Core Version:    0.6.2
 */