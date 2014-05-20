package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.n.b;
import com.tencent.mm.n.c;
import com.tencent.mm.n.d;
import com.tencent.mm.network.aj;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.bv;
import com.tencent.mm.protocal.a.ho;
import com.tencent.mm.protocal.a.hp;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class ah extends z
{
  private static final String[] fhD = { "wxf109da3e26cf89f1", "wxc56bba830743541e", "wx41dd4f6ef137bd0b" };

  public ah(List paramList)
  {
    b localb = new b();
    localb.a(new ho());
    localb.b(new hp());
    localb.es("/cgi-bin/micromsg-bin/getappinfolist");
    localb.cN(451);
    localb.cO(0);
    localb.cP(0);
    this.fhs = localb.wx();
    ho localho = (ho)this.fhs.wr();
    LinkedList localLinkedList = new LinkedList();
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (!cj.hX(str))
          localLinkedList.add(an.hQ(str));
      }
    }
    localho.fKb = localLinkedList;
    localho.fAC = localLinkedList.size();
  }

  private static void a(k paramk, bv parambv)
  {
    if (paramk == null)
    {
      paramk = new k();
      paramk.field_appId = parambv.fyE;
    }
    for (int i = 1; ; i = 0)
    {
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = parambv.fyE;
      arrayOfObject1[1] = Integer.valueOf(parambv.fCu);
      aa.d("MicroMsg.NetSceneGetAppInfoList", "appid:[%s], appinfoflag:[%d]", arrayOfObject1);
      paramk.field_appName = parambv.Th;
      paramk.field_appName_en = parambv.fCl;
      paramk.field_appName_tw = parambv.fCn;
      paramk.field_appDiscription = parambv.fAb;
      paramk.field_appDiscription_en = parambv.fCm;
      paramk.field_appDiscription_tw = parambv.fCo;
      paramk.field_appWatermarkUrl = parambv.fCs;
      paramk.field_packageName = parambv.fyY;
      paramk.field_signature = u.qt(parambv.fCt);
      paramk.field_appType = parambv.fAe;
      if ((!cj.hX(paramk.field_appType)) && (paramk.field_appType.startsWith("1")))
        paramk.field_appType = ("," + paramk.field_appType);
      paramk.field_appInfoFlag = parambv.fCu;
      paramk.field_appVersion = parambv.fCv;
      paramk.bSy = parambv.fAh;
      paramk.field_appWatermarkUrl = parambv.fCs;
      if ((!cj.hX(parambv.fCy)) && (!cj.hX(parambv.fCz)))
      {
        Object[] arrayOfObject2 = new Object[3];
        arrayOfObject2[0] = paramk.field_appName;
        arrayOfObject2[1] = parambv.fCy;
        arrayOfObject2[2] = parambv.fCz;
        aa.d("MicroMsg.NetSceneGetAppInfoList", "get app download url and download md5 : [%s], [%s], [%s]", arrayOfObject2);
        paramk.bSA = parambv.fCy;
        paramk.bSH = parambv.fCz;
      }
      paramk.bSI = parambv.fyZ;
      if (parambv.fCw > paramk.bSC)
        paramk.bSD = 1;
      paramk.bSC = parambv.fCw;
      String str1 = parambv.fyY;
      String str2 = parambv.fyY;
      int j;
      o localo;
      int i1;
      label436: int i2;
      if ((str1 == null) || (str1.length() == 0) || (str2 == null) || (str2.length() == 0))
      {
        j = 1;
        if (j != 0)
          aa.e("MicroMsg.NetSceneGetAppInfoList", "no android app, packageName = " + parambv.fyY + "appid: " + paramk.field_appId);
        if (paramk.apQ())
          com.tencent.mm.pluginsdk.ui.tools.a.rb(paramk.field_appId);
        localo = ba.HE();
        if (i == 0)
          break label571;
        if (j == 0)
          break label525;
        i1 = 3;
        paramk.field_status = i1;
        paramk.field_modifyTime = System.currentTimeMillis();
        paramk.field_appIconUrl = parambv.fCq;
        String str3 = paramk.field_appId;
        i2 = 0;
        if (str3 == null);
      }
      while (true)
      {
        if (i2 < fhD.length)
        {
          if (paramk.field_appId.equals(fhD[i2]))
            paramk.field_status = -1;
        }
        else
        {
          if (localo.b(paramk))
            break label537;
          aa.e("MicroMsg.NetSceneGetAppInfoList", "onGYNetEnd : insert fail");
          return;
          j = 0;
          break;
          label525: i1 = 4;
          break label436;
        }
        i2++;
      }
      label537: ba.aqg().Y(paramk.field_appId, 1);
      ba.aqg().Y(paramk.field_appId, 2);
      ba.aqg().Y(paramk.field_appId, 3);
      return;
      label571: int k;
      int n;
      label595: int m;
      if (j != 0)
      {
        k = 3;
        paramk.field_status = k;
        if (paramk.field_appId != null)
        {
          n = 0;
          if (n < fhD.length)
          {
            if (!paramk.field_appId.equals(fhD[n]))
              break label753;
            paramk.field_status = -1;
          }
        }
        if ((paramk != null) && (paramk.field_appIconUrl != null) && (paramk.field_appIconUrl.length() != 0))
          break label759;
        m = 1;
      }
      while (true)
      {
        if (m != 0)
        {
          paramk.field_appIconUrl = parambv.fCq;
          ba.aqg().Y(paramk.field_appId, 1);
          ba.aqg().Y(paramk.field_appId, 2);
          ba.aqg().Y(paramk.field_appId, 3);
        }
        boolean bool = localo.a(paramk, new String[0]);
        aa.i("MicroMsg.NetSceneGetAppInfoList", "update appinfo " + bool + ", appid = " + parambv.fyE);
        return;
        k = paramk.field_status;
        break;
        label753: n++;
        break label595;
        label759: if ((parambv == null) || (parambv.fCx == null) || (parambv.fCx.length() == 0))
          m = 0;
        else if (!paramk.field_appIconUrl.equals(parambv.fCq))
          m = 1;
        else
          m = 0;
      }
    }
  }

  public final void K(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
    {
      aa.e("MicroMsg.NetSceneGetAppInfoList", "buf is null");
      return;
    }
    try
    {
      this.fhs.wt().s(paramArrayOfByte);
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.NetSceneGetAppInfoList", "parse error: " + localException.getMessage());
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
      aa.e("MicroMsg.NetSceneGetAppInfoList", "toProtBuf failed: " + localException.getMessage());
    }
    return null;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneGetAppInfoList", "errType = " + paramInt2 + ", errCode = " + paramInt3);
    if ((paramInt2 != 0) || (paramInt3 != 0))
      aa.e("MicroMsg.NetSceneGetAppInfoList", "errType = " + paramInt2 + ", errCode = " + paramInt3);
    while (true)
    {
      return;
      LinkedList localLinkedList = ((hp)this.fhs.ws()).fKc;
      if ((localLinkedList != null) && (!localLinkedList.isEmpty()))
      {
        Iterator localIterator = localLinkedList.iterator();
        while (localIterator.hasNext())
        {
          bv localbv = (bv)localIterator.next();
          if (localbv != null)
            a(l.F(localbv.fyE, false), localbv);
        }
      }
    }
  }

  public final int getType()
  {
    return 7;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.ah
 * JD-Core Version:    0.6.2
 */