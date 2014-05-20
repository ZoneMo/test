package com.tencent.mm.ui.chatting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.storage.ak;

final class ek
  implements DialogInterface.OnClickListener
{
  ek(ej paramej, ChattingUI paramChattingUI, ak paramak)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ChattingUI.aKc();
    this.gMZ.Q(this.ctu);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ek
 * JD-Core Version:    0.6.2
 */