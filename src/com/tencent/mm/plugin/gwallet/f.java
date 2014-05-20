package com.tencent.mm.plugin.gwallet;

import android.content.Intent;
import com.tencent.mm.plugin.gwallet.a.i;
import com.tencent.mm.plugin.gwallet.a.k;
import com.tencent.mm.sdk.platformtools.aa;

final class f
  implements i
{
  f(e parame)
  {
  }

  public final void b(k paramk, Intent paramIntent)
  {
    aa.d("MicroMsg.GWalletUI", "Purchase finished: " + paramk + ", purchase: " + paramIntent);
    Intent localIntent = new Intent("com.tencent.mm.gwallet.ACTION_CONSUME_RESPONSE");
    localIntent.putExtra("RESPONSE_CODE", 0);
    GWalletUI.a(this.dsN.dsM, -1, localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.gwallet.f
 * JD-Core Version:    0.6.2
 */