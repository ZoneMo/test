package com.tencent.mm.plugin.wallet.pwd.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckedTextView;
import com.tencent.mm.h;
import com.tencent.mm.k;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.plugin.wallet.e.b;
import java.util.ArrayList;
import java.util.List;

public final class d extends BaseAdapter
{
  private Context context;
  private List eEO = new ArrayList();

  public d(WalletForgotPwdUI paramWalletForgotPwdUI, Context paramContext)
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
    if (paramView == null);
    for (CheckedTextView localCheckedTextView = (CheckedTextView)View.inflate(this.context, k.bbr, null); ; localCheckedTextView = (CheckedTextView)paramView)
    {
      localCheckedTextView.setText(b.a(this.fdz.aal(), (Bankcard)this.eEO.get(paramInt)));
      if (paramInt != 0)
        this.eEO.size();
      localCheckedTextView.setBackgroundResource(h.ady);
      if (this.eEO.size() == 1)
        localCheckedTextView.setBackgroundResource(h.ady);
      localCheckedTextView.setCheckMarkDrawable(h.aiK);
      return localCheckedTextView;
    }
  }

  public final Bankcard jD(int paramInt)
  {
    return (Bankcard)this.eEO.get(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pwd.ui.d
 * JD-Core Version:    0.6.2
 */