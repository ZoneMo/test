package com.tencent.mm.plugin.search.model;

import android.database.Cursor;
import com.tencent.mm.ap.i;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import java.util.Comparator;
import java.util.HashMap;

final class v
  implements Comparator
{
  private i egL = null;
  private HashMap ehs = null;
  private String[] eht = null;

  v(u paramu)
  {
  }

  private Long mG(String paramString)
  {
    Cursor localCursor;
    if (this.ehs == null)
    {
      this.ehs = new HashMap();
      this.egL = be.uz().sq();
      this.eht = new String[1];
      this.eht[0] = paramString;
      localCursor = this.egL.rawQuery("SELECT conversationTime FROM rconversation WHERE username=?;", this.eht);
      if (!localCursor.moveToFirst())
        break label116;
    }
    label116: for (Long localLong2 = Long.valueOf(localCursor.getLong(0)); ; localLong2 = Long.valueOf(0L))
    {
      localCursor.close();
      this.ehs.put(paramString, localLong2);
      return localLong2;
      Long localLong1 = (Long)this.ehs.get(paramString);
      if (localLong1 == null)
        break;
      return localLong1;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.v
 * JD-Core Version:    0.6.2
 */