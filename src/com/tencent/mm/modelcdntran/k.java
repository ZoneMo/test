package com.tencent.mm.modelcdntran;

import com.tencent.mm.model.be;
import com.tencent.mm.n.g;
import com.tencent.mm.protocal.a.bz;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;

final class k
  implements g
{
  k(j paramj)
  {
  }

  public final void b(bz parambz)
  {
    aa.d("MicroMsg.SubCoreCdnTransport", "cdntra infoUpdate dns info " + parambz.toString() + " getCore().engine:" + j.yz());
    if (j.yz() != null)
    {
      j.yz().a(parambz);
      be.ut().o(new l(this));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelcdntran.k
 * JD-Core Version:    0.6.2
 */