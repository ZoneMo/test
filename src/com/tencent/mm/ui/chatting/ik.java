package com.tencent.mm.ui.chatting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.ListView;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;

final class ik
  implements DialogInterface.OnClickListener
{
  ik(ij paramij, long paramLong)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    int i;
    if (be.uz().sw().i(be.nQ().oL(), this.gQa))
    {
      i = be.uz().sw().b(be.nQ().oL(), this.gQa, this.gQb.gPG.gMi.PG() - this.gQb.gPG.gMi.getCount());
      if (i >= 0)
        break label78;
    }
    label78: 
    while (this.gQb.gPG.gMi.getCount() <= i)
      return;
    ChattingUI.j(this.gQb.gPG).post(new il(this, i));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ik
 * JD-Core Version:    0.6.2
 */