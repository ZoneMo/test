package com.tencent.mm.plugin.wallet.address.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.plugin.wallet.protocal.b;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.List;

final class k
  implements AdapterView.OnItemClickListener
{
  k(WalletSelectAddrUI paramWalletSelectAddrUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    aa.d("MicroMsg.WalletSelectAddrUI", "select pos " + paramInt);
    synchronized (WalletSelectAddrUI.a(this.eWB))
    {
      if (paramInt < WalletSelectAddrUI.b(this.eWB).size())
      {
        WalletSelectAddrUI.a(this.eWB, (b)WalletSelectAddrUI.b(this.eWB).get(paramInt));
        if ((!WalletSelectAddrUI.c(this.eWB)) && (WalletSelectAddrUI.d(this.eWB) != null))
          WalletSelectAddrUI.a(this.eWB, WalletSelectAddrUI.d(this.eWB).id);
      }
      WalletSelectAddrUI.e(this.eWB).notifyDataSetChanged();
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.ui.k
 * JD-Core Version:    0.6.2
 */