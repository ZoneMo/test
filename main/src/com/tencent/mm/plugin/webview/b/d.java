package com.tencent.mm.plugin.webview.b;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.c;
import com.tencent.mm.network.aj;
import com.tencent.mm.pluginsdk.model.app.z;
import com.tencent.mm.protocal.a.tj;
import com.tencent.mm.protocal.a.tk;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.LinkedList;

public final class d extends z
{
  private String fes;

  public d(String paramString, int paramInt, LinkedList paramLinkedList)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.NetSceneSetOAuthScopeProxy", "NetSceneSetOAuthScope doScene appID[%s], scopeCount[%s]", arrayOfObject);
    b localb = new b();
    localb.a(new tj());
    localb.b(new tk());
    localb.es("/cgi-bin/micromsg-bin/setoauthscope");
    localb.cN(452);
    localb.cO(0);
    localb.cP(0);
    this.fhs = localb.wx();
    tj localtj = (tj)this.fhs.wr();
    localtj.fyR = paramString;
    localtj.fJY = paramInt;
    localtj.fJZ = paramLinkedList;
  }

  public final void K(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
    {
      aa.e("MicroMsg.NetSceneSetOAuthScopeProxy", "buf is null");
      return;
    }
    com.tencent.mm.n.d locald = this.fhs.wt();
    try
    {
      locald.s(paramArrayOfByte);
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.NetSceneSetOAuthScopeProxy", localException.getMessage());
    }
  }

  public final byte[] Ps()
  {
    try
    {
      byte[] arrayOfByte = ((c)this.fhs.wJ()).wz();
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.NetSceneSetOAuthScopeProxy", localException.getMessage());
    }
    return null;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.i("MicroMsg.NetSceneSetOAuthScopeProxy", "errType = " + paramInt2 + ", errCode = " + paramInt3);
    if ((paramInt2 != 0) || (paramInt3 != 0))
      aa.e("MicroMsg.NetSceneSetOAuthScopeProxy", "errType = " + paramInt2 + ", errCode = " + paramInt3);
  }

  public final tk aoQ()
  {
    if (this.fhs == null)
      return null;
    return (tk)this.fhs.ws();
  }

  public final String aoR()
  {
    return this.fes;
  }

  public final int getType()
  {
    return 13;
  }

  public final void pS(String paramString)
  {
    this.fes = paramString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webview.b.d
 * JD-Core Version:    0.6.2
 */