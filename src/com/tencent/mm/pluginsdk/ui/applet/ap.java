package com.tencent.mm.pluginsdk.ui.applet;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.ui.base.x;

final class ap
  implements DialogInterface.OnClickListener
{
  ap(an paraman)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (an.b(this.foY) != null)
    {
      an.b(this.foY).dismiss();
      an.c(this.foY);
    }
    new ay(new aq(this), false).bO(500L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.ap
 * JD-Core Version:    0.6.2
 */