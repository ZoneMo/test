package com.tencent.mm.plugin.safedevice.a;

import android.database.Cursor;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class d extends ah
{
  public static final String[] cjC = arrayOfString;

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(c.cfX, "SafeDeviceInfo");
  }

  public d(af paramaf)
  {
    super(paramaf, c.cfX, "SafeDeviceInfo", null);
  }

  public final List Zq()
  {
    LinkedList localLinkedList = new LinkedList();
    if (getCount() > 0)
    {
      Cursor localCursor = super.BD();
      while (localCursor.moveToNext())
      {
        c localc = new c();
        localc.convertFrom(localCursor);
        localLinkedList.add(localc);
      }
      localCursor.close();
    }
    return localLinkedList;
  }

  public final void Zr()
  {
    List localList = Zq();
    if (localList.size() > 0)
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
        b((c)localIterator.next(), new String[0]);
    }
  }

  public final boolean a(c paramc)
  {
    return super.b(paramc);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.a.d
 * JD-Core Version:    0.6.2
 */