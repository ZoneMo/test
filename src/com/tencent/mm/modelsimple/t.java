package com.tencent.mm.modelsimple;

import com.tencent.mm.a.i;
import com.tencent.mm.n.m;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.q;
import com.tencent.mm.protocal.y;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.List;
import junit.framework.Assert;

public final class t extends com.tencent.mm.n.x
  implements ab
{
  private m cjh;
  private aj cmF;
  private byte[] content;
  private String cxp = "";

  public t(q paramq)
  {
    y localy = (y)paramq;
    this.cxp = localy.Ch();
    this.content = localy.Ci();
  }

  public t(List paramList, byte[] paramArrayOfByte)
  {
    if ((paramList != null) && (paramList.size() > 0) && (paramArrayOfByte != null));
    int m;
    Object localObject;
    int k;
    for (int j = i; ; k = 0)
    {
      Assert.assertTrue(j);
      m = (int)(System.currentTimeMillis() / 1000L);
      String str;
      for (localObject = (String)paramList.get(0); i < paramList.size(); localObject = str)
      {
        str = (String)localObject + "," + ((String)paramList.get(i)).trim();
        i++;
      }
    }
    this.cmF = new u();
    com.tencent.mm.protocal.x localx = (com.tencent.mm.protocal.x)this.cmF.wJ();
    localx.awP();
    localx.awQ();
    localx.lj(m);
    localx.rw((String)localObject);
    localx.av(paramArrayOfByte);
    aa.d("MicroMsg.NetSceneDirectSend", "NetSceneDirectSend: cmdId=111 seq=" + m);
    aa.d("MicroMsg.NetSceneDirectSend", "NetSceneDirectSend: lstReceiver=" + (String)localObject + " status = " + i.b(paramArrayOfByte, 0));
  }

  public final String Ch()
  {
    return this.cxp;
  }

  public final byte[] Ci()
  {
    return this.content;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cmF, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 10;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.t
 * JD-Core Version:    0.6.2
 */