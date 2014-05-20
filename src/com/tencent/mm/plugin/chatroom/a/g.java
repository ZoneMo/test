package com.tencent.mm.plugin.chatroom.a;

import com.tencent.mm.model.be;
import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.ll;
import com.tencent.mm.protocal.a.lm;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;

public final class g extends x
  implements ab
{
  private m cjh = null;
  private final a cke;

  public g(String paramString)
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new ll());
    localb.b(new lm());
    localb.es("/cgi-bin/micromsg-bin/grantbigchatroom");
    localb.cN(339);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    ((ll)this.cke.wr()).fzq = paramString;
    aa.d("MicroMsg.NetSceneGrantBigChatRoom", "grant to userName :" + paramString);
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneGrantBigChatRoom", "onGYNetEnd " + paramInt2 + " " + paramInt3 + "  " + paramString);
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    int i = ((Integer)be.uz().sr().get(135176, Integer.valueOf(0))).intValue();
    if (i - 1 >= 0)
      be.uz().sr().set(135176, Integer.valueOf(i - 1));
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 339;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.a.g
 * JD-Core Version:    0.6.2
 */