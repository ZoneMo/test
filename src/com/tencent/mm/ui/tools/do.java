package com.tencent.mm.ui.tools;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class do
  implements DialogInterface.OnClickListener
{
  do(MMTextInputUI paramMMTextInputUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.hlx.SM();
    this.hlx.setResult(0);
    this.hlx.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.do
 * JD-Core Version:    0.6.2
 */