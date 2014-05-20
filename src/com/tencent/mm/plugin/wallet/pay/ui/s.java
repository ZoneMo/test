package com.tencent.mm.plugin.wallet.pay.ui;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.plugin.wallet.e.b;
import com.tencent.mm.plugin.wallet.order.model.Orders.Commodity;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.List;

final class s extends BaseAdapter
{
  s(WalletOrderInfoUI paramWalletOrderInfoUI)
  {
  }

  private Orders.Commodity jM(int paramInt)
  {
    return (Orders.Commodity)WalletOrderInfoUI.c(this.fbR).get(paramInt);
  }

  public final int getCount()
  {
    if (WalletOrderInfoUI.c(this.fbR) != null)
      return WalletOrderInfoUI.c(this.fbR).size();
    return 0;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    u localu1;
    Orders.Commodity localCommodity;
    if (paramView == null)
    {
      paramView = View.inflate(this.fbR, k.bbL, null);
      u localu2 = new u(this);
      localu2.dkR = ((TextView)paramView.findViewById(i.aQr));
      localu2.fbZ = ((TextView)paramView.findViewById(i.aQs));
      localu2.fca = ((TextView)paramView.findViewById(i.aQt));
      localu2.fbY = ((TextView)paramView.findViewById(i.aQF));
      localu2.fbW = ((TextView)paramView.findViewById(i.aQI));
      localu2.fbX = ((TextView)paramView.findViewById(i.aQu));
      localu2.fcb = ((TextView)paramView.findViewById(i.aQJ));
      localu2.fcc = ((TextView)paramView.findViewById(i.aQq));
      localu2.fcd = ((TextView)paramView.findViewById(i.aQp));
      localu2.dda = ((TextView)paramView.findViewById(i.aQG));
      localu2.fcf = ((TextView)paramView.findViewById(i.aQv));
      localu2.fce = ((TextView)paramView.findViewById(i.aQy));
      localu2.fce.setOnClickListener(new t(this));
      localu2.fch = paramView.findViewById(i.aQw);
      localu2.fcg = paramView.findViewById(i.aQz);
      localu2.fci = paramView.findViewById(i.aQE);
      paramView.setTag(localu2);
      localu1 = localu2;
      localCommodity = jM(paramInt);
      if ((localCommodity != null) && (localu1 != null))
      {
        localu1.fbW.setText(b.e(localCommodity.dCJ));
        localu1.fbX.setText(b.pP(localCommodity.dCP));
        localu1.fbY.setText(localCommodity.dCH);
        localu1.dkR.setText(localCommodity.desc);
        localu1.dkR.setTag(localCommodity.desc);
        localu1.dkR.setOnLongClickListener(WalletOrderInfoUI.d(this.fbR));
        localu1.dkR.setBackgroundResource(h.akq);
        localu1.fcb.setText(localCommodity.dCN);
        localu1.fcb.setTag(localCommodity.dCN);
        localu1.fcb.setOnLongClickListener(WalletOrderInfoUI.d(this.fbR));
        localu1.fcb.setBackgroundResource(h.akq);
        localu1.fcc.setText(b.gP(localCommodity.dCM));
        localu1.fcd.setText(localCommodity.dCO);
        localu1.dda.setText(localCommodity.dCL);
        if ((!cj.hX(localCommodity.dCs)) || (!cj.hX(localCommodity.dCQ)))
          break label542;
        localu1.fci.setVisibility(8);
        localu1.fcg.setVisibility(8);
      }
    }
    while (true)
    {
      localu1.fch.setVisibility(8);
      return paramView;
      localu1 = (u)paramView.getTag();
      break;
      label542: localu1.fci.setVisibility(0);
      if (!cj.hX(localCommodity.dCs))
      {
        localu1.fce.setText(localCommodity.dCs);
        localu1.fce.setTag(localCommodity.dCs);
        localu1.fcg.setVisibility(0);
      }
      while (!cj.hX(localCommodity.dCQ))
      {
        localu1.fcf.setText(localCommodity.dCQ);
        localu1.fch.setVisibility(0);
        localu1.fcf.setOnClickListener(WalletOrderInfoUI.e(this.fbR));
        return paramView;
        localu1.fcg.setVisibility(8);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.s
 * JD-Core Version:    0.6.2
 */