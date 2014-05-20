package com.tencent.mm.model;

import android.database.Cursor;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;

final class bw
  implements Runnable
{
  bw(String paramString, ca paramca)
  {
  }

  public final void run()
  {
    Cursor localCursor = be.uz().sw().vd(this.cjc);
    if (localCursor.moveToFirst())
      while ((!localCursor.isAfterLast()) && ((this.cjd == null) || (!this.cjd.uX())))
      {
        ak localak = new ak();
        localak.convertFrom(localCursor);
        bv.f(localak);
        localCursor.moveToNext();
      }
    localCursor.close();
    be.uz().sw().vb(this.cjc);
    an.i(new bx(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.bw
 * JD-Core Version:    0.6.2
 */