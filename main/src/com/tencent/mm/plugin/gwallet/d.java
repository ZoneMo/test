package com.tencent.mm.plugin.gwallet;

import android.content.Intent;
import com.tencent.mm.plugin.gwallet.a.i;
import com.tencent.mm.plugin.gwallet.a.k;
import com.tencent.mm.sdk.platformtools.aa;

final class d
  implements i
{
  d(GWalletUI paramGWalletUI)
  {
  }

  public final void b(k paramk, Intent paramIntent)
  {
    aa.d("MicroMsg.GWalletUI", "Purchase finished: " + paramk + ", purchase: " + paramIntent);
    if (paramIntent == null)
    {
      paramIntent = new Intent("com.tencent.mm.gwallet.ACTION_PAY_RESPONSE");
      paramIntent.putExtra("RESPONSE_CODE", paramk.QC());
      this.dsM.sendBroadcast(paramIntent);
      if ((paramk.QD()) || (paramk.QE()))
        break label105;
    }
    label105: for (int i = 1; ; i = 0)
    {
      if (i != 0)
        GWalletUI.a(this.dsM, 0, null);
      return;
      paramIntent.setAction("com.tencent.mm.gwallet.ACTION_PAY_RESPONSE");
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.gwallet.d
 * JD-Core Version:    0.6.2
 */