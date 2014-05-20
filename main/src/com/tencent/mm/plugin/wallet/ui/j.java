package com.tencent.mm.plugin.wallet.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.tencent.mm.sdk.platformtools.cj;

final class j
  implements View.OnClickListener
{
  j(EditHintView paramEditHintView)
  {
  }

  public final void onClick(View paramView)
  {
    if (EditHintView.j(this.fdW).getVisibility() == 0)
    {
      if ((this.fdW.dIe) && (!cj.hX(this.fdW.getText())))
        this.fdW.UP();
    }
    else
      return;
    EditHintView.k(this.fdW);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.j
 * JD-Core Version:    0.6.2
 */