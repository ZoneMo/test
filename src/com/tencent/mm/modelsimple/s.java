package com.tencent.mm.modelsimple;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.cn;
import com.tencent.mm.protocal.a.co;
import com.tencent.mm.sdk.platformtools.aa;

public final class s extends x
  implements ab
{
  public static int cxl = 1;
  public static int cxm = 2;
  public static int cxn = 3;
  public static int cxo = 4;
  private m cjh;
  private a cke;

  public s(int paramInt)
  {
    b localb = new b();
    localb.a(new cn());
    localb.b(new co());
    localb.es("/cgi-bin/micromsg-bin/checkunbind");
    localb.cN(254);
    localb.cO(131);
    localb.cP(1000000131);
    this.cke = localb.wx();
    ((cn)this.cke.wr()).fDA = paramInt;
  }

  public final String Cg()
  {
    try
    {
      String str = ((co)this.cke.ws()).fDB;
      aa.d("MicroMsg.NetSceneCheckUnBind", "getRandomPasswd() " + str);
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 254;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.s
 * JD-Core Version:    0.6.2
 */