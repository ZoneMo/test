package com.tencent.mm.jni.platformcomm;

import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;

final class d extends PhoneStateListener
{
  public final void onSignalStrengthsChanged(SignalStrength paramSignalStrength)
  {
    super.onSignalStrengthsChanged(paramSignalStrength);
    c.a(paramSignalStrength);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.jni.platformcomm.d
 * JD-Core Version:    0.6.2
 */