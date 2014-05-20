package com.tencent.mm.plugin.wallet.bind.ui;

import android.os.Bundle;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Toast;
import com.tencent.mm.plugin.wallet.b.h;
import com.tencent.mm.plugin.wallet.b.k;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.sdk.platformtools.al;

final class r
  implements AdapterView.OnItemClickListener
{
  r(WalletBankcardManageUI paramWalletBankcardManageUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt == WalletBankcardManageUI.b(this.eYn).eXQ)
    {
      WalletBankcardManageUI.a(this.eYn);
      return;
    }
    Bankcard localBankcard = (Bankcard)paramAdapterView.getAdapter().getItem(paramInt);
    if (localBankcard != null)
    {
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("key_bankcard", localBankcard);
      h.a(this.eYn, k.class, localBundle, 3, true);
      return;
    }
    Toast.makeText(al.getContext(), "no bankcard to unbind", 1).show();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.r
 * JD-Core Version:    0.6.2
 */