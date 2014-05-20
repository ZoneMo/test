package com.tencent.mm.plugin.search.model;

import android.database.Cursor;
import com.tencent.mm.ap.i;
import java.util.HashSet;
import java.util.Iterator;
import java.util.regex.Pattern;

final class j extends af
{
  private int ehb = 0;
  private int ehc = 0;

  private j(b paramb)
  {
  }

  public final boolean execute()
  {
    HashSet localHashSet = new HashSet();
    Cursor localCursor1 = b.a(this.egV).aaV();
    while (localCursor1.moveToNext())
      localHashSet.add(localCursor1.getString(0));
    localCursor1.close();
    Cursor localCursor2 = b.c(this.egV).rawQuery("SELECT chatroomname, memberlist FROM chatroom;", null);
    int i = 5;
    while (localCursor2.moveToNext())
    {
      if (Thread.interrupted())
      {
        localCursor2.close();
        b.a(this.egV).commit();
        throw new InterruptedException();
      }
      String str2 = localCursor2.getString(0);
      String[] arrayOfString = a.egG.split(localCursor2.getString(1));
      if (!localHashSet.remove(str2))
      {
        if (i >= 5)
        {
          b.a(this.egV).commit();
          b.a(this.egV).beginTransaction();
          i = 0;
        }
        b.a(this.egV).a(str2, arrayOfString);
        i++;
        this.ehb = (1 + this.ehb);
      }
    }
    localCursor2.close();
    b.a(this.egV).commit();
    Iterator localIterator = localHashSet.iterator();
    int k;
    for (int j = 5; localIterator.hasNext(); j = k)
    {
      String str1 = (String)localIterator.next();
      if (j >= 5)
      {
        b.a(this.egV).commit();
        b.a(this.egV).beginTransaction();
        j = 0;
      }
      b.a(this.egV).mI(str1);
      k = j + 1;
      this.ehc = (1 + this.ehc);
    }
    b.a(this.egV).commit();
    return true;
  }

  public final String toString()
  {
    return "BuildChatroomIndex [new: " + this.ehb + ", removed: " + this.ehc + "]";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.j
 * JD-Core Version:    0.6.2
 */