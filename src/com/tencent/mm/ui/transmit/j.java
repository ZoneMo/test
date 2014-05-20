package com.tencent.mm.ui.transmit;

import android.app.ProgressDialog;
import android.widget.Toast;
import com.tencent.mm.ai.c;
import com.tencent.mm.ai.v;
import com.tencent.mm.sdk.platformtools.aa;

final class j
  implements c
{
  j(MsgRetransmitUI paramMsgRetransmitUI)
  {
  }

  public final void a(int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    MsgRetransmitUI.e(this.hru);
    if (paramInt1 == -50002)
      Toast.makeText(this.hru, this.hru.getString(2131166717), 0).show();
    while (true)
    {
      aa.i("MicroMsg.MsgRetransmitUI", MsgRetransmitUI.b(this.hru) + " " + MsgRetransmitUI.c(this.hru));
      if ((this.hru.hrs) || (MsgRetransmitUI.b(this.hru) == MsgRetransmitUI.c(this.hru)))
      {
        if (MsgRetransmitUI.f(this.hru) != null)
        {
          MsgRetransmitUI.f(this.hru).dismiss();
          MsgRetransmitUI.g(this.hru);
        }
        this.hru.finish();
      }
      return;
      if (paramInt1 < 0)
      {
        Toast.makeText(this.hru, this.hru.getString(2131166716), 0).show();
      }
      else
      {
        v.a(paramString1, paramInt2, this.hru.bPx, paramString2, 0);
        v.hf(paramString1);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.j
 * JD-Core Version:    0.6.2
 */