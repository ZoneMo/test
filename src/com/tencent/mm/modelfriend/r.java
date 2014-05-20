package com.tencent.mm.modelfriend;

import com.tencent.mm.protocal.a.mx;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.applet.f;

final class r
  implements f
{
  r(p paramp)
  {
  }

  public final String de(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.cqQ.getCount()))
      aa.e("MicroMsg.FriendAdapter", "pos is invalid");
    mx localmx;
    do
    {
      return null;
      localmx = this.cqQ.dd(paramInt);
    }
    while (localmx == null);
    return localmx.eBo;
  }

  public final int zl()
  {
    return this.cqQ.getCount();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.r
 * JD-Core Version:    0.6.2
 */