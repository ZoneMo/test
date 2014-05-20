package com.tencent.mm.v;

import android.text.TextUtils;
import com.tencent.mm.m.af;
import com.tencent.mm.m.c;
import com.tencent.mm.m.y;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ac;
import com.tencent.mm.modelfriend.ad;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.platformtools.h;
import com.tencent.mm.protocal.a.lj;
import com.tencent.mm.protocal.a.lk;
import com.tencent.mm.protocal.a.mv;
import com.tencent.mm.protocal.a.mw;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;

public final class e extends com.tencent.mm.n.x
  implements ab
{
  private m cjh;
  private final a cke;
  private ArrayList csO;
  private int csP;
  private int csQ;
  private int csR;
  private int csS;
  private HashMap csT = new HashMap();
  private String csU;

  public e(ArrayList paramArrayList, int paramInt, HashMap paramHashMap, String paramString)
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new mv());
    localb.b(new mw());
    localb.es("/cgi-bin/micromsg-bin/listgooglecontact");
    localb.cN(488);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    this.csO = paramArrayList;
    this.csP = paramInt;
    this.csQ = 0;
    this.csS = 1;
    this.csT = paramHashMap;
    this.csU = paramString;
  }

  private void a(mw parammw)
  {
    while (true)
    {
      ArrayList localArrayList;
      int j;
      String str1;
      String str2;
      String str3;
      try
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(parammw.fAC);
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.GoogleContact.NetSceneListGoogleContact", "handleListGoogleContactCGIResponse Count:%d", arrayOfObject);
        if ((parammw.fAD == null) || (parammw.fAD.size() <= 0))
          break label488;
        int i = parammw.fAD.size();
        localArrayList = new ArrayList();
        j = 0;
        if (j >= i)
          break label479;
        lj locallj = (lj)parammw.fAD.get(j);
        if (TextUtils.isEmpty(locallj.eBo))
          break label503;
        i locali = be.uz().su().tO(locallj.eBo);
        if ((locali == null) || (!locali.rb()))
          break label497;
        k = 2;
        if ((this.csT == null) || (!this.csT.containsKey(locallj.fBm)))
          break label491;
        ac localac = (ac)this.csT.get(locallj.fBm);
        localac.field_username = locallj.eBo;
        localac.field_nickname = locallj.fDe;
        localac.field_usernamepy = h.hJ(locallj.fDe);
        localac.field_nicknameqp = h.hI(locallj.fDe);
        localac.field_ret = locallj.fAY;
        localac.field_small_url = locallj.fMT;
        localac.field_big_url = locallj.fMS;
        localac.field_status = k;
        localac.field_googlecgistatus = 2;
        if ((k == 2) || (k == 0))
        {
          localac.field_contecttype = ("weixin" + j);
          localac.field_googlenamepy = h.hJ(localac.field_googlename);
          localArrayList.add(localac);
          str1 = localac.field_googleid;
          str2 = localac.field_googlephotourl;
          str3 = this.csU;
          if ((TextUtils.isEmpty(str1)) || (TextUtils.isEmpty(str2)))
            break label491;
          if (TextUtils.isEmpty(str3))
            break label491;
        }
        else
        {
          localac.field_contecttype = "google";
          continue;
        }
      }
      finally
      {
      }
      String str4 = str1 + "@google";
      com.tencent.mm.m.x localx = af.wm().eq(str4);
      if (localx == null)
        localx = new com.tencent.mm.m.x();
      localx.setUsername(str4);
      localx.bU(3);
      localx.eo(c.x(str2, str3));
      localx.ep(c.x(str2, str3));
      localx.Q(true);
      localx.cL(31);
      af.wm().a(localx);
      break label491;
      label479: ax.At().e(localArrayList);
      label488: return;
      label491: j++;
      continue;
      label497: int k = 0;
      continue;
      label503: k = 1;
    }
  }

  public final mw AB()
  {
    return (mw)this.cke.ws();
  }

  public final int a(r paramr, m paramm)
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.GoogleContact.NetSceneListGoogleContact", "doScene");
    this.cjh = paramm;
    mv localmv = (mv)this.cke.wr();
    if (this.csO != null)
    {
      LinkedList localLinkedList = new LinkedList();
      this.csR = this.csO.size();
      for (int i = this.csQ; (i < this.csR) && (i < 500 + this.csQ); i++)
      {
        lk locallk = new lk();
        locallk.fBm = ((ac)this.csO.get(i)).field_googlegmail;
        localLinkedList.add(locallk);
      }
      localmv.fAD = localLinkedList;
      localmv.fAC = localLinkedList.size();
      if (500 + this.csQ <= this.csR)
        break label233;
    }
    label233: for (this.csS = 0; ; this.csS = 1)
    {
      localmv.fIz = this.csS;
      localmv.fNL = this.csP;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(this.csR);
      arrayOfObject[1] = Integer.valueOf(this.csQ);
      arrayOfObject[2] = Integer.valueOf(this.csS);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.GoogleContact.NetSceneListGoogleContact", "doscene mTotalSize:%d, mStarIndex:%d, mContinueFlag:%d", arrayOfObject);
      return a(paramr, this.cke, this);
    }
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = Integer.valueOf(paramInt3);
    arrayOfObject[3] = paramString;
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.GoogleContact.NetSceneListGoogleContact", "NetId:%d, ErrType:%d, ErrCode:%d, errMsg:%s", arrayOfObject);
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    a(AB());
    if (this.csS == 1)
    {
      this.csQ = (500 + this.csQ);
      if (a(wM(), this.cjh) < 0)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.GoogleContact.NetSceneListGoogleContact", "doScene again failed");
        this.cjh.a(3, -1, "", this);
      }
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 488;
  }

  protected final int we()
  {
    return 20;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.v.e
 * JD-Core Version:    0.6.2
 */