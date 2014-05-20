package com.tencent.mm.modelcdntran;

import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ag;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;

public final class b
  implements a, com.tencent.mm.n.m, ar
{
  private ag cpb = new c(this);
  private Queue cpc = new LinkedList();
  private Map cpd = new HashMap();
  private Map cpe = new HashMap();
  private String cpf = "";
  private long cpg = 0L;

  public b()
  {
    be.a(this.cpb);
    if (be.se())
      be.uz().sr().a(this);
    be.uA().a(379, this);
  }

  public static boolean ys()
  {
    int i = cj.a((Integer)be.uz().sr().get(144385), 0);
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(i);
    arrayOfObject[1] = Integer.valueOf(i & 0x1);
    arrayOfObject[2] = Boolean.valueOf(at.cHE);
    aa.e("MicroMsg.CDNTransportService", "cdntra cdnBitSet:%d res:%d Test.forceCDNTrans:%b", arrayOfObject);
    if (at.cHE)
      return true;
    return (i & 0x1) > 0;
  }

  public final int a(String paramString, keep_ProgressInfo paramkeep_ProgressInfo, keep_SceneResult paramkeep_SceneResult)
  {
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.CDNTransportService", "cdn callback mediaid is null");
      return -1;
    }
    if ((paramkeep_ProgressInfo == null) && (paramkeep_SceneResult == null))
    {
      aa.e("MicroMsg.CDNTransportService", "cdn callback info all null");
      return -2;
    }
    long l = cj.FD();
    if ((paramkeep_SceneResult == null) && (paramkeep_ProgressInfo != null) && (l - this.cpg < 200L) && (paramString.equals(this.cpf)))
      return -3;
    this.cpg = l;
    this.cpf = paramString;
    be.ut().o(new g(this, paramString, paramkeep_ProgressInfo, paramkeep_SceneResult));
    return 0;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (paramx.getType() != 379);
    do
    {
      return;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(paramx.getType());
      arrayOfObject[1] = Integer.valueOf(paramInt1);
      arrayOfObject[2] = Integer.valueOf(paramInt2);
      aa.e("MicroMsg.CDNTransportService", "cdntra onSceneEnd it will tryStart sceneType:%d [%d,%d]", arrayOfObject);
    }
    while ((!be.se()) || (j.yz().yr()));
    be.ut().o(new d(this));
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    if (!be.se());
    int i;
    do
    {
      return;
      i = cj.h(paramObject, 0);
      Object[] arrayOfObject1 = new Object[3];
      arrayOfObject1[0] = Integer.valueOf(paramInt);
      arrayOfObject1[1] = Integer.valueOf(i);
      arrayOfObject1[2] = paramao;
      aa.e("MicroMsg.CDNTransportService", "onNotifyChange event:%d obj:%d stg:%s", arrayOfObject1);
      if ((paramao != be.uz().sr()) || (i <= 0))
      {
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Integer.valueOf(i);
        arrayOfObject2[1] = paramao;
        aa.b("MicroMsg.CDNTransportService", "onNotifyChange error obj:%d stg:%s", arrayOfObject2);
        return;
      }
    }
    while (i != 144385);
    be.uA().d(new i());
  }

  public final boolean a(m paramm)
  {
    if (paramm == null)
    {
      aa.e("MicroMsg.CDNTransportService", "addRecvTask task info is null");
      return false;
    }
    if (cj.hX(paramm.field_mediaId))
    {
      aa.e("MicroMsg.CDNTransportService", "addRecvTask mediaId is null");
      return false;
    }
    if (paramm.field_fileId == null)
      paramm.field_fileId = "";
    if (paramm.field_aesKey == null)
      paramm.field_aesKey = "";
    paramm.cpI = false;
    be.ut().o(new e(this, paramm));
    return true;
  }

  public final boolean b(m paramm)
  {
    if (paramm == null)
    {
      aa.e("MicroMsg.CDNTransportService", "addSendTask task info is null");
      return false;
    }
    if (cj.hX(paramm.field_mediaId))
    {
      aa.e("MicroMsg.CDNTransportService", "addSendTask mediaId is null");
      return false;
    }
    if (paramm.field_fileId == null)
      paramm.field_fileId = "";
    if (paramm.field_aesKey == null)
      paramm.field_aesKey = "";
    paramm.cpI = true;
    be.ut().o(new f(this, paramm));
    return true;
  }

  public final boolean eT(String paramString)
  {
    m localm = (m)this.cpe.remove(paramString);
    int i;
    if (localm != null)
    {
      i = j.yz().cancelUploadMedia(paramString);
      com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Integer.valueOf(h.cpx);
      arrayOfObject2[1] = Integer.valueOf(localm.field_fileType);
      arrayOfObject2[2] = Long.valueOf(cj.FD() - localm.field_startTime);
      localm1.d(10769, arrayOfObject2);
    }
    while (true)
    {
      this.cpd.remove(paramString);
      Object[] arrayOfObject1 = new Object[3];
      arrayOfObject1[0] = paramString;
      arrayOfObject1[1] = localm;
      arrayOfObject1[2] = Integer.valueOf(i);
      aa.e("MicroMsg.CDNTransportService", "cdntra cancelSendTask mediaid:%s mapremove:%s engine ret:%d", arrayOfObject1);
      return true;
      i = 0;
    }
  }

  public final boolean eU(String paramString)
  {
    m localm = (m)this.cpe.remove(paramString);
    int i;
    if (localm != null)
    {
      i = j.yz().cancelDownloadMedia(paramString);
      com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Integer.valueOf(h.cpw);
      arrayOfObject2[1] = Integer.valueOf(localm.field_fileType);
      arrayOfObject2[2] = Long.valueOf(cj.FD() - localm.field_startTime);
      localm1.d(10769, arrayOfObject2);
    }
    while (true)
    {
      this.cpd.remove(paramString);
      Object[] arrayOfObject1 = new Object[3];
      arrayOfObject1[0] = paramString;
      arrayOfObject1[1] = localm;
      arrayOfObject1[2] = Integer.valueOf(i);
      aa.e("MicroMsg.CDNTransportService", "cdntra cancelRecvTask mediaid:%s mapremove:%s engine ret:%d", arrayOfObject1);
      return true;
      i = 0;
    }
  }

  public final void release()
  {
    if (be.se())
      be.uz().sr().b(this);
    be.b(this.cpb);
    be.uA().b(379, this);
  }

  public final void yt()
  {
    if (!be.se());
    while (true)
    {
      return;
      if (j.yz().yr())
      {
        aa.w("MicroMsg.CDNTransportService", "cdntra Not init cdn dnsinfo , will retry after set info");
        be.uA().d(new i());
        return;
      }
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(this.cpc.size());
      aa.e("MicroMsg.CDNTransportService", "tryStart queue:%d", arrayOfObject1);
      while (!this.cpc.isEmpty())
      {
        String str = (String)this.cpc.poll();
        m localm = (m)this.cpd.remove(str);
        if (localm == null)
        {
          aa.e("MicroMsg.CDNTransportService", "task queue is empty , maybe bug here");
          return;
        }
        localm.field_startTime = cj.FD();
        if (localm.cpI)
        {
          int j = j.yz().startupUploadMedia(localm);
          if (j != 0)
          {
            Object[] arrayOfObject3 = new Object[2];
            arrayOfObject3[0] = Integer.valueOf(j);
            arrayOfObject3[1] = localm.field_mediaId;
            aa.b("MicroMsg.CDNTransportService", "startupUploadMedia error:%d clientid:%s", arrayOfObject3);
            if (localm.cpJ != null)
            {
              n localn2 = localm.cpJ;
              localn2.a(j, null, null);
            }
          }
          else
          {
            this.cpe.put(localm.field_mediaId, localm);
          }
        }
        else
        {
          int i = j.yz().startupDownloadMedia(localm);
          if (i != 0)
          {
            Object[] arrayOfObject2 = new Object[2];
            arrayOfObject2[0] = Integer.valueOf(i);
            arrayOfObject2[1] = localm.field_mediaId;
            aa.b("MicroMsg.CDNTransportService", "startupDownloadMedia error:%d clientid:%s", arrayOfObject2);
            if (localm.cpJ != null)
            {
              n localn1 = localm.cpJ;
              localn1.a(i, null, null);
            }
          }
          else
          {
            this.cpe.put(localm.field_mediaId, localm);
          }
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelcdntran.b
 * JD-Core Version:    0.6.2
 */