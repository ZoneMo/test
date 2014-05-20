package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bu;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;
import java.util.Set;

final class fq
  implements DialogInterface.OnClickListener
{
  fq(fp paramfp, Context paramContext)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    aa.i("MicroMsg.ChattingMoreBtnBarHelper", "delete message");
    Context localContext = this.cGV;
    Set localSet = fn.a(this.gOA.gOz).aJn();
    fn localfn = this.gOA.gOz;
    if (localContext == null)
      aa.w("MicroMsg.ChattingEditModeDelMsg", "do delete msg fail, context is null");
    while (true)
    {
      this.gOA.gOz.aJs();
      return;
      if ((localSet == null) || (localSet.isEmpty()))
      {
        aa.w("MicroMsg.ChattingEditModeDelMsg", "do delete msg fail, select ids is empty");
      }
      else
      {
        localContext.getString(2131167675);
        ch localch = h.a(localContext, localContext.getString(2131165700), false, null);
        fn.gOp.c(new bf(localSet, localch, localfn));
        m localm = m.dZN;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(4);
        arrayOfObject[1] = Integer.valueOf(localSet.size());
        localm.d(10811, arrayOfObject);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.fq
 * JD-Core Version:    0.6.2
 */