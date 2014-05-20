package com.tencent.mm.plugin.wallet.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.ui.base.x;

final class b
  implements DialogInterface.OnClickListener
{
  b(EditHintView paramEditHintView)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    EditHintView.l(this.fdW).dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.b
 * JD-Core Version:    0.6.2
 */