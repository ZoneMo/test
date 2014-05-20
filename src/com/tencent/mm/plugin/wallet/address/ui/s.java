package com.tencent.mm.plugin.wallet.address.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.plugin.wallet.protocal.b;
import java.util.ArrayList;
import java.util.List;

public final class s extends BaseAdapter
{
  private final Context context;
  private List eEO = new ArrayList();

  public s(WalletSelectAddrUI paramWalletSelectAddrUI, Context paramContext)
  {
    this.context = paramContext;
  }

  public final void ai(List paramList)
  {
    this.eEO = paramList;
  }

  public final int getCount()
  {
    return this.eEO.size();
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    t localt1 = new t(this);
    if (paramView == null)
    {
      paramView = View.inflate(this.context, k.bbp, null);
      localt1.eWF = ((ImageView)paramView.findViewById(i.apt));
      localt1.ezT = ((TextView)paramView.findViewById(i.alb));
      localt1.dIs = ((TextView)paramView.findViewById(i.alg));
      paramView.setTag(localt1);
    }
    for (t localt2 = localt1; ; localt2 = (t)paramView.getTag())
    {
      b localb = jA(paramInt);
      localt2.ezT.setText(localb.fcV + " " + localb.fcW + " " + localb.fcX + " " + localb.fcZ);
      localt2.dIs.setText(localb.fda);
      if ((!WalletSelectAddrUI.c(this.eWB)) || (WalletSelectAddrUI.d(this.eWB) == null) || (WalletSelectAddrUI.d(this.eWB).id != localb.id))
        break;
      localt2.eWF.setImageResource(h.ahM);
      return paramView;
    }
    localt2.eWF.setImageBitmap(null);
    return paramView;
  }

  public final b jA(int paramInt)
  {
    return (b)this.eEO.get(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.ui.s
 * JD-Core Version:    0.6.2
 */