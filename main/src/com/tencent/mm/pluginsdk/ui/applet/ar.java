package com.tencent.mm.pluginsdk.ui.applet;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.ui.base.x;

final class ar
  implements DialogInterface.OnClickListener
{
  ar(an paraman)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (an.b(this.foY) != null)
    {
      an.b(this.foY).dismiss();
      an.c(this.foY);
    }
    an.f(this.foY);
    if (an.g(this.foY) != null)
      an.g(this.foY).cp(false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.ar
 * JD-Core Version:    0.6.2
 */