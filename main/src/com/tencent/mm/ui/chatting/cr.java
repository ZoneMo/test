package com.tencent.mm.ui.chatting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.bv;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.storage.ak;

final class cr
  implements DialogInterface.OnClickListener
{
  cr(cq paramcq, ak paramak)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    s.s(this.gMC);
    bv.q(this.gMC.Bo());
    cq.a(this.gMG).dM(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.cr
 * JD-Core Version:    0.6.2
 */