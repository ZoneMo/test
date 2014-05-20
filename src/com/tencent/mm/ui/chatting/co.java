package com.tencent.mm.ui.chatting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.bv;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.storage.ak;

final class co
  implements DialogInterface.OnClickListener
{
  co(cn paramcn, ak paramak)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    s.s(this.gMC);
    bv.q(this.gMC.Bo());
    cn.a(this.gMD).dM(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.co
 * JD-Core Version:    0.6.2
 */