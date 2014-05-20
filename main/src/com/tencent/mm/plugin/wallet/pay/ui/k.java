package com.tencent.mm.plugin.wallet.pay.ui;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.tencent.mm.platformtools.w;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import com.tencent.mm.sdk.platformtools.aa;

final class k
  implements w
{
  k(WalletOrderInfoUI paramWalletOrderInfoUI, Orders paramOrders, ImageView paramImageView)
  {
  }

  public final void i(String paramString, Bitmap paramBitmap)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(paramString).append(", bitmap = ");
    boolean bool;
    if (paramBitmap == null)
    {
      bool = true;
      aa.d("MicroMsg.WalletOrderInfoUI", bool);
      if (this.fbS.logoUrl != null)
        break label55;
    }
    label55: 
    while (!paramString.equals(this.fbS.logoUrl))
    {
      return;
      bool = false;
      break;
    }
    this.fbT.post(new l(this, paramBitmap));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.k
 * JD-Core Version:    0.6.2
 */