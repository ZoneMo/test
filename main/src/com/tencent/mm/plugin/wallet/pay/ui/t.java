package com.tencent.mm.plugin.wallet.pay.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.sdk.platformtools.cj;

final class t
  implements View.OnClickListener
{
  t(s params)
  {
  }

  public final void onClick(View paramView)
  {
    Object localObject = paramView.getTag();
    if ((localObject != null) && (!cj.hX((String)localObject)))
    {
      WalletOrderInfoUI.a(this.fbV.fbR, (String)localObject);
      this.fbV.fbR.showDialog(0);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.t
 * JD-Core Version:    0.6.2
 */