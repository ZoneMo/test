package com.tencent.mm.plugin.gwallet;

import android.content.Intent;
import com.tencent.mm.plugin.gwallet.a.i;
import com.tencent.mm.plugin.gwallet.a.k;
import com.tencent.mm.sdk.platformtools.aa;

final class g
  implements i
{
  g(GWalletUI paramGWalletUI, boolean paramBoolean)
  {
  }

  public final void b(k paramk, Intent paramIntent)
  {
    aa.d("MicroMsg.GWalletUI", "Query inventory finished. data : " + paramIntent);
    if (paramIntent == null)
    {
      paramIntent = new Intent("com.tencent.mm.gwallet.ACTION_QUERY_RESPONSE");
      paramIntent.putExtra("RESPONSE_CODE", paramk.QC());
    }
    while (true)
    {
      if (!this.dsO)
        paramIntent.putExtra("is_direct", false);
      this.dsM.sendBroadcast(paramIntent);
      return;
      paramIntent.setAction("com.tencent.mm.gwallet.ACTION_QUERY_RESPONSE");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.gwallet.g
 * JD-Core Version:    0.6.2
 */