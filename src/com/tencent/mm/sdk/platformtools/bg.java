package com.tencent.mm.sdk.platformtools;

import android.content.Context;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import java.util.LinkedList;
import java.util.List;

public final class bg
{
  private static boolean bRA;
  private PhoneStateListener eSY;
  private TelephonyManager gep;
  private List geq = new LinkedList();

  public static boolean wD()
  {
    return bRA;
  }

  public final void a(bi parambi)
  {
    this.geq.add(parambi);
  }

  public final void bz(Context paramContext)
  {
    if (this.gep == null)
      this.gep = ((TelephonyManager)paramContext.getSystemService("phone"));
    if (this.eSY == null)
      this.eSY = new bh(this);
    this.gep.listen(this.eSY, 32);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.bg
 * JD-Core Version:    0.6.2
 */