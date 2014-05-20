package com.tencent.mm.modelcdntran;

import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.bz;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import java.util.LinkedList;

public class CdnTransportEngine
{
  public static int coJ = 1;
  public static int coK = 2;
  public static int coL = 3;
  public static int coM = 1;
  public static int coN = 2;
  public static int coO = 3;
  public static int coP = 4;
  public static int coQ = 5;
  public static int coR = 10001;
  public static int coS = 10002;
  public static int coT = 100;
  public static int coU = 101;
  public static int coV = 102;
  public static int coW = 103;
  public static int coX = 32768;
  public static int coY = 7340033;
  private bz coZ = null;
  private a cpa = null;
  public int[] field_IntInfoList = new int[6];
  public byte[] field_authkey = null;
  public byte[] field_frontip1 = null;
  public byte[] field_frontip2 = null;
  public byte[] field_zoneip1 = null;
  public byte[] field_zoneip2 = null;

  public CdnTransportEngine(String paramString, a parama)
  {
    init(paramString);
    this.cpa = parama;
  }

  private native int init(String paramString);

  private native boolean isAvaible();

  public static int keep_callFromJni(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    if (paramInt1 == coT)
      h.a(paramArrayOfByte, "MicroMsg.CdnEngine", paramInt2);
    while (true)
      return 0;
  }

  private native int setCDNDnsInfo();

  private native int uninit();

  public final boolean a(bz parambz)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.coZ;
    arrayOfObject[1] = parambz;
    aa.e("MicroMsg.CdnTransportEngine", "cdntra setCDNDnsInfo old [%s]  new [%s]", arrayOfObject);
    if (parambz == null)
      return false;
    try
    {
      if (parambz.fCO > 0)
        this.field_frontip1 = an.a((rw)parambz.fCP.get(0)).getBytes();
      if (parambz.fCO >= 2)
        this.field_frontip2 = an.a((rw)parambz.fCP.get(1)).getBytes();
      if (parambz.fCT > 0)
        this.field_zoneip1 = an.a((rw)parambz.fCU.get(0)).getBytes();
      if (parambz.fCT >= 2)
        this.field_zoneip2 = an.a((rw)parambz.fCU.get(1)).getBytes();
      this.field_authkey = an.a(parambz.fCR);
      this.field_IntInfoList[0] = parambz.fCL;
      this.field_IntInfoList[1] = parambz.fAX;
      this.field_IntInfoList[2] = parambz.fCN;
      this.field_IntInfoList[3] = parambz.fCS;
      this.field_IntInfoList[4] = h.L(al.getContext());
      this.field_IntInfoList[5] = parambz.fCR.ayg();
      this.coZ = parambz;
      setCDNDnsInfo();
      return true;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public native int cancelDownloadMedia(String paramString);

  public native int cancelUploadMedia(String paramString);

  public int keep_onDownloadError(String paramString, keep_SceneResult paramkeep_SceneResult)
  {
    if (this.cpa != null)
      this.cpa.a(paramString, null, paramkeep_SceneResult);
    return 0;
  }

  public int keep_onDownloadProgress(String paramString, keep_ProgressInfo paramkeep_ProgressInfo)
  {
    if (this.cpa != null)
      this.cpa.a(paramString, paramkeep_ProgressInfo, null);
    return 0;
  }

  public int keep_onDownloadSuccessed(String paramString, keep_SceneResult paramkeep_SceneResult)
  {
    if (this.cpa != null)
      this.cpa.a(paramString, null, paramkeep_SceneResult);
    return 0;
  }

  public int keep_onUploadError(String paramString, keep_SceneResult paramkeep_SceneResult)
  {
    if (this.cpa != null)
      this.cpa.a(paramString, null, paramkeep_SceneResult);
    return 0;
  }

  public int keep_onUploadProgress(String paramString, keep_ProgressInfo paramkeep_ProgressInfo)
  {
    if (this.cpa != null)
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = paramString;
      arrayOfObject[1] = Integer.valueOf(paramkeep_ProgressInfo.field_toltalLength);
      arrayOfObject[2] = Integer.valueOf(paramkeep_ProgressInfo.field_finishedLength);
      aa.f("MicroMsg.CdnTransportEngine", "klem keep_onUploadProgress mediaId:%s, totalLen%d, offset%d", arrayOfObject);
      this.cpa.a(paramString, paramkeep_ProgressInfo, null);
    }
    return 0;
  }

  public int keep_onUploadSuccessed(String paramString, keep_SceneResult paramkeep_SceneResult)
  {
    if (this.cpa != null)
    {
      aa.f("MicroMsg.CdnTransportEngine", "klem keep_onUploadSuccessed mediaId:%s", new Object[] { paramString });
      this.cpa.a(paramString, null, paramkeep_SceneResult);
    }
    return 0;
  }

  public final void release()
  {
    uninit();
    this.cpa = null;
  }

  public native int startupDownloadMedia(m paramm);

  public native int startupUploadMedia(m paramm);

  public final boolean yr()
  {
    return this.coZ == null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelcdntran.CdnTransportEngine
 * JD-Core Version:    0.6.2
 */