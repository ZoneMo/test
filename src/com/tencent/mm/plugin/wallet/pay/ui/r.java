package com.tencent.mm.plugin.wallet.pay.ui;

import android.view.View;
import android.view.View.OnLongClickListener;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.order.a.c;

final class r
  implements View.OnLongClickListener
{
  r(WalletOrderInfoUI paramWalletOrderInfoUI)
  {
  }

  public final boolean onLongClick(View paramView)
  {
    if ((paramView.getId() == i.aQr) || (paramView.getId() == i.aQJ));
    try
    {
      String str = (String)paramView.getTag();
      Toast.makeText(this.fbR, n.bGu, 0).show();
      c.aa(this.fbR.aal(), str);
      label53: return true;
    }
    catch (Exception localException)
    {
      break label53;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.r
 * JD-Core Version:    0.6.2
 */