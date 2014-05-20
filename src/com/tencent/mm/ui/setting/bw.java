package com.tencent.mm.ui.setting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class bw
  implements DialogInterface.OnClickListener
{
  bw(SettingsChattingBackgroundUI paramSettingsChattingBackgroundUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    SettingsChattingBackgroundUI.aMv();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.bw
 * JD-Core Version:    0.6.2
 */