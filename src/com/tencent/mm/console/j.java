package com.tencent.mm.console;

import android.content.Intent;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.sdk.platformtools.aa;

final class j
  implements o
{
  public final void d(Intent paramIntent)
  {
    at.cHJ = paramIntent.getIntExtra("key", 0);
    at.cHK = paramIntent.getIntExtra("val", 0);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(at.cHJ);
    arrayOfObject[1] = Integer.valueOf(at.cHK);
    aa.c("MicroMsg.Shell", "dkshell set [%d %d]", arrayOfObject);
    if (10009 == at.cHJ)
      Shell.qC();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.console.j
 * JD-Core Version:    0.6.2
 */