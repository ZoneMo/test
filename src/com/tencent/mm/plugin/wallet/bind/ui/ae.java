package com.tencent.mm.plugin.wallet.bind.ui;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckedTextView;
import com.tencent.mm.h;
import com.tencent.mm.k;
import com.tencent.mm.plugin.wallet.bind.model.ElementQuery;
import com.tencent.mm.plugin.wallet.c.c;
import java.util.List;

final class ae extends BaseAdapter
{
  ae(WalletCardElmentUI paramWalletCardElmentUI)
  {
  }

  private Integer jF(int paramInt)
  {
    return (Integer)WalletCardElmentUI.a(this.eZd).anj().get(paramInt);
  }

  public final int getCount()
  {
    if (WalletCardElmentUI.a(this.eZd).anj() != null)
      return WalletCardElmentUI.a(this.eZd).anj().size();
    return 0;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    CheckedTextView localCheckedTextView = (CheckedTextView)View.inflate(this.eZd, k.bbG, null);
    localCheckedTextView.setText(c.anX().c(this.eZd, jF(paramInt).intValue()));
    if (WalletCardElmentUI.d(this.eZd) == jF(paramInt).intValue())
      localCheckedTextView.setChecked(true);
    while (true)
    {
      if (paramInt != 0)
        getCount();
      localCheckedTextView.setBackgroundResource(h.ady);
      return localCheckedTextView;
      localCheckedTextView.setChecked(false);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.ae
 * JD-Core Version:    0.6.2
 */