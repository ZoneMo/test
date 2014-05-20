package com.tencent.mm.plugin.gwallet;

import android.content.Intent;
import com.tencent.mm.plugin.gwallet.a.j;
import com.tencent.mm.plugin.gwallet.a.k;
import com.tencent.mm.sdk.platformtools.aa;

final class b
  implements j
{
  b(GWalletQueryProvider paramGWalletQueryProvider)
  {
  }

  public final void a(k paramk, Intent paramIntent)
  {
    aa.d("MicroMsg.GWalletQueryProvider", "query detail done! Result " + paramk);
    GWalletQueryProvider.e(this.dsK);
    GWalletQueryProvider.a(this.dsK, paramIntent.getStringArrayListExtra("RESPONSE_QUERY_DETAIL_INFO"));
    GWalletQueryProvider.a(this.dsK, paramIntent.getIntExtra("RESPONSE_CODE", 0));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.gwallet.b
 * JD-Core Version:    0.6.2
 */