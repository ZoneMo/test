package com.tencent.mm.sdk.platformtools;

import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;

final class bn extends PhoneStateListener
{
  bn(bm parambm)
  {
  }

  public final void onSignalStrengthChanged(int paramInt)
  {
    super.onSignalStrengthChanged(paramInt);
    bm.lL(-113 + paramInt * 2);
    if (bm.a(this.geE) != null)
      bm.a(this.geE).listen(bm.b(this.geE), 0);
    bm.c(this.geE);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.bn
 * JD-Core Version:    0.6.2
 */