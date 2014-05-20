package com.tencent.mm.sdk.platformtools;

import android.telephony.PhoneStateListener;
import java.util.Iterator;
import java.util.List;

final class bh extends PhoneStateListener
{
  bh(bg parambg)
  {
  }

  public final void onCallStateChanged(int paramInt, String paramString)
  {
    Iterator localIterator = bg.a(this.ger).iterator();
    while (localIterator.hasNext())
      ((bi)localIterator.next()).bp(paramInt);
    super.onCallStateChanged(paramInt, paramString);
    switch (paramInt)
    {
    default:
      return;
    case 0:
      bg.M(false);
      return;
    case 1:
    case 2:
    }
    bg.M(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.bh
 * JD-Core Version:    0.6.2
 */