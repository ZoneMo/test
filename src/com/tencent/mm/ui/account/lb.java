package com.tencent.mm.ui.account;

import android.os.Bundle;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.a.a.d;
import com.tencent.mm.ui.a.a.g;

final class lb
  implements g
{
  lb(la paramla)
  {
  }

  public final void a(d paramd)
  {
    aa.e("MicroMsg.ShowNonWeixinFriendUI", "fbinvite error");
  }

  public final void a(com.tencent.mm.ui.a.a.h paramh)
  {
    aa.e("MicroMsg.ShowNonWeixinFriendUI", "fbinvite error");
  }

  public final void e(Bundle paramBundle)
  {
    aa.i("MicroMsg.ShowNonWeixinFriendUI", "fbinvite oncomplete");
    com.tencent.mm.ui.base.h.a(this.guy.gux.aal(), n.bkt, n.ber, new lc(this));
  }

  public final void onCancel()
  {
    aa.e("MicroMsg.ShowNonWeixinFriendUI", "fbinvite cancle");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.lb
 * JD-Core Version:    0.6.2
 */