package com.tencent.mm.console;

import android.content.Intent;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.sdk.platformtools.aa;

final class l
  implements o
{
  public final void d(Intent paramIntent)
  {
    at.cHL = paramIntent.getStringExtra("errmsg");
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = at.cHL;
    aa.c("MicroMsg.Shell", "tiger set tigerIDCErrMsg =%s", arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.console.l
 * JD-Core Version:    0.6.2
 */