package com.tencent.mm.aa;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.ke;
import com.tencent.mm.protocal.a.kf;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.sdk.platformtools.aa;

public final class a extends x
  implements ab
{
  private final com.tencent.mm.n.a cke;
  private int cvC = 0;
  private m cvD = null;
  private String url = "";

  public a(int paramInt, String paramString)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    if (paramString == null);
    for (String str = "null"; ; str = paramString)
    {
      arrayOfObject[1] = str;
      aa.d("MicroMsg.NetSceneGetQQMusicLyric", "request music lyric: songId: %d, url: %s", arrayOfObject);
      b localb = new b();
      localb.a(new ke());
      localb.b(new kf());
      localb.es("/cgi-bin/micromsg-bin/getqqmusiclyric");
      localb.cN(520);
      localb.cO(0);
      localb.cP(0);
      this.cke = localb.wx();
      this.cvC = paramInt;
      this.url = paramString;
      return;
    }
  }

  public final rv BB()
  {
    kf localkf = (kf)this.cke.ws();
    if ((localkf == null) || (localkf.fMc == null))
      return null;
    return localkf.fMc;
  }

  public final int a(r paramr, m paramm)
  {
    this.cvD = paramm;
    ke localke = (ke)this.cke.wr();
    localke.fMa = this.cvC;
    localke.fMb = an.y(this.url.getBytes());
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    this.cvD.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 520;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.aa.a
 * JD-Core Version:    0.6.2
 */