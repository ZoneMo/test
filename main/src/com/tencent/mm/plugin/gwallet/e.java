package com.tencent.mm.plugin.gwallet;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.plugin.gwallet.a.b;
import java.util.ArrayList;

final class e extends BroadcastReceiver
{
  e(GWalletUI paramGWalletUI)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    ArrayList localArrayList;
    if ("com.tencent.mm.gwallet.ACTION_CONSUME_REQUEST".equals(paramIntent.getAction()))
    {
      localArrayList = paramIntent.getStringArrayListExtra("tokens");
      if ((localArrayList == null) || (localArrayList.size() == 0))
        GWalletUI.a(this.dsM, 0, null);
    }
    else
    {
      return;
    }
    GWalletUI.b(this.dsM).a(localArrayList, new f(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.gwallet.e
 * JD-Core Version:    0.6.2
 */