package com.tencent.mm.plugin.accountsync.ui;

import android.os.Bundle;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ae;
import com.tencent.mm.modelfriend.af;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.bi;
import com.tencent.mm.storage.bj;
import com.tencent.mm.ui.a.a.d;
import com.tencent.mm.ui.a.a.g;
import java.util.ArrayList;
import java.util.List;

final class o
  implements g
{
  o(n paramn, long[] paramArrayOfLong)
  {
  }

  public final void a(d paramd)
  {
    aa.e("MicroMsg.InviteFacebookFriendsUI", "fbinvite error");
  }

  public final void a(com.tencent.mm.ui.a.a.h paramh)
  {
    aa.e("MicroMsg.InviteFacebookFriendsUI", "fbinvite error");
  }

  public final void e(Bundle paramBundle)
  {
    aa.i("MicroMsg.InviteFacebookFriendsUI", "fbinvite oncomplete");
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new bj(33, Integer.toString(this.cIy.length)));
    be.uz().st().a(new bi(localArrayList));
    for (long l : this.cIy)
    {
      ae localae = new ae();
      localae.setUsername(Long.toString(l));
      localae.dg(5);
      localae.dh((int)cj.FC());
      ax.Ap().a(localae);
    }
    com.tencent.mm.ui.base.h.a(this.cIz.cIu, com.tencent.mm.n.bkq, com.tencent.mm.n.ber, com.tencent.mm.n.bev, com.tencent.mm.n.bed, new p(this), new q(this));
  }

  public final void onCancel()
  {
    aa.e("MicroMsg.InviteFacebookFriendsUI", "fbinvite cancle");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.ui.o
 * JD-Core Version:    0.6.2
 */