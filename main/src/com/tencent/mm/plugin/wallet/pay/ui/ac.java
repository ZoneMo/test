package com.tencent.mm.plugin.wallet.pay.ui;

import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.tencent.mm.ui.base.x;

final class ac
  implements CompoundButton.OnCheckedChangeListener
{
  ac(WalletPayUI paramWalletPayUI, x paramx)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    Button localButton = this.fcx.getButton(-2);
    if (paramBoolean)
    {
      localButton.setEnabled(false);
      return;
    }
    localButton.setEnabled(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.ac
 * JD-Core Version:    0.6.2
 */