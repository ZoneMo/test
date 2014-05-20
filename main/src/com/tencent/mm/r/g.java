package com.tencent.mm.r;

import android.database.Cursor;
import com.tencent.mm.ap.i;
import com.tencent.mm.model.aj;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.sdk.platformtools.aa;

public final class g extends aj
{
  public final boolean cn(int paramInt)
  {
    return (paramInt != 0) && (paramInt < 620758015);
  }

  public final String getTag()
  {
    return "MicroMsg.App.SyncTopConversation";
  }

  public final void transfer(int paramInt)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.App.SyncTopConversation", "the previous version is %d", arrayOfObject);
    i locali = be.uz().sp();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("select username from rconversation");
    localStringBuilder.append(" where flag & 4611686018427387904 != 0");
    aa.e("MicroMsg.App.SyncTopConversation", "sql:%s", new Object[] { localStringBuilder });
    Cursor localCursor = locali.rawQuery(localStringBuilder.toString(), null);
    if (localCursor != null)
    {
      localCursor.moveToFirst();
      while (localCursor.moveToNext())
      {
        String str = localCursor.getString(0);
        aa.f("MicroMsg.App.SyncTopConversation", "userName %s", new Object[] { str });
        w.e(str, false);
      }
      localCursor.close();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.r.g
 * JD-Core Version:    0.6.2
 */