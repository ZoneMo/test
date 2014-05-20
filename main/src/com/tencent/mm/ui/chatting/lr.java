package com.tencent.mm.ui.chatting;

import android.content.DialogInterface.OnDismissListener;
import com.tencent.mm.ui.base.v;

final class lr
  implements v
{
  lr(lm paramlm, DialogInterface.OnDismissListener paramOnDismissListener, String paramString)
  {
  }

  public final void bo(int paramInt)
  {
    if (this.gRx != null)
      this.gRx.onDismiss(null);
    String str = this.gRw.replace(" ", "").replace("#", "@");
    switch (paramInt)
    {
    default:
      return;
    case 0:
    }
    lm.d(this.gRv, str);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.lr
 * JD-Core Version:    0.6.2
 */