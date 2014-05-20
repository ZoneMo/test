package com.tencent.mm.console;

import android.content.Intent;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.sdk.platformtools.aa;

final class m
  implements o
{
  public final void d(Intent paramIntent)
  {
    at.cHM = paramIntent.getStringExtra("acc");
    at.cHN = paramIntent.getStringExtra("pass");
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = at.cHM;
    arrayOfObject[1] = at.cHN;
    aa.c("MicroMsg.Shell", "dkwt shell [%s %s]", arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.console.m
 * JD-Core Version:    0.6.2
 */