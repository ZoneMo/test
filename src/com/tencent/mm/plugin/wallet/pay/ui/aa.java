package com.tencent.mm.plugin.wallet.pay.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.storage.e;

final class aa
  implements DialogInterface.OnClickListener
{
  aa(WalletPayUI paramWalletPayUI, CheckBox paramCheckBox)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.fcw.isChecked())
      be.uz().sr().set(196614, Boolean.valueOf(false));
    WalletPayUI.o(this.fcv);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.aa
 * JD-Core Version:    0.6.2
 */