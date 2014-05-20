package com.tencent.mm.console;

import android.content.Intent;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.sdk.platformtools.aa;

final class k
  implements o
{
  public final void d(Intent paramIntent)
  {
    at.cHI = paramIntent.getIntExtra("value", 0);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.toBinaryString(at.cHI);
    aa.c("MicroMsg.Shell", "dkdnstd set Test.netDnsSimulateFault=%s", arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.console.k
 * JD-Core Version:    0.6.2
 */