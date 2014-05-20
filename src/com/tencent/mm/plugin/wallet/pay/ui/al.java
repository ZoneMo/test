package com.tencent.mm.plugin.wallet.pay.ui;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import com.tencent.mm.plugin.wallet.order.model.Orders.Commodity;
import java.util.List;

final class al
{
  private al(WalletPayUI paramWalletPayUI)
  {
  }

  public final void notifyDataSetChanged()
  {
    WalletPayUI.m(this.fcv).removeAllViews();
    int i;
    if (WalletPayUI.n(this.fcv) == 0)
      i = 0;
    while (true)
    {
      ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-1, -2);
      for (int j = 0; j < i; j++)
      {
        View localView = ((LayoutInflater)this.fcv.getSystemService("layout_inflater")).inflate(k.bbM, null);
        TextView localTextView1 = (TextView)localView.findViewById(i.aQr);
        TextView localTextView2 = (TextView)localView.findViewById(i.aQF);
        Orders.Commodity localCommodity = (Orders.Commodity)WalletPayUI.f(this.fcv).fba.get(j);
        if (localCommodity != null)
        {
          localTextView2.setText(localCommodity.dCH);
          localTextView1.setText(localCommodity.desc);
        }
        localView.setLayoutParams(localLayoutParams);
        localView.measure(-2, -2);
        WalletPayUI.m(this.fcv).addView(localView);
      }
      if (WalletPayUI.a(this.fcv))
        i = WalletPayUI.n(this.fcv);
      else
        i = 1;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.al
 * JD-Core Version:    0.6.2
 */