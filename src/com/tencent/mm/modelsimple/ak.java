package com.tencent.mm.modelsimple;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.sp;
import com.tencent.mm.protocal.ba;
import com.tencent.mm.protocal.q;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import junit.framework.Assert;

public final class ak extends x
  implements ab
{
  private m cjh;
  private final aj cmF = new h();

  public ak(int paramInt, String paramString)
  {
    this(paramInt, paramString, "");
  }

  public ak(int paramInt, String paramString1, String paramString2)
  {
    ba localba = (ba)this.cmF.wJ();
    localba.fyx.eBo = v.th();
    sp localsp = localba.fyx;
    StringBuilder localStringBuilder1 = new StringBuilder();
    if (paramInt == 0)
      paramInt = 64;
    StringBuilder localStringBuilder2 = localStringBuilder1.append(paramInt).append(";");
    if (paramString1 == null)
      paramString1 = "";
    localsp.dGS = paramString1;
    aa.d("MicroMsg.NetSceneSendCard", "content:" + localba.fyx.dGS);
    Assert.assertTrue("empty sendcard", true);
    localba.fyx.fQK = 64;
    if ((paramString2 != null) && (paramString2.length() > 0))
      localba.fyx.fUt = paramString2;
  }

  public ak(String paramString)
  {
    ba localba = (ba)this.cmF.wJ();
    localba.fyx.eBo = v.th();
    localba.fyx.dGS = paramString;
    aa.d("MicroMsg.NetSceneSendCard", "content:" + paramString);
    localba.fyx.fIJ = cj.c((Integer)be.uz().sr().get(66561));
    Assert.assertTrue("empty sendcard", true);
    localba.fyx.fQK = 128;
  }

  public ak(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    ba localba = (ba)this.cmF.wJ();
    localba.fyx.eBo = v.th();
    localba.fyx.dGS = paramString;
    aa.d("MicroMsg.NetSceneSendCard", "content:" + paramString);
    localba.fyx.fIJ = cj.c((Integer)be.uz().sr().get(66561));
    int i;
    int j;
    if (paramBoolean1)
    {
      i = 1;
      j = 0x0 | (i | 0x0);
      if (!paramBoolean2)
        break label150;
    }
    label150: for (int k = 4; ; k = 0)
    {
      int m = 0x8 | (k | j);
      Assert.assertTrue("empty sendcard", true);
      localba.fyx.fQK = m;
      return;
      i = 0;
      break;
    }
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cmF, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    this.cjh.a(paramInt2, paramInt3, paramaj.wv().xl(), this);
  }

  public final int getType()
  {
    return 26;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.ak
 * JD-Core Version:    0.6.2
 */