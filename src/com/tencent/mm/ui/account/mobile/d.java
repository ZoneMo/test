package com.tencent.mm.ui.account.mobile;

import android.content.Intent;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.ui.MMActivity;

final class d
  implements Runnable
{
  d(a parama, MMActivity paramMMActivity)
  {
  }

  public final void run()
  {
    Intent localIntent = com.tencent.mm.plugin.a.a.cHS.w(this.bLy);
    localIntent.addFlags(67108864);
    this.bLy.startActivity(localIntent);
    this.bLy.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.d
 * JD-Core Version:    0.6.2
 */