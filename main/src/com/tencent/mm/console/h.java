package com.tencent.mm.console;

import android.content.Intent;
import com.tencent.mm.sdk.platformtools.aa;

final class h
  implements o
{
  public final void d(Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("level", 0);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(aa.getLogLevel());
    aa.c("MicroMsg.Shell", "kiro set Log.level=%d", arrayOfObject);
    aa.lH(i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.console.h
 * JD-Core Version:    0.6.2
 */