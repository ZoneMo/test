package com.tencent.mm.plugin.wallet.address.ui;

import android.content.res.Resources;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import com.tencent.mm.c;
import com.tencent.mm.ui.base.h;

final class l
  implements AdapterView.OnItemLongClickListener
{
  l(WalletSelectAddrUI paramWalletSelectAddrUI)
  {
  }

  public final boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    String[] arrayOfString = this.eWB.getResources().getStringArray(c.Zw);
    h.b(this.eWB.aal(), null, arrayOfString, null, new m(this, paramInt));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.ui.l
 * JD-Core Version:    0.6.2
 */