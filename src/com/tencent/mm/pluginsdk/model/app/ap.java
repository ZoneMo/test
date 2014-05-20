package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.c;
import com.tencent.mm.n.d;
import com.tencent.mm.network.aj;
import com.tencent.mm.pluginsdk.ah;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.protocal.a.tf;
import com.tencent.mm.protocal.a.tg;
import com.tencent.mm.sdk.platformtools.aa;

public final class ap extends z
{
  private int cmdId;

  public ap(String paramString1, int paramInt, String paramString2)
  {
    b localb = new b();
    localb.a(new tf());
    localb.b(new tg());
    localb.es("/cgi-bin/micromsg-bin/setappsetting");
    localb.cN(396);
    localb.cO(0);
    localb.cP(0);
    this.fhs = localb.wx();
    tf localtf = (tf)this.fhs.wr();
    localtf.fyR = paramString1;
    localtf.fUC = paramInt;
    localtf.fUD = paramString2;
    this.cmdId = paramInt;
  }

  public final void K(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
    {
      aa.e("MicroMsg.NetSceneSetAppSetting", "buf is null");
      return;
    }
    try
    {
      this.fhs.wt().s(paramArrayOfByte);
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.NetSceneSetAppSetting", "parse error: " + localException.getMessage());
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
      aa.e("MicroMsg.NetSceneSetAppSetting", "toProtBuf failed: " + localException.getMessage());
    }
    return null;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.i("MicroMsg.NetSceneSetAppSetting", "errType = " + paramInt2 + ", errCode = " + paramInt3);
    if ((paramInt2 == 0) && (paramInt2 == 0))
    {
      tg localtg = (tg)this.fhs.ws();
      if (localtg != null)
      {
        o localo = h.app().apw();
        k localk = l.F(localtg.fyR, false);
        if (localk != null)
        {
          localk.field_authFlag = localtg.fzY;
          boolean bool = localo.a(localk, new String[0]);
          aa.d("MicroMsg.NetSceneSetAppSetting", "onGYNetEnd, update ret = " + bool + ", appId = " + localtg.fyR);
        }
      }
    }
  }

  public final int aqd()
  {
    return this.cmdId;
  }

  public final int getType()
  {
    return 2;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.ap
 * JD-Core Version:    0.6.2
 */