package com.tencent.mm.plugin.wallet.iap.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.plugin.wallet.a.a.a;

final class e extends BroadcastReceiver
{
  e(d paramd)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ("com.tencent.mm.gwallet.ACTION_PAY_RESPONSE".equals(str))
    {
      locald = this.fai;
      d.b(this.fai);
      d.a(locald, a.a(paramIntent, d.a(this.fai)));
    }
    while (!"com.tencent.mm.gwallet.ACTION_QUERY_RESPONSE".equals(str))
    {
      d locald;
      return;
    }
    boolean bool = paramIntent.getBooleanExtra("is_direct", true);
    d.b(this.fai);
    a.a(paramIntent, new f(this, bool));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.iap.ui.e
 * JD-Core Version:    0.6.2
 */