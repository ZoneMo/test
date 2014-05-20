package com.tencent.mm.ui.conversation;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class bi
  implements DialogInterface.OnCancelListener
{
  bi(MainUI paramMainUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    MainUI.u(this.gZI);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.bi
 * JD-Core Version:    0.6.2
 */