package com.tencent.mm.w;

import com.tencent.mm.a.f;
import com.tencent.mm.model.q;
import com.tencent.mm.modelcdntran.CdnTransportEngine;
import com.tencent.mm.modelcdntran.b;
import com.tencent.mm.modelcdntran.h;
import com.tencent.mm.modelcdntran.j;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.pointers.PInt;
import com.tencent.mm.pointers.PString;
import com.tencent.mm.protocal.a.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.ak;
import java.util.Map;

public final class m extends q
{
  protected final ak a(l paraml, String paramString1, String paramString2, String paramString3)
  {
    g localg = ag.Ba();
    ak localak = super.a(paraml, paramString1, paramString2, paramString3);
    if (localak.Bo() != 0L)
      return localak;
    localg.dD(paraml.fzo);
    if (paraml.fzw != 2)
    {
      aa.e("MicroMsg.ImgMsgExtension", "data type img, but has no imgstatus_hasimg ?!");
      return localak;
    }
    byte[] arrayOfByte = an.a(paraml.fzx);
    Map localMap = u.aL(localak.field_content, "msg");
    if (!cj.hX(localak.field_content))
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = localak.field_content;
      aa.d("MicroMsg.ImgMsgExtension", "cdntra content:[%s]", arrayOfObject2);
      if ((localMap == null) || (cj.getInt((String)localMap.get(".msg.img.$hdlength"), 0) <= 0));
    }
    for (long l1 = localg.a(arrayOfByte, paraml.fzo, true, localak.field_content, new PString(), new PInt(), new PInt()); ; l1 = -1L)
    {
      PString localPString = new PString();
      PInt localPInt1 = new PInt();
      PInt localPInt2 = new PInt();
      long l2 = localg.a(arrayOfByte, paraml.fzo, false, localak.field_content, localPString, localPInt1, localPInt2);
      if (l2 > 0L)
      {
        localak.uN(localPString.value);
        localak.bXI = localPInt1.value;
        localak.bXJ = localPInt2.value;
        if (l1 > 0L)
        {
          e locale = ag.Ba().E(l2);
          locale.dB((int)l1);
          ag.Ba().a(l2, locale);
        }
      }
      if ((cj.A(arrayOfByte)) && (localMap != null))
      {
        String str1 = (String)localMap.get(".msg.img.$cdnthumbaeskey");
        String str2 = (String)localMap.get(".msg.img.$cdnthumburl");
        int i = cj.getInt((String)localMap.get(".msg.img.$cdnthumblength"), 0);
        String str3 = localg.j(f.h(("SERVERID://" + localak.AH()).getBytes()), "th_", "");
        int j = localak.AH();
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = Integer.valueOf(j);
        arrayOfObject1[1] = paramString1;
        aa.e("MicroMsg.ImgMsgExtension", "cdntra getThumbByCdn msgsvrid:%d from:%s ", arrayOfObject1);
        long l3 = cj.FD();
        String str4 = str3 + ".tmp";
        com.tencent.mm.modelcdntran.m localm = new com.tencent.mm.modelcdntran.m();
        localm.field_mediaId = h.a("downimgthumb", localak.DL(), paramString1, String.valueOf(j));
        localm.field_fullpath = str4;
        localm.field_fileType = CdnTransportEngine.coO;
        localm.field_totalLen = i;
        localm.field_aesKey = str1;
        localm.field_fileId = str2;
        localm.field_priority = CdnTransportEngine.coL;
        localm.cpJ = new n(this, j, localak, l3, i, str3, str4);
        localak.setStatus(4);
        j.yy().a(localm);
      }
      return localak;
    }
  }

  public final void c(ak paramak)
  {
    ag.Ba().h(paramak);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.w.m
 * JD-Core Version:    0.6.2
 */