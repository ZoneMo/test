package com.tencent.mm.plugin.wallet.address.ui;

import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.wallet.address.model.c;
import com.tencent.mm.ui.base.v;
import java.util.List;

final class m
  implements v
{
  m(l paraml, int paramInt)
  {
  }

  public final void bo(int paramInt)
  {
    while (true)
    {
      synchronized (WalletSelectAddrUI.a(this.eWC.eWB))
      {
        if (this.dmE >= WalletSelectAddrUI.b(this.eWC.eWB).size())
          break label182;
        localb = (com.tencent.mm.plugin.wallet.protocal.b)WalletSelectAddrUI.b(this.eWC.eWB).get(this.dmE);
        if (localb == null)
          return;
      }
      switch (paramInt)
      {
      default:
        return;
      case 0:
        WalletSelectAddrUI.a(this.eWC.eWB, localb.id);
        return;
      case 1:
      }
      c localc = new c(localb.id);
      WalletSelectAddrUI.a(this.eWC.eWB, com.tencent.mm.plugin.wallet.e.b.a(this.eWC.eWB.aal(), false, new n(this)));
      WalletSelectAddrUI.a(this.eWC.eWB, null);
      be.uA().d(localc);
      return;
      label182: com.tencent.mm.plugin.wallet.protocal.b localb = null;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.ui.m
 * JD-Core Version:    0.6.2
 */