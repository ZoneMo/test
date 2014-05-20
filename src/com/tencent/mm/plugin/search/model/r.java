package com.tencent.mm.plugin.search.model;

import android.database.Cursor;
import java.util.HashMap;
import java.util.List;

final class r extends af
{
  private String ehg;
  private boolean ehj = false;

  public r(b paramb, String paramString)
  {
    this.ehg = paramString;
  }

  public final boolean execute()
  {
    if (b.b(this.egV).containsKey(this.ehg))
    {
      this.ehj = true;
      return true;
    }
    List localList1 = b.a(this.egV).a(a.egy, this.ehg);
    if (localList1.isEmpty())
    {
      b.d(this.egV).a(65546, new p(this.egV, this.ehg));
      return true;
    }
    b.b(this.egV).put(this.ehg, localList1);
    Cursor localCursor = b.a(this.egV).mH(this.ehg);
    while (localCursor.moveToNext())
    {
      String str = localCursor.getString(0);
      if (!b.b(this.egV).containsKey(str))
      {
        List localList2 = b.a(this.egV).a(a.egy, str);
        b.b(this.egV).put(str, localList2);
      }
    }
    localCursor.close();
    return true;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("MarkContactDirty(\"").append(this.ehg).append("\")");
    if (this.ehj);
    for (String str = " [cached]"; ; str = "")
      return str;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.r
 * JD-Core Version:    0.6.2
 */