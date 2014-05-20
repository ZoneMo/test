package com.tencent.mm.plugin.backup.model;

import com.tencent.mm.a.c;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.backup.a.b;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.sdk.platformtools.aa;
import java.io.File;
import java.io.IOException;

public final class q
{
  private static final String cKv = d.Gs() + "bakchatUpload.result";
  private static b cKw;
  private static final String cKx = d.Gs() + "bakchatDownload.result";
  private static com.tencent.mm.plugin.backup.a.a cKy;

  public static void GK()
  {
    b localb = GM();
    cKw = localb;
    if (localb == null)
    {
      aa.e("MicroMsg.BakReportMgr", "yy recordeUploadPause with a un-started Result.");
      return;
    }
    cKw.cIU = (1 + cKw.cIU);
    aa.v("MicroMsg.BakReportMgr", "yy uploadPause: " + cKw.toString());
    a(cKw, cKv);
  }

  public static void GL()
  {
    b localb = GM();
    cKw = localb;
    if (localb == null)
    {
      aa.e("MicroMsg.BakReportMgr", "yy recordUploadError with a un-started Result.");
      return;
    }
    cKw.cIQ = (1 + cKw.cIQ);
    aa.v("MicroMsg.BakReportMgr", "yy uploadError: " + cKw.toString());
    a(cKw, cKv);
  }

  private static b GM()
  {
    b localb1;
    if (cKw != null)
      localb1 = cKw;
    byte[] arrayOfByte;
    do
    {
      return localb1;
      arrayOfByte = in(cKv);
      localb1 = null;
    }
    while (arrayOfByte == null);
    try
    {
      b localb2 = new b().C(arrayOfByte);
      return localb2;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public static void GN()
  {
    com.tencent.mm.plugin.backup.a.a locala = GP();
    cKy = locala;
    if (locala == null)
    {
      aa.e("MicroMsg.BakReportMgr", "yy recordDownloadEnd with a un-started Result.");
      return;
    }
    cKy.cIU = (1 + cKy.cIU);
    aa.v("MicroMsg.BakReportMgr", "yy downloadPause: " + cKy.toString());
    a(cKy, cKx);
  }

  public static void GO()
  {
    com.tencent.mm.plugin.backup.a.a locala = GP();
    cKy = locala;
    if (locala == null)
    {
      aa.e("MicroMsg.BakReportMgr", "yy recordDownloadError with a un-started Result.");
      return;
    }
    cKy.cIQ = (1 + cKy.cIQ);
    aa.v("MicroMsg.BakReportMgr", "yy downloadError: " + cKy.toString());
    a(cKy, cKx);
  }

  private static com.tencent.mm.plugin.backup.a.a GP()
  {
    com.tencent.mm.plugin.backup.a.a locala1;
    if (cKy != null)
      locala1 = cKy;
    byte[] arrayOfByte;
    do
    {
      return locala1;
      arrayOfByte = in(cKv);
      locala1 = null;
    }
    while (arrayOfByte == null);
    try
    {
      com.tencent.mm.plugin.backup.a.a locala2 = new com.tencent.mm.plugin.backup.a.a().B(arrayOfByte);
      return locala2;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public static void P(long paramLong)
  {
    com.tencent.mm.plugin.backup.a.a locala = GP();
    cKy = locala;
    if (locala == null)
    {
      aa.e("MicroMsg.BakReportMgr", "yy recordDownloadEndTime with a un-started Result.");
      return;
    }
    cKy.cIN = paramLong;
    aa.v("MicroMsg.BakReportMgr", "yy downloadEndTime: " + cKy.toString());
    a(cKy, cKx);
  }

  public static void a(int paramInt1, int paramInt2, long paramLong, int paramInt3, int paramInt4, int paramInt5)
  {
    com.tencent.mm.plugin.backup.a.a locala1 = GP();
    cKy = locala1;
    if (locala1 != null)
    {
      aa.e("MicroMsg.BakReportMgr", "yy recordUploadStart with a un-reported Result: " + cKy.toString());
      c.deleteFile(cKv);
      cKy = null;
    }
    com.tencent.mm.plugin.backup.a.a locala2 = new com.tencent.mm.plugin.backup.a.a();
    cKy = locala2;
    locala2.cIK = paramInt1;
    cKy.cIL = paramInt2;
    cKy.cIM = paramLong;
    cKy.cIP = paramInt3;
    cKy.networkType = paramInt4;
    cKy.cIT = paramInt5;
    cKy.cIU = 0;
    cKy.cIQ = 0;
    aa.v("MicroMsg.BakReportMgr", "yy downloadStart: " + cKy.toString());
    a(cKy, cKx);
  }

  public static void a(int paramInt1, long paramLong, int paramInt2)
  {
    b localb1 = GM();
    cKw = localb1;
    if (localb1 == null)
    {
      aa.e("MicroMsg.BakReportMgr", "yy recordUploadEnd with a un-started Result.");
      return;
    }
    cKw.cub = paramInt1;
    cKw.cIW = paramLong;
    cKw.cIR = paramInt2;
    aa.v("MicroMsg.BakReportMgr", "yy uploadEnd: " + cKw.toString());
    b localb2 = cKw;
    String str = localb2.cub + "," + (localb2.cIW - localb2.cIV) / 1000L + "," + localb2.networkType + "," + localb2.cIQ + "," + localb2.cIR + "," + localb2.cIX + "," + localb2.cIY + "," + localb2.cIT + "," + localb2.cIU;
    aa.v("MicroMsg.BakReportMgr", "yy upload report result: " + str);
    m.dZN.j(10339, str);
    c.deleteFile(cKv);
    cKw = null;
  }

  public static void a(int paramInt1, long paramLong, int paramInt2, int paramInt3, int paramInt4)
  {
    b localb1 = GM();
    cKw = localb1;
    if (localb1 != null)
    {
      aa.e("MicroMsg.BakReportMgr", "yy recordUploadStart with a un-reported Result: " + cKw.toString());
      c.deleteFile(cKv);
      cKw = null;
    }
    b localb2 = new b();
    cKw = localb2;
    localb2.cIX = paramInt1;
    cKw.cIV = paramLong;
    cKw.networkType = paramInt2;
    cKw.cIY = paramInt3;
    cKw.cIT = paramInt4;
    cKw.cIU = 0;
    cKw.cIQ = 0;
    aa.v("MicroMsg.BakReportMgr", "yy uploadStart: " + cKw.toString());
    a(cKw, cKv);
  }

  public static void a(long paramLong, int paramInt1, int paramInt2)
  {
    com.tencent.mm.plugin.backup.a.a locala1 = GP();
    cKy = locala1;
    if (locala1 == null)
    {
      aa.e("MicroMsg.BakReportMgr", "yy recordDownloadEnd with a un-started Result.");
      return;
    }
    cKy.cIO = paramLong;
    cKy.cIR = paramInt1;
    cKy.cIS = paramInt2;
    aa.v("MicroMsg.BakReportMgr", "yy downloadEnd: " + cKy.toString());
    com.tencent.mm.plugin.backup.a.a locala2 = cKy;
    String str = locala2.cIK + "," + locala2.cIL + "," + (locala2.cIO - locala2.cIM) / 1000L + "," + (locala2.cIN - locala2.cIM) / 1000L + "," + locala2.cIP + "," + locala2.networkType + "," + locala2.cIQ + "," + locala2.cIR + "," + locala2.cIS + "," + locala2.cIT + "," + locala2.cIU;
    aa.v("MicroMsg.BakReportMgr", "yy download report result: " + str);
    m.dZN.j(10321, str);
    c.deleteFile(cKx);
    cKy = null;
  }

  private static boolean a(com.tencent.mm.am.a parama, String paramString)
  {
    if ((parama == null) || (au.hX(paramString)))
      return false;
    try
    {
      byte[] arrayOfByte = parama.toByteArray();
      c.a(paramString, arrayOfByte, arrayOfByte.length);
      return true;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  private static byte[] in(String paramString)
  {
    if (!c.as(paramString))
    {
      if (!c.as(d.Gs()))
        new File(d.Gs()).mkdirs();
      return null;
    }
    return c.h(paramString, 0, -1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.q
 * JD-Core Version:    0.6.2
 */