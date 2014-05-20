package com.tencent.mm.sdk.platformtools;

import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;

final class bp extends PhoneStateListener
{
  bp(bo parambo)
  {
  }

  public final void onSignalStrengthsChanged(SignalStrength paramSignalStrength)
  {
    super.onSignalStrengthsChanged(paramSignalStrength);
    if (bo.a(this.geG) == 2)
      bo.ep(paramSignalStrength.getCdmaDbm());
    if (bo.a(this.geG) == 1)
      bo.ep(-113 + 2 * paramSignalStrength.getGsmSignalStrength());
    if (bo.b(this.geG) != null)
      bo.b(this.geG).listen(bo.c(this.geG), 0);
    bo.d(this.geG);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.bp
 * JD-Core Version:    0.6.2
 */