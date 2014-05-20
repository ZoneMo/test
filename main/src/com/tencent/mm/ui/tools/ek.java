package com.tencent.mm.ui.tools;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

final class ek
  implements DialogInterface.OnDismissListener
{
  ek(NewTaskUI paramNewTaskUI)
  {
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    NewTaskUI.c(this.hlN);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ek
 * JD-Core Version:    0.6.2
 */