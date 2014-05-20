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

final class ap extends BaseAdapter
{
  ap(WalletCardImportUI paramWalletCardImportUI)
  {
  }

  private Integer jF(int paramInt)
  {
    return (Integer)WalletCardImportUI.c(this.eZk).anj().get(paramInt);
  }

  public final int getCount()
  {
    if (WalletCardImportUI.c(this.eZk).anj() != null)
      return WalletCardImportUI.c(this.eZk).anj().size();
    return 0;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    CheckedTextView localCheckedTextView = (CheckedTextView)View.inflate(this.eZk, k.bbG, null);
    localCheckedTextView.setText(c.anX().c(this.eZk, jF(paramInt).intValue()));
    if (WalletCardImportUI.f(this.eZk) == jF(paramInt).intValue())
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
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.ap
 * JD-Core Version:    0.6.2
 */