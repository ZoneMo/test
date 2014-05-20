package com.tencent.mm.ui.account;

import com.tencent.mm.modelsimple.i;
import com.tencent.mm.sdk.platformtools.aa;

final class bs
  implements Runnable
{
  bs(LoginHistoryUI paramLoginHistoryUI, i parami)
  {
  }

  public final void run()
  {
    aa.d("MicroMsg.LoginHistoryUI", "onSceneEnd, in runnable");
    LoginHistoryUI.a(this.grc, this.gre);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bs
 * JD-Core Version:    0.6.2
 */