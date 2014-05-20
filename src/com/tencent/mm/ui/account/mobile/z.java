package com.tencent.mm.ui.account.mobile;

import android.content.Intent;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.sdk.platformtools.aa;

final class z
  implements Runnable
{
  z(o paramo)
  {
  }

  public final void run()
  {
    aa.d("MicroMsg.MobileInputLoginLogic", "onSceneEnd, in runnable");
    Intent localIntent = a.cHS.w(o.b(this.gvX));
    localIntent.addFlags(67108864);
    o.b(this.gvX).startActivity(localIntent);
    o.b(this.gvX).finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.z
 * JD-Core Version:    0.6.2
 */