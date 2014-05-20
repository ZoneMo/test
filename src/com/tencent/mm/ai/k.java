package com.tencent.mm.ai;

import android.graphics.BitmapFactory.Options;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.modelcdntran.keep_SceneResult;
import com.tencent.mm.n.a;
import com.tencent.mm.n.x;
import com.tencent.mm.n.z;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.bm;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.yg;
import com.tencent.mm.protocal.a.yh;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.h;
import com.tencent.mm.storage.i;
import junit.framework.Assert;

public final class k extends x
  implements ab
{
  private keep_SceneResult cAK = null;
  private l cAL = null;
  private com.tencent.mm.n.m cjh;
  private a cke;
  private String rD = null;

  public k(String paramString, keep_SceneResult paramkeep_SceneResult, l paraml)
  {
    boolean bool2;
    boolean bool3;
    if (paramString != null)
    {
      bool2 = bool1;
      Assert.assertTrue(bool2);
      if (paramkeep_SceneResult == null)
        break label79;
      bool3 = bool1;
      label43: Assert.assertTrue(bool3);
      if (paraml == null)
        break label85;
    }
    while (true)
    {
      Assert.assertTrue(bool1);
      this.rD = paramString;
      this.cAK = paramkeep_SceneResult;
      this.cAL = paraml;
      return;
      bool2 = false;
      break;
      label79: bool3 = false;
      break label43;
      label85: bool1 = false;
    }
  }

  public final int a(com.tencent.mm.network.r paramr, com.tencent.mm.n.m paramm)
  {
    this.cjh = paramm;
    q localq = v.hh(this.rD);
    if (localq == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideoForCdn", "Get info Failed file:" + this.rD);
      this.cAL.N(3, -1);
    }
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new yg());
    localb.b(new yh());
    localb.es("/cgi-bin/micromsg-bin/uploadvideo");
    localb.cN(149);
    localb.cO(39);
    localb.cP(1000000039);
    this.cke = localb.wx();
    yg localyg = (yg)this.cke.wr();
    localyg.fYH = 0;
    localyg.fYG = this.cAK.field_fileLength;
    localyg.fYI = new rv().bM(new byte[0]);
    localyg.fOd = 0;
    localyg.fOc = this.cAK.field_thumbimgLength;
    localyg.fOe = new rv().bM(new byte[0]);
    localyg.fzp = com.tencent.mm.model.v.th();
    localyg.fzq = this.cAK.field_toUser;
    localyg.fzT = this.rD;
    if (localq.DQ() == 1)
      localyg.fYK = 2;
    localyg.fYJ = localq.DO();
    int i;
    String str;
    label382: Object[] arrayOfObject;
    if (bm.ac(al.getContext()))
    {
      i = 1;
      localyg.fFg = i;
      localyg.fOf = 2;
      localyg.fYC = this.cAK.field_thumbimgLength;
      localyg.fYL = this.cAK.field_fileId;
      localyg.fYM = this.cAK.field_fileId;
      localyg.fAN = 1;
      localyg.fGB = this.cAK.field_aesKey;
      str = m.DE().ha(this.rD);
      BitmapFactory.Options localOptions = h.ss(str);
      if (localOptions == null)
        break label507;
      localyg.fYE = localOptions.outWidth;
      localyg.fYD = localOptions.outHeight;
      arrayOfObject = new Object[7];
      arrayOfObject[0] = this.rD;
      arrayOfObject[1] = this.cAK.field_toUser;
      if (this.cAK.field_aesKey != null)
        break label527;
    }
    label527: for (int j = -1; ; j = this.cAK.field_aesKey.length())
    {
      arrayOfObject[2] = Integer.valueOf(j);
      arrayOfObject[3] = this.cAK.field_fileId;
      arrayOfObject[4] = Integer.valueOf(this.cAK.field_thumbimgLength);
      arrayOfObject[5] = Integer.valueOf(localyg.fYE);
      arrayOfObject[6] = Integer.valueOf(localyg.fYD);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVideoForCdn", "cdntra doscene file:%s touser:%s aes:%d fileid:%s thumb:[%d %d %d]", arrayOfObject);
      return a(paramr, this.cke, this);
      i = 2;
      break;
      label507: com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneUploadVideoForCdn", "cdntra getImageOptions for thumb failed path:%s", new Object[] { str });
      break label382;
    }
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVideoForCdn", "cdntra onGYNetEnd errtype:" + paramInt2 + " errcode:" + paramInt3);
    yh localyh = (yh)((a)paramaj).ws();
    q localq = v.hh(this.rD);
    if (localq == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideoForCdn", "ERR: onGYNetEnd Get INFO FAILED :" + this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      this.cAL.N(3, -1);
      return;
    }
    if ((paramInt2 == 4) && (paramInt3 == -22))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideoForCdn", "ERR: onGYNetEnd BLACK  errtype:" + paramInt2 + " errCode:" + paramInt3 + "  file:" + this.rD + " user:" + localq.getUser());
      v.he(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      this.cAL.N(paramInt2, paramInt3);
      return;
    }
    if ((paramInt2 == 4) && (paramInt3 != 0) && (paramInt3 != -13) && (paramInt3 != -6))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideoForCdn", "ERR: onGYNetEnd SERVER FAILED errtype:" + paramInt2 + " errCode:" + paramInt3 + "  file:" + this.rD + " user:" + localq.getUser());
      v.hd(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      this.cAL.N(paramInt2, paramInt3);
      return;
    }
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideoForCdn", "ERR: onGYNetEnd FAILED (WILL RETRY) errtype:" + paramInt2 + " errCode:" + paramInt3 + "  file:" + this.rD + " user:" + localq.getUser());
      v.hd(this.rD);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      this.cAL.N(paramInt2, paramInt3);
      return;
    }
    localq.H(cj.FC());
    localq.dA(localyh.fzo);
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(localq.AH());
    arrayOfObject1[1] = Integer.valueOf(at.cHK);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideoForCdn", "dkmsgid  set svrmsgid %d -> %d", arrayOfObject1);
    if ((10007 == at.cHJ) && (at.cHK != 0) && (localq.AH() != 0))
    {
      localq.dA(at.cHK);
      at.cHK = 0;
    }
    localq.setStatus(199);
    localq.cL(1284);
    v.d(localq);
    v.c(localq);
    String str = localq.getUser();
    i locali = be.uz().su().tO(str);
    boolean bool;
    if ((locali == null) || (locali.rj() <= 0))
    {
      bool = false;
      if ((!bool) && (!w.cH(localq.getUser())))
        break label740;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = localq.getUser();
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneUploadVideoForCdn", "upload to biz :%s", arrayOfObject2);
      if (localq.AH() < 0)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideoForCdn", "ERR: finish video invaild MSGSVRID :" + localq.AH() + " file:" + this.rD + " toUser:" + localq.getUser());
        v.hd(this.rD);
        this.cAL.N(3, -1);
      }
    }
    while (true)
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      this.cAL.N(0, 0);
      return;
      bool = locali.aAp();
      break;
      label740: com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneUploadVideoForCdn", "not upload to biz");
      if (localq.AH() <= 0)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneUploadVideoForCdn", "ERR: finish video invaild MSGSVRID :" + localq.AH() + " file:" + this.rD + " toUser:" + localq.getUser());
        v.hd(this.rD);
        this.cAL.N(3, -1);
      }
    }
  }

  protected final void a(z paramz)
  {
    v.hd(this.rD);
  }

  public final String getFileName()
  {
    return this.rD;
  }

  public final int getType()
  {
    return 149;
  }

  protected final int we()
  {
    return 1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ai.k
 * JD-Core Version:    0.6.2
 */