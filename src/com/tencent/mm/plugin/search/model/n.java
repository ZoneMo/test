package com.tencent.mm.plugin.search.model;

import android.database.Cursor;
import java.util.HashMap;
import java.util.List;

final class n extends af
{
  private int ehf = 0;
  private String ehg;

  public n(b paramb, String paramString)
  {
    this.ehg = paramString;
  }

  public final boolean execute()
  {
    b.a(this.egV).b(a.egy, this.ehg);
    Cursor localCursor = b.a(this.egV).mH(this.ehg);
    while (localCursor.moveToNext())
    {
      String str = localCursor.getString(0);
      if (!b.b(this.egV).containsKey(str))
      {
        List localList = b.a(this.egV).a(a.egy, str);
        b.b(this.egV).put(str, localList);
        this.ehf = (1 + this.ehf);
      }
    }
    localCursor.close();
    return true;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("DeleteContact(\"").append(this.ehg).append("\")");
    if (this.ehf > 0);
    for (String str = " [dirty: " + this.ehf + "]"; ; str = "")
      return str;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.n
 * JD-Core Version:    0.6.2
 */