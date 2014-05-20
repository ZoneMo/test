package com.tencent.mm.ui.transmit;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Toast;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.storage.ap;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.e;
import com.tencent.mm.w.y;

final class g
  implements DialogInterface.OnClickListener
{
  g(f paramf)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (MsgRetransmitUI.d(this.hrv.hru) != null)
    {
      int i = MsgRetransmitUI.d(this.hrv.hru).AV();
      e locale = ag.Ba().dE(i);
      if (locale != null)
      {
        ag.Ba().dC(i);
        be.uz().sw().bV(locale.AF());
      }
      be.uA().c(MsgRetransmitUI.d(this.hrv.hru));
    }
    Toast.makeText(this.hrv.hru, 2131166743, 1).show();
    this.hrv.hru.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.g
 * JD-Core Version:    0.6.2
 */