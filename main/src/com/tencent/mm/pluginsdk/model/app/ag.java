package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.hq;
import com.tencent.mm.protocal.a.hr;
import com.tencent.mm.protocal.a.pk;
import com.tencent.mm.sdk.platformtools.cj;

public final class ag extends x
  implements ab
{
  private static final String[] fhD = { "wxf109da3e26cf89f1", "wxc56bba830743541e", "wx41dd4f6ef137bd0b" };
  private final String appId;
  private final int cZr;
  private m cjh;
  private com.tencent.mm.n.a cke;

  public ag(String paramString)
  {
    this.appId = paramString;
    this.cZr = 3;
    b localb = new b();
    localb.a(new hq());
    localb.b(new hr());
    localb.es("/cgi-bin/micromsg-bin/getappinfo");
    localb.cN(231);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    if ((this.appId == null) || (this.appId.length() == 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetAppInfo", "doScene fail, appId is null");
      return -1;
    }
    hq localhq = (hq)this.cke.wr();
    localhq.fyR = this.appId;
    localhq.fKd = this.cZr;
    return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetAppInfo", "errType = " + paramInt2 + ", errCode = " + paramInt3);
    if ((paramInt2 == 4) && (paramInt3 == -1011))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetAppInfo", "errType = " + paramInt2 + ", errCode = " + paramInt3 + ", appinfo does not exist");
      ba.HE();
      k localk3 = o.apU();
      localk3.field_appId = this.appId;
      ba.HE().a(localk3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetAppInfo", "errType = " + paramInt2 + ", errCode = " + paramInt3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    hr localhr = (hr)((com.tencent.mm.n.a)paramaj).ws();
    String str1 = localhr.fKe.fyY;
    pk localpk1 = localhr.fKe;
    k localk1;
    if (localpk1 == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetAppInfo", "convertToAppInfo : openAppInfo is null");
      localk1 = null;
    }
    while (localk1 == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetAppInfo", "onGYNetEnd : info is null");
      this.cjh.a(3, -1, paramString, this);
      return;
      localk1 = new k();
      localk1.field_appId = localpk1.fyR;
      localk1.field_appName = localpk1.fyV;
      localk1.field_appDiscription = localpk1.fRM;
      localk1.field_appIconUrl = localpk1.fyW;
      localk1.field_appStoreUrl = localpk1.fRN;
      localk1.field_appVersion = localpk1.fCv;
      localk1.field_appWatermarkUrl = localpk1.fRO;
      localk1.field_packageName = localpk1.fyY;
      localk1.field_signature = u.qt(localpk1.fCt);
      localk1.field_appName_en = localpk1.fRP;
      localk1.field_appName_tw = localpk1.fRR;
      localk1.field_appDiscription_en = localpk1.fRQ;
      localk1.field_appDiscription_tw = localpk1.fRS;
      localk1.field_appInfoFlag = localpk1.fCu;
    }
    localk1.field_appType = localhr.fAe;
    pk localpk2 = localhr.fKe;
    String str2 = localpk2.fyY;
    String str3 = localpk2.fCt;
    if ((str2 == null) || (str2.length() == 0) || (str3 == null) || (str3.length() == 0));
    for (int i = 1; ; i = 0)
    {
      if ((i != 0) || (localk1.apQ()))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetAppInfo", "no android app, packageName = " + str1);
        com.tencent.mm.pluginsdk.ui.tools.a.rb(this.appId);
      }
      if (localk1.field_appId != null)
        break;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetAppInfo", "onGYNetEnd : info.appId is null");
      this.cjh.a(3, -1, paramString, this);
      return;
    }
    if (!localk1.field_appId.equals(this.appId))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetAppInfo", "onGYNetEnd : appId is different");
      this.cjh.a(3, -1, paramString, this);
      return;
    }
    o localo = ba.HE();
    k localk2 = localo.qo(this.appId);
    if ((localk2 == null) || (localk2.field_appId == null) || (localk2.field_appId.length() == 0))
    {
      int j;
      if (i != 0)
      {
        j = 3;
        localk1.field_status = j;
        localk1.field_modifyTime = System.currentTimeMillis();
        if (localk1.field_appId == null);
      }
      for (int k = 0; ; k++)
        if (k < fhD.length)
        {
          if (localk1.field_appId.equals(fhD[k]))
            localk1.field_status = -1;
        }
        else
        {
          if (localo.b(localk1))
            break label729;
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetAppInfo", "onGYNetEnd : insert fail");
          this.cjh.a(3, -1, paramString, this);
          return;
          j = 4;
          break;
        }
      label729: ba.aqg().Y(this.appId, 1);
      ba.aqg().Y(this.appId, 2);
      ba.aqg().Y(this.appId, 3);
    }
    label943: label1201: 
    while (true)
    {
      if (cj.hX(localk1.field_openId))
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetAppInfo", "onGYNetEnd, openId is null, trigger getAppSetting, appId = " + localk1.field_appId);
        ba.aqj().eQ(localk1.field_appId);
      }
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
      int m;
      int i1;
      if (i != 0)
      {
        m = 3;
        localk1.field_status = m;
        if (localk1.field_appId != null)
        {
          i1 = 0;
          label851: if (i1 < fhD.length)
          {
            if (!localk1.field_appId.equals(fhD[i1]))
              break label943;
            localk1.field_status = -1;
          }
        }
        if (localk2 != null)
          break label949;
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetAppInfo", "merge failed, some appinfo is null");
      }
      while (true)
      {
        if (localo.a(localk1, new String[0]))
          break label1082;
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetAppInfo", "onGYNetEnd : update fail");
        this.cjh.a(3, -1, paramString, this);
        return;
        m = localk2.field_status;
        break;
        i1++;
        break label851;
        label949: if ((cj.hX(localk1.field_appId)) || (cj.hX(localk2.field_appId)))
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetAppInfo", "merge failed, some appid is null");
        }
        else if (!localk1.field_appId.equalsIgnoreCase(localk2.field_appId))
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetAppInfo", "merge failed, appis is different");
        }
        else
        {
          localk1.field_openId = localk2.field_openId;
          localk1.field_authFlag = localk2.field_authFlag;
          localk1.bSx = localk2.bSx;
          localk1.bSy = localk2.bSy;
          localk1.bSz = localk2.bSz;
          localk1.bSA = localk2.bSA;
          localk1.bSB = localk2.bSB;
        }
      }
      label1082: int n;
      if ((localk2 == null) || (localk2.field_appIconUrl == null) || (localk2.field_appIconUrl.length() == 0))
        n = 1;
      while (true)
      {
        if (n == 0)
          break label1201;
        ba.aqg().Y(this.appId, 1);
        ba.aqg().Y(this.appId, 2);
        ba.aqg().Y(this.appId, 3);
        break;
        if ((localk1.field_appIconUrl == null) || (localk1.field_appIconUrl.length() == 0))
          n = 0;
        else if (!localk2.field_appIconUrl.equals(localk1.field_appIconUrl))
          n = 1;
        else
          n = 0;
      }
    }
  }

  public final String getAppId()
  {
    return this.appId;
  }

  public final int getType()
  {
    return 231;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.ag
 * JD-Core Version:    0.6.2
 */