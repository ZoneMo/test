package com.tencent.mm.ui.chatting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.w.y;

final class hx
  implements DialogInterface.OnClickListener
{
  hx(hw paramhw, String paramString)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    y localy = new y(5, this.gPW.gPG.Ch(), this.gPW.gPG.aJe(), this.bLx, 0, null);
    be.uA().d(localy);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.hx
 * JD-Core Version:    0.6.2
 */