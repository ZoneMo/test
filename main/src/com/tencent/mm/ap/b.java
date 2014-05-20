package com.tencent.mm.ap;

import android.database.Cursor;
import com.tencent.mm.compatible.g.k;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

final class b
{
  private static k gjq = null;
  private static long gjr = 0L;
  private static int gjs = 0;
  private static int index;
  private static boolean on = false;

  static
  {
    index = 0;
  }

  static void a(String paramString, Cursor paramCursor, long paramLong)
  {
    if (!on)
      return;
    long l = gjq.qh();
    String str1 = "Thread:[" + Thread.currentThread().getId() + "," + Thread.currentThread().getName() + "]";
    String str2 = str1 + "[" + index + "][" + l + "]";
    if (paramLong != 0L)
      str2 = str2 + "[INTRANS]";
    if (paramCursor != null)
    {
      g(paramCursor);
      str2 = str2 + "[cuCnt:" + gjs + ",cuTime:" + gjr + "]";
    }
    String str3 = str2 + "[" + paramString + "]--";
    aa.v("MicroMsg.dbtest", str3 + cj.azV());
  }

  public static void aDu()
  {
  }

  static void begin()
  {
    if (!on)
      return;
    gjq = new k();
    index = 1 + index;
  }

  private static void g(Cursor paramCursor)
  {
    if (!on);
    while (paramCursor == null)
      return;
    gjs = paramCursor.getCount();
    k localk = new k();
    for (int i = 0; i < gjs; i++)
      paramCursor.moveToPosition(i);
    paramCursor.moveToPosition(-1);
    gjr = localk.qh();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ap.b
 * JD-Core Version:    0.6.2
 */