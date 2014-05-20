package com.tencent.mm.plugin.webwx.a;

import com.tencent.mm.model.be;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.au;
import com.tencent.mm.protocal.a.ji;
import com.tencent.mm.protocal.a.jj;
import com.tencent.mm.protocal.a.ph;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.sdk.platformtools.z;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;

public final class a extends x
  implements ab
{
  public static String feT;
  public static String feU;
  public static String feV;
  public static String feW;
  public static String feX;
  private static int feY;
  private m cjh;

  public a(int paramInt)
  {
    feY = paramInt;
  }

  public static boolean jU(int paramInt)
  {
    return feY != paramInt;
  }

  public final int a(r paramr, m paramm)
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    ji localji = new ji();
    localji.fBF = z.azj();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = localji.fBF;
    aa.e("MicroMsg.NetSceneGetOnlineInfo", "language %s", arrayOfObject);
    localb.a(localji);
    localb.b(new jj());
    localb.es("/cgi-bin/micromsg-bin/getonlineinfo");
    localb.cN(526);
    localb.cO(0);
    localb.cP(0);
    this.cjh = paramm;
    return a(paramr, localb.wx(), this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(paramInt2);
    arrayOfObject1[1] = Integer.valueOf(paramInt3);
    aa.e("MicroMsg.NetSceneGetOnlineInfo", "ongynetend %d, %d", arrayOfObject1);
    if ((paramInt2 == 0) || (paramInt3 == 0))
    {
      jj localjj = (jj)((com.tencent.mm.n.a)paramaj).ws();
      Map localMap1 = u.aL(localjj.fLA, "summary");
      if (localMap1 != null)
      {
        feT = (String)localMap1.get(".summary.banner");
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Integer.valueOf(localjj.fLy);
        arrayOfObject2[1] = localjj.fLA;
        aa.e("MicroMsg.NetSceneGetOnlineInfo", "onlineinfo, count:%d, summary:%s", arrayOfObject2);
        if (cj.hX(feT))
          be.uz().sj();
        ji localji = (ji)((com.tencent.mm.n.a)paramaj).wr();
        Iterator localIterator = localjj.fLz.iterator();
        while (localIterator.hasNext())
        {
          ph localph = (ph)localIterator.next();
          if (localph.fAl.avA().hashCode() != localji.fTY.fAl.avA().hashCode())
          {
            Map localMap2 = u.aL(localph.fRI, "wording");
            if (localMap2 != null)
            {
              feU = (String)localMap2.get(".wording.title");
              feV = (String)localMap2.get(".wording.notify");
              feW = (String)localMap2.get(".wording.exit");
              feX = (String)localMap2.get(".wording.exit_confirm");
              Object[] arrayOfObject3 = new Object[4];
              arrayOfObject3[0] = feU;
              arrayOfObject3[1] = feV;
              arrayOfObject3[2] = feW;
              arrayOfObject3[3] = feX;
              aa.e("MicroMsg.NetSceneGetOnlineInfo", "detail: %s %s %s %s", arrayOfObject3);
            }
          }
        }
      }
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 526;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webwx.a.a
 * JD-Core Version:    0.6.2
 */