package com.tencent.mm.plugin.wallet.pay.ui;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.plugin.wallet.b.b;
import com.tencent.mm.plugin.wallet.b.g;
import com.tencent.mm.plugin.wallet.b.h;
import com.tencent.mm.plugin.wallet.b.i;
import com.tencent.mm.plugin.wallet.b.l;
import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;
import com.tencent.mm.plugin.wallet.pay.model.e;
import com.tencent.mm.plugin.wallet.pay.model.j;
import com.tencent.mm.plugin.wallet.protocal.Authen;
import com.tencent.mm.sdk.platformtools.aa;

final class at
  implements View.OnClickListener
{
  at(WalletVerifyCodeUI paramWalletVerifyCodeUI)
  {
  }

  public final void onClick(View paramView)
  {
    int i = 2;
    WalletVerifyCodeUI.b(this.fcR);
    WalletVerifyCodeUI.c(this.fcR).setClickable(false);
    WalletVerifyCodeUI.c(this.fcR).setEnabled(false);
    if (WalletVerifyCodeUI.d(this.fcR) != null)
    {
      WalletVerifyCodeUI.d(this.fcR).cancel();
      WalletVerifyCodeUI.a(this.fcR, null);
    }
    WalletVerifyCodeUI.a(this.fcR, new az(this.fcR)).start();
    WalletVerifyCodeUI.e(this.fcR).start();
    WalletVerifyCodeUI.a(this.fcR, (Authen)this.fcR.aoJ().getParcelable("key_authen"));
    if (WalletVerifyCodeUI.f(this.fcR) == null)
      aa.w("MicroMsg.WalletVertifyCodeUI", "error authen is null");
    i locali;
    label274: label279: 
    do
    {
      return;
      WalletVerifyCodeUI.f(this.fcR).fdk = true;
      m localm = m.dZN;
      Object[] arrayOfObject = new Object[i];
      int j;
      if (WalletVerifyCodeUI.g(this.fcR).fbh != 0)
      {
        j = 1;
        arrayOfObject[0] = Integer.valueOf(j);
        if (!WalletVerifyCodeUI.h(this.fcR))
          break label274;
      }
      while (true)
      {
        arrayOfObject[1] = Integer.valueOf(i);
        localm.d(10706, arrayOfObject);
        l.anR();
        locali = h.m(this.fcR);
        if ((locali == null) || (!(locali instanceof b)))
          break label279;
        a locala = ((b)locali).a(WalletVerifyCodeUI.f(this.fcR), WalletVerifyCodeUI.i(this.fcR));
        this.fcR.l(locala);
        return;
        j = i;
        break;
        i = 1;
      }
    }
    while ((locali == null) || (!(locali instanceof g)));
    this.fcR.l(new e(WalletVerifyCodeUI.f(this.fcR), WalletVerifyCodeUI.i(this.fcR)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.at
 * JD-Core Version:    0.6.2
 */