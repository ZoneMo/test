package com.tencent.mm.ui.account;

import android.content.Intent;
import com.tencent.mm.modelsimple.i;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.sdk.platformtools.aa;

final class di
  implements Runnable
{
  di(LoginUI paramLoginUI, x paramx)
  {
  }

  public final void run()
  {
    aa.d("MicroMsg.LoginUI", "onSceneEnd, in runnable");
    Intent localIntent = a.cHS.w(this.grz);
    localIntent.addFlags(67108864);
    localIntent.putExtra("kstyle_show_bind_mobile_afterauth", ((i)this.cmw).Ca());
    localIntent.putExtra("kstyle_bind_wording", ((i)this.cmw).Cb());
    localIntent.putExtra("kstyle_bind_recommend_show", ((i)this.cmw).Cc());
    this.grz.startActivity(localIntent);
    this.grz.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.di
 * JD-Core Version:    0.6.2
 */