package com.tencent.mm.ui.chatting;

import android.widget.Toast;
import com.tencent.mm.n.r;
import com.tencent.mm.n.s;
import com.tencent.mm.pluginsdk.ui.chat.ChatFooter;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.am;
import com.tencent.mm.sdk.platformtools.ay;

final class bw
  implements s
{
  bw(bv parambv)
  {
  }

  public final void pB()
  {
    bv.a(this.gMs).reset();
    bv.b(this.gMs).azn();
    bv.c(this.gMs).azn();
    am.sF("keep_app_silent");
    bv.d(this.gMs).Oe();
    bv.e(this.gMs).aIL();
    aa.v("MicroMsg.ChattingFooterEventImpl", "record stop on error");
    bv.f(this.gMs).dg(true);
    bv.f(this.gMs).df(true);
    Toast.makeText(bv.f(this.gMs), bv.f(this.gMs).getString(2131165734), 0).show();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.bw
 * JD-Core Version:    0.6.2
 */