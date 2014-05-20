package com.tencent.mm.plugin.wallet.bind.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.plugin.wallet.bind.model.ElementQuery;

final class aq
  implements AdapterView.OnItemClickListener
{
  aq(WalletCardSelectUI paramWalletCardSelectUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (WalletCardSelectUI.a(this.eZA).jG(paramInt).ani())
      WalletCardSelectUI.a(this.eZA, paramInt);
    while (true)
    {
      this.eZA.dg(true);
      return;
      WalletCardSelectUI.b(this.eZA, paramInt);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.aq
 * JD-Core Version:    0.6.2
 */