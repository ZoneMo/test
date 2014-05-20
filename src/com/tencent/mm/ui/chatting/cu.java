package com.tencent.mm.ui.chatting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.bv;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.storage.ak;

final class cu
  implements DialogInterface.OnClickListener
{
  cu(ct paramct, ak paramak)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    s.s(this.gMC);
    bv.q(this.gMC.Bo());
    ct.a(this.gMH).dM(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.cu
 * JD-Core Version:    0.6.2
 */