package com.tencent.mm.plugin.wallet.bind.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CheckedTextView;
import com.tencent.mm.plugin.wallet.bind.model.ElementQuery;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import java.util.List;

final class ao
  implements AdapterView.OnItemClickListener
{
  ao(WalletCardImportUI paramWalletCardImportUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.eZk.dismissDialog(1);
    int i = ((Integer)WalletCardImportUI.c(this.eZk).anj().get(paramInt)).intValue();
    if (WalletCardImportUI.f(this.eZk) != i)
    {
      WalletCardImportUI.a(this.eZk, i);
      WalletCardImportUI.g(this.eZk).pM(((CheckedTextView)paramView).getText().toString());
      WalletCardImportUI.h(this.eZk).jP(WalletCardImportUI.f(this.eZk));
      WalletCardImportUI.h(this.eZk).UP();
      WalletCardImportUI.i(this.eZk);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.ao
 * JD-Core Version:    0.6.2
 */