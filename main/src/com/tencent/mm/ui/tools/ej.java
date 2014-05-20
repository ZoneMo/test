package com.tencent.mm.ui.tools;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class ej
  implements DialogInterface.OnCancelListener
{
  ej(NewTaskUI paramNewTaskUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (NewTaskUI.hlK != null)
    {
      NewTaskUI.hlK = null;
      this.hlN.finish();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ej
 * JD-Core Version:    0.6.2
 */