package com.tencent.mm.plugin.search.model;

import android.database.Cursor;
import java.util.HashSet;
import java.util.Iterator;

final class l extends af
{
  private int ehd = 0;
  private int ehe = 0;

  private l(b paramb)
  {
  }

  public final boolean execute()
  {
    HashSet localHashSet = new HashSet();
    Cursor localCursor1 = b.a(this.egV).a(a.egz, false, true, false, false, false);
    while (localCursor1.moveToNext())
      localHashSet.add(Long.valueOf(localCursor1.getLong(0)));
    localCursor1.close();
    if (Thread.interrupted())
      throw new InterruptedException();
    Cursor localCursor2 = b.c(this.egV).rawQuery("SELECT id, realname, realnamequanpin, realnamepyinitial, nickname, nicknamequanpin, nicknamepyinitial, username, status FROM addr_upload WHERE type=0;", null);
    int i = 50;
    while (localCursor2.moveToNext())
    {
      if (Thread.interrupted())
      {
        localCursor2.close();
        b.a(this.egV).commit();
        throw new InterruptedException();
      }
      i locali = new i();
      locali.id = localCursor2.getLong(0);
      locali.cqh = localCursor2.getString(1);
      locali.egX = localCursor2.getString(2);
      locali.egY = localCursor2.getString(3);
      locali.cie = localCursor2.getString(4);
      locali.egZ = localCursor2.getString(5);
      locali.eha = localCursor2.getString(6);
      locali.bPx = localCursor2.getString(7);
      locali.status = localCursor2.getInt(8);
      locali.type = 0;
      if (locali.status == 65536)
        locali.status = 0;
      if ((b.a(locali)) && (!localHashSet.remove(Long.valueOf(locali.id))))
      {
        if (i >= 50)
        {
          b.a(this.egV).commit();
          b.a(this.egV).beginTransaction();
          i = 0;
        }
        i += b.a(this.egV, locali);
        this.ehd = (1 + this.ehd);
      }
    }
    localCursor2.close();
    b.a(this.egV).commit();
    Iterator localIterator = localHashSet.iterator();
    int k;
    for (int j = 50; localIterator.hasNext(); j = k)
    {
      long l = ((Long)localIterator.next()).longValue();
      if (j >= 50)
      {
        b.a(this.egV).commit();
        b.a(this.egV).beginTransaction();
        j = 0;
      }
      b.a(this.egV).a(a.egz, l);
      k = j + 1;
      this.ehe = (1 + this.ehe);
      b.a(this.egV).b(a.egz, l);
    }
    b.a(this.egV).commit();
    return true;
  }

  public final String toString()
  {
    return "BuildFriendIndex [new: " + this.ehd + ", removed: " + this.ehe + "]";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.l
 * JD-Core Version:    0.6.2
 */