package com.tencent.mm.plugin.backup.b;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.network.aj;
import com.tencent.mm.plugin.backup.model.AesEcb;
import com.tencent.mm.plugin.backup.model.d;
import com.tencent.mm.protocal.a.af;
import com.tencent.mm.protocal.a.as;
import com.tencent.mm.protocal.a.at;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.sdk.platformtools.aa;
import java.io.IOException;
import java.util.LinkedList;

public final class k extends a
{
  private String cJh;
  private af cLO;
  private com.tencent.mm.n.a cke;

  public k(int paramInt1, String paramString1, String paramString2, LinkedList paramLinkedList, int paramInt2)
  {
    b localb = new b();
    localb.a(new as());
    localb.b(new at());
    localb.es("/cgi-bin/micromsg-bin/bakchatuploadmsg");
    localb.cN(323);
    localb.cO(136);
    localb.cP(1000000136);
    this.cke = localb.wx();
    this.cLO = new af();
    this.cLO.fAD = paramLinkedList;
    this.cLO.fAC = paramLinkedList.size();
    aa.d("MicroMsg.NetSceneBakChatUploadMsg", "backList " + this.cLO.fAC + " " + paramInt2 + " clientMsgId: " + paramString2);
    as localas = (as)this.cke.wr();
    localas.fAj = paramInt1;
    try
    {
      byte[] arrayOfByte1 = this.cLO.toByteArray();
      if (d.Gt() != null)
      {
        byte[] arrayOfByte2 = AesEcb.aesCryptEcb(arrayOfByte1, d.Gt(), true, true);
        localas.fAV = new rv().bM(arrayOfByte2);
        LinkedList localLinkedList = new LinkedList();
        af localaf = new af();
        localaf.fAD = localLinkedList;
        localaf.fAC = 0;
        localas.fAT = localaf;
        localas.fAi = paramString1;
        localas.fzT = paramString2;
      }
    }
    catch (IOException localIOException1)
    {
      try
      {
        while (true)
        {
          i = this.cLO.toByteArray().length;
          localas.fAU = i;
          this.cLz = paramInt2;
          this.ckU = paramInt2;
          this.cLy = paramInt1;
          this.cJa = paramString1;
          this.cJh = paramString2;
          return;
          localas.fAT = this.cLO;
        }
        localIOException1 = localIOException1;
        localas.fAT = this.cLO;
      }
      catch (IOException localIOException2)
      {
        while (true)
          int i = 0;
      }
    }
  }

  public final aj HH()
  {
    return this.cke;
  }

  public final String HL()
  {
    return this.cJh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneBakChatUploadMsg", "onGYNetEnd errType:" + paramInt2 + " errCode:" + paramInt3 + " clientMsgId: " + this.cJh);
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 323;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.b.k
 * JD-Core Version:    0.6.2
 */