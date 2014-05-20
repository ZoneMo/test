package com.tencent.mm.console;

import android.content.Intent;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.sdk.platformtools.aa;

final class i
  implements o
{
  public final void d(Intent paramIntent)
  {
    at.cHE = paramIntent.getBooleanExtra("value", false);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(at.cHE);
    aa.c("MicroMsg.Shell", "kiro set Test.forceCDNTrans=%b", arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.console.i
 * JD-Core Version:    0.6.2
 */