package com.tencent.mm.ui.chatting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.p.a;
import com.tencent.mm.p.ab;
import com.tencent.mm.p.p;
import com.tencent.mm.p.r;

final class go
  implements DialogInterface.OnClickListener
{
  go(ChattingUI paramChattingUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ChattingUI.o(this.gPG).field_hadAlert = 1;
    a locala = ChattingUI.o(this.gPG);
    if (locala != null)
    {
      locala.field_brandFlag = (0xFFFFFFFB & locala.field_brandFlag);
      p.c(locala);
    }
    ab.yh().eM(this.gPG.aJe());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.go
 * JD-Core Version:    0.6.2
 */