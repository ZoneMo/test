package com.tencent.mm.plugin.webview.b;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.d;
import com.tencent.mm.network.aj;
import com.tencent.mm.pluginsdk.model.app.z;
import com.tencent.mm.protocal.a.ma;
import com.tencent.mm.protocal.a.mb;
import com.tencent.mm.sdk.platformtools.aa;

public final class c extends z
{
  private Object CE;
  public String etC;

  public c(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    aa.e("MicroMsg.NetSceneJSOAuthProxy", "NetSceneJSOAuth doScene url[%s], scope[%s], signature[%s], sm[%s], time[%s], nonce[%s]", new Object[] { paramString2, paramString3, paramString4, paramString5, paramString6, paramString7 });
    b localb = new b();
    localb.a(new ma());
    localb.b(new mb());
    localb.es("/cgi-bin/micromsg-bin/jsoauth");
    localb.cN(452);
    localb.cO(0);
    localb.cP(0);
    this.fhs = localb.wx();
    ma localma = (ma)this.fhs.wr();
    localma.fyR = paramString1;
    localma.fyI = paramString2;
    localma.fCA = paramString3;
    localma.cqr = paramString4;
    localma.fNe = paramString5;
    localma.fNf = paramString6;
    localma.fNg = paramString7;
    this.etC = paramString1;
  }

  public final String Cm()
  {
    ma localma = (ma)this.fhs.wr();
    if (localma == null)
      return null;
    return localma.fyI;
  }

  public final void H(Object paramObject)
  {
    this.CE = paramObject;
  }

  public final void K(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
    {
      aa.e("MicroMsg.NetSceneJSOAuthProxy", "buf is null");
      return;
    }
    d locald = this.fhs.wt();
    try
    {
      locald.s(paramArrayOfByte);
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.NetSceneJSOAuthProxy", localException.getMessage());
    }
  }

  public final byte[] Ps()
  {
    try
    {
      byte[] arrayOfByte = ((com.tencent.mm.n.c)this.fhs.wJ()).wz();
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.NetSceneJSOAuthProxy", localException.getMessage());
    }
    return null;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.i("MicroMsg.NetSceneJSOAuthProxy", "errType = " + paramInt2 + ", errCode = " + paramInt3);
    if ((paramInt2 != 0) || (paramInt3 != 0))
      aa.e("MicroMsg.NetSceneJSOAuthProxy", "errType = " + paramInt2 + ", errCode = " + paramInt3);
  }

  public final mb aoP()
  {
    if (this.fhs == null)
      return null;
    return (mb)this.fhs.ws();
  }

  public final Object ge()
  {
    return this.CE;
  }

  public final int getType()
  {
    return 12;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webview.b.c
 * JD-Core Version:    0.6.2
 */