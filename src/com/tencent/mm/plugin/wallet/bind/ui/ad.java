package com.tencent.mm.plugin.wallet.bind.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CheckedTextView;
import com.tencent.mm.plugin.wallet.bind.model.ElementQuery;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import java.util.List;

final class ad
  implements AdapterView.OnItemClickListener
{
  ad(WalletCardElmentUI paramWalletCardElmentUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.eZd.dismissDialog(1);
    int i = ((Integer)WalletCardElmentUI.a(this.eZd).anj().get(paramInt)).intValue();
    if (WalletCardElmentUI.d(this.eZd) != i)
    {
      WalletCardElmentUI.a(this.eZd, i);
      WalletCardElmentUI.e(this.eZd).pM(((CheckedTextView)paramView).getText().toString());
      WalletCardElmentUI.f(this.eZd).jP(WalletCardElmentUI.d(this.eZd));
      WalletCardElmentUI.b(this.eZd, WalletCardElmentUI.d(this.eZd));
      WalletCardElmentUI.f(this.eZd).UP();
      WalletCardElmentUI.g(this.eZd);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.ad
 * JD-Core Version:    0.6.2
 */