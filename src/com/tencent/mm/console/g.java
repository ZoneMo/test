package com.tencent.mm.console;

import android.content.Intent;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.sdk.platformtools.aa;

final class g
  implements o
{
  public final void d(Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("type", 2147483647);
    int j = paramIntent.getIntExtra("error", 0);
    if ((i == 2147483647) || (j == 0))
      return;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(i);
    arrayOfObject[1] = Integer.valueOf(j);
    aa.c("MicroMsg.Shell", "kiro set Test.pushNextErrorRet(type=%d, err=%d)", arrayOfObject);
    at.Q(i, j);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.console.g
 * JD-Core Version:    0.6.2
 */