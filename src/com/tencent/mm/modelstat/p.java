package com.tencent.mm.modelstat;

import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;

final class p extends PhoneStateListener
{
  public final void onSignalStrengthsChanged(SignalStrength paramSignalStrength)
  {
    super.onSignalStrengthsChanged(paramSignalStrength);
    l.ep(paramSignalStrength.getCdmaDbm());
    l.eq(paramSignalStrength.getGsmSignalStrength());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelstat.p
 * JD-Core Version:    0.6.2
 */