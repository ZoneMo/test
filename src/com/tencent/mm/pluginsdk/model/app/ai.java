package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.c;
import com.tencent.mm.n.d;
import com.tencent.mm.network.aj;
import com.tencent.mm.protocal.a.hu;
import com.tencent.mm.protocal.a.hv;
import com.tencent.mm.protocal.a.w;
import com.tencent.mm.protocal.a.x;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class ai extends z
{
  private List fhE;

  public ai(List paramList)
  {
    b localb = new b();
    localb.a(new hu());
    localb.b(new hv());
    localb.es("/cgi-bin/micromsg-bin/getappsetting");
    localb.cN(395);
    localb.cO(0);
    localb.cP(0);
    this.fhs = localb.wx();
    this.fhE = paramList;
    aa.d("MicroMsg.NetSceneGetAppSetting", "<init>, appIdList size = " + paramList.size());
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if ((str != null) && (str.length() > 0))
      {
        x localx = new x();
        localx.fyR = str;
        localLinkedList.add(localx);
      }
    }
    if (localLinkedList.size() == 0)
      aa.e("MicroMsg.NetSceneGetAppSetting", "doScene fail, reqList is empty");
    hu localhu = (hu)this.fhs.wr();
    localhu.fKi = localLinkedList;
    localhu.fKh = localLinkedList.size();
  }

  public final void K(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
    {
      aa.e("MicroMsg.NetSceneGetAppSetting", "buf is null");
      return;
    }
    try
    {
      this.fhs.wt().s(paramArrayOfByte);
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.NetSceneGetAppSetting", "bufToResp error: " + localException.getMessage());
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
      aa.e("MicroMsg.NetSceneGetAppSetting", "toProtBuf error: " + localException.getMessage());
    }
    return null;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneGetAppSetting", "errType = " + paramInt2 + ", errCode = " + paramInt3);
    if ((paramInt2 != 0) || (paramInt3 != 0))
      aa.e("MicroMsg.NetSceneGetAppSetting", "onGYNetEnd, errType = " + paramInt2 + ", errCode = " + paramInt3);
    while (true)
    {
      return;
      hv localhv = (hv)this.fhs.ws();
      aa.d("MicroMsg.NetSceneGetAppSetting", "onGYNetEnd, resp appCount = " + localhv.fKh);
      LinkedList localLinkedList = localhv.fKj;
      if ((localLinkedList == null) || (localLinkedList.size() == 0))
      {
        aa.e("MicroMsg.NetSceneGetAppSetting", "onGYNetEnd, settingList is empty");
        return;
      }
      o localo = ba.HE();
      Iterator localIterator = localLinkedList.iterator();
      while (localIterator.hasNext())
      {
        w localw = (w)localIterator.next();
        k localk = l.F(localw.fyR, false);
        if (localk != null)
        {
          localk.field_authFlag = localw.fzY;
          localk.field_openId = localw.fzZ;
          boolean bool = localo.a(localk, new String[0]);
          aa.d("MicroMsg.NetSceneGetAppSetting", "onGYNetEnd, update ret = " + bool + ", appId = " + localw.fyR);
        }
      }
    }
  }

  public final List apZ()
  {
    return this.fhE;
  }

  public final int getType()
  {
    return 1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.ai
 * JD-Core Version:    0.6.2
 */