package com.tencent.mm.ui.applet;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class j
  implements DialogInterface.OnClickListener
{
  j(SecurityImage paramSecurityImage, DialogInterface.OnClickListener paramOnClickListener)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    SecurityImage.onStop();
    this.gxs.onClick(paramDialogInterface, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.applet.j
 * JD-Core Version:    0.6.2
 */