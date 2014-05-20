package com.tencent.mm.plugin.search.model;

import android.database.Cursor;
import com.tencent.mm.ap.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

final class k extends af
{
  private int ehd = 0;
  private int ehe = 0;
  private int ehf = 0;

  private k(b paramb)
  {
  }

  public final boolean execute()
  {
    HashMap localHashMap = new HashMap();
    Cursor localCursor1 = b.a(this.egV).a(a.egy, true, true, true, false, true);
    while (localCursor1.moveToNext())
    {
      long l2 = localCursor1.getLong(1);
      String str2 = localCursor1.getString(2);
      localHashMap.put(str2, Long.valueOf(l2));
      int k = localCursor1.getInt(3);
      long l3 = localCursor1.getLong(0);
      if (k == 1)
      {
        Object localObject = (List)b.b(this.egV).get(str2);
        if (localObject == null)
        {
          localObject = new ArrayList(16);
          b.b(this.egV).put(str2, localObject);
        }
        ((List)localObject).add(Long.valueOf(l3));
      }
    }
    localCursor1.close();
    this.ehf = b.b(this.egV).size();
    if (Thread.interrupted())
      throw new InterruptedException();
    Cursor localCursor2 = b.c(this.egV).rawQuery("SELECT ROWID, username, alias, conRemark, conRemarkPYFull, conRemarkPYShort, nickname, quanPin, pyInitial, verifyFlag, type FROM rcontact;", null);
    int i = 50;
    while (localCursor2.moveToNext())
    {
      if (Thread.interrupted())
      {
        localCursor2.close();
        b.a(this.egV).commit();
        throw new InterruptedException();
      }
      com.tencent.mm.f.a locala = new com.tencent.mm.f.a();
      locala.cfY = localCursor2.getLong(0);
      locala.field_username = localCursor2.getString(1);
      locala.field_alias = localCursor2.getString(2);
      locala.field_conRemark = localCursor2.getString(3);
      locala.field_conRemarkPYFull = localCursor2.getString(4);
      locala.field_conRemarkPYShort = localCursor2.getString(5);
      locala.field_nickname = localCursor2.getString(6);
      locala.field_quanPin = localCursor2.getString(7);
      locala.field_pyInitial = localCursor2.getString(8);
      locala.field_verifyFlag = localCursor2.getInt(9);
      locala.field_type = localCursor2.getInt(10);
      if ((b.a(locala)) && (localHashMap.remove(locala.field_username) == null))
      {
        if (i >= 50)
        {
          b.a(this.egV).commit();
          b.a(this.egV).beginTransaction();
          i = 0;
        }
        i += b.a(this.egV, locala);
        this.ehd = (1 + this.ehd);
      }
    }
    localCursor2.close();
    b.a(this.egV).commit();
    Iterator localIterator = localHashMap.entrySet().iterator();
    int j = 50;
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (j >= 50)
      {
        b.a(this.egV).commit();
        b.a(this.egV).beginTransaction();
        j = 0;
      }
      String str1 = (String)localEntry.getKey();
      long l1 = ((Long)localEntry.getValue()).longValue();
      b.a(this.egV).b(a.egy, str1);
      j++;
      this.ehe = (1 + this.ehe);
      b.a(this.egV).b(a.egy, l1);
    }
    b.a(this.egV).commit();
    return true;
  }

  public final String toString()
  {
    return "BuildContactIndex [new: " + this.ehd + ", removed: " + this.ehe + ", dirty: " + this.ehf + "]";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.k
 * JD-Core Version:    0.6.2
 */