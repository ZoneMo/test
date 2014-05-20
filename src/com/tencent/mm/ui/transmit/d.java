package com.tencent.mm.ui.transmit;

import com.tencent.mm.n.n;

final class d
  implements n
{
  d(MsgRetransmitUI paramMsgRetransmitUI)
  {
  }

  public final void a(int paramInt1, int paramInt2, com.tencent.mm.n.x paramx)
  {
    if ((MsgRetransmitUI.a(this.hru) == null) || (paramInt2 == 0))
      return;
    int i = paramInt1 * 100 / paramInt2;
    com.tencent.mm.ui.base.x localx = MsgRetransmitUI.a(this.hru);
    MsgRetransmitUI localMsgRetransmitUI = this.hru;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(MsgRetransmitUI.b(this.hru));
    arrayOfObject[1] = Integer.valueOf(MsgRetransmitUI.c(this.hru));
    arrayOfObject[2] = Integer.valueOf(i);
    localx.setMessage(localMsgRetransmitUI.getString(2131166739, arrayOfObject));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.d
 * JD-Core Version:    0.6.2
 */