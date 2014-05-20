package com.tencent.mm.plugin.wallet.pay.ui;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import com.tencent.mm.h;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.plugin.wallet.e.b;
import java.util.ArrayList;

final class i extends BaseAdapter
{
  private i(WalletChangeBankcardUI paramWalletChangeBankcardUI)
  {
  }

  private Bankcard jD(int paramInt)
  {
    if (paramInt != -1 + getCount())
      return (Bankcard)WalletChangeBankcardUI.b(this.fbJ).get(paramInt);
    return null;
  }

  public final int getCount()
  {
    if (WalletChangeBankcardUI.b(this.fbJ) != null)
      return 1 + WalletChangeBankcardUI.b(this.fbJ).size();
    return 1;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null);
    Bankcard localBankcard;
    for (CheckBox localCheckBox = (CheckBox)View.inflate(this.fbJ.aal(), k.bbT, null); ; localCheckBox = (CheckBox)paramView)
    {
      localCheckBox.setBackgroundResource(h.ady);
      localCheckBox.setEnabled(true);
      localBankcard = jD(paramInt);
      localCheckBox.setTag(Integer.valueOf(paramInt));
      localCheckBox.setOnClickListener(this.fbJ);
      if (localBankcard != null)
        break;
      localCheckBox.setBackgroundResource(h.ady);
      localCheckBox.setCompoundDrawablesWithIntrinsicBounds(0, 0, h.afN, 0);
      localCheckBox.setText(this.fbJ.getString(n.bGG) + " ...");
      return localCheckBox;
    }
    localCheckBox.setCompoundDrawablesWithIntrinsicBounds(0, 0, h.aiK, 0);
    switch (localBankcard.a(WalletChangeBankcardUI.c(this.fbJ), WalletChangeBankcardUI.d(this.fbJ)))
    {
    default:
      localCheckBox.setText(b.a(this.fbJ, localBankcard));
    case 1:
    case 3:
    case 2:
    case 4:
    case 5:
    case 6:
    case 7:
    }
    while (paramInt == WalletChangeBankcardUI.e(this.fbJ))
    {
      localCheckBox.setCompoundDrawablesWithIntrinsicBounds(0, 0, h.ahM, 0);
      localCheckBox.setChecked(true);
      return localCheckBox;
      localCheckBox.setText(b.a(this.fbJ, localBankcard) + this.fbJ.getString(n.bGJ));
      localCheckBox.setEnabled(false);
      continue;
      localCheckBox.setText(b.a(this.fbJ, localBankcard) + this.fbJ.getString(n.bGU));
      localCheckBox.setEnabled(false);
      continue;
      localCheckBox.setText(b.a(this.fbJ, localBankcard) + this.fbJ.getString(n.bGP));
      localCheckBox.setEnabled(false);
      continue;
      localCheckBox.setText(b.a(this.fbJ, localBankcard) + this.fbJ.getString(n.bGL));
      localCheckBox.setEnabled(false);
      continue;
      localCheckBox.setText(b.a(this.fbJ, localBankcard) + this.fbJ.getString(n.bGH));
      localCheckBox.setEnabled(false);
      continue;
      localCheckBox.setText(b.a(this.fbJ, localBankcard) + this.fbJ.getString(n.bGN));
      localCheckBox.setEnabled(false);
      continue;
      localCheckBox.setText(b.a(this.fbJ, localBankcard) + this.fbJ.getString(n.bGS));
      localCheckBox.setEnabled(false);
    }
    if (localCheckBox.isEnabled())
    {
      localCheckBox.setCompoundDrawablesWithIntrinsicBounds(0, 0, h.ahN, 0);
      localCheckBox.setChecked(false);
      return localCheckBox;
    }
    localCheckBox.setCompoundDrawablesWithIntrinsicBounds(0, 0, h.aiX, 0);
    localCheckBox.setChecked(false);
    return localCheckBox;
  }

  public final boolean isEnabled(int paramInt)
  {
    Bankcard localBankcard = jD(paramInt);
    if (localBankcard == null)
      return true;
    if (localBankcard.a(WalletChangeBankcardUI.c(this.fbJ), WalletChangeBankcardUI.d(this.fbJ)) != 0)
      return false;
    return super.isEnabled(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.i
 * JD-Core Version:    0.6.2
 */