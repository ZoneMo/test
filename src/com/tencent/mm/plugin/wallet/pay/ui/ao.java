package com.tencent.mm.plugin.wallet.pay.ui;

import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.wallet.ui.EditHintView;

final class ao
  implements View.OnClickListener
{
  ao(am paramam, DialogInterface.OnClickListener paramOnClickListener)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.fcH != null)
      this.fcH.onClick(this.fcG, 0);
    if (this.fcI)
      this.fcG.dismiss();
    if (this.fcG.fcF != null)
      this.fcG.fcF.pJ(this.fcG.fcE.getText());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.ao
 * JD-Core Version:    0.6.2
 */