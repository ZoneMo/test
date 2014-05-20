package com.tencent.mm.ui.account;

import android.content.Intent;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.sdk.platformtools.aa;

final class cn
  implements Runnable
{
  cn(LoginIndepPass paramLoginIndepPass)
  {
  }

  public final void run()
  {
    aa.d("MicroMsg.LoginIndepPass", "onSceneEnd, in runnable");
    Intent localIntent = a.cHS.w(this.grj);
    localIntent.addFlags(67108864);
    this.grj.startActivity(localIntent);
    this.grj.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.cn
 * JD-Core Version:    0.6.2
 */