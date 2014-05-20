package com.tencent.mm.modelstat;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.platformtools.i;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;

public final class a
{
  private b cyx = null;
  private final String cyy;

  public a(String paramString)
  {
    this.cyy = paramString;
  }

  public final b CM()
  {
    b localb1 = null;
    if (this.cyx != null)
      return this.cyx;
    String str = this.cyy + "mobileinfo.ini";
    File localFile = new File(str);
    b localb2;
    if (!localFile.exists())
    {
      aa.d("MicroMsg.MobileInfoStorage ReportDataFlow", "readConfig file not exist :%s", new Object[] { str });
      localb2 = null;
    }
    while (true)
    {
      this.cyx = localb2;
      if ((this.cyx == null) || (this.cyx.cyC))
        break;
      aa.v("MicroMsg.MobileInfoStorage ReportDataFlow", "checkInfo mobile info cache Read file succ.");
      return this.cyx;
      i locali1 = new i(str);
      localb2 = new b();
      localb2.cyz = cj.c(locali1.hL("ispCode"));
      localb2.ispName = locali1.getValue("ispName");
      localb2.cyA = cj.c(locali1.hL("subType"));
      localb2.cyB = locali1.getValue("extraInfo");
      long l = localFile.lastModified();
      if ((10011 == at.cHJ) && (at.cHK > 0))
      {
        l = cj.FD() - at.cHK;
        Object[] arrayOfObject4 = new Object[2];
        arrayOfObject4[0] = Integer.valueOf(at.cHK);
        arrayOfObject4[1] = Long.valueOf(l);
        aa.c("MicroMsg.MobileInfoStorage ReportDataFlow", "readConfig DK_TEST_MOBILEINFOFILE_MODTIME val:%d lm:%d", arrayOfObject4);
        at.cHK = 0;
      }
      if ((l > 0L) && (cj.N(l) > 259200000L))
      {
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = Long.valueOf(cj.N(l));
        arrayOfObject3[1] = str;
        aa.c("MicroMsg.MobileInfoStorage ReportDataFlow", "readConfig  diff:%d file:%s cache expired remove!", arrayOfObject3);
        localb2.cyC = true;
      }
      Object[] arrayOfObject1 = new Object[5];
      arrayOfObject1[0] = Integer.valueOf(localb2.cyA);
      arrayOfObject1[1] = Integer.valueOf(localb2.cyz);
      arrayOfObject1[2] = localb2.ispName;
      arrayOfObject1[3] = localb2.cyB;
      arrayOfObject1[4] = Boolean.valueOf(localb2.cyC);
      aa.d("MicroMsg.MobileInfoStorage ReportDataFlow", "readConfig MobileInfo subType:%d ispCode:%d ispName:%s extraInfo:%s expired:%b", arrayOfObject1);
    }
    Context localContext = al.getContext();
    if (localContext == null)
      aa.e("MicroMsg.MobileInfoStorage ReportDataFlow", "readInfoBySystem MMApplicationContext is null");
    while (localb1 == null)
    {
      aa.v("MicroMsg.MobileInfoStorage ReportDataFlow", "readInfoBySystem failed , use old.");
      return this.cyx;
      ConnectivityManager localConnectivityManager = (ConnectivityManager)localContext.getSystemService("connectivity");
      if (localConnectivityManager == null)
      {
        aa.e("MicroMsg.MobileInfoStorage ReportDataFlow", "readInfoBySystem ConnectivityManager is null");
        localb1 = null;
      }
      else
      {
        NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
        if (localNetworkInfo == null)
        {
          aa.e("MicroMsg.MobileInfoStorage ReportDataFlow", "readInfoBySystem getActiveNetworkInfo is null");
          localb1 = null;
        }
        else if (localNetworkInfo.getType() == 1)
        {
          aa.e("MicroMsg.MobileInfoStorage ReportDataFlow", "readInfoBySystem net type is wifi");
          localb1 = null;
        }
        else
        {
          localb1 = new b();
          localb1.cyA = localNetworkInfo.getSubtype();
          localb1.cyz = ba.bm(localContext);
          localb1.ispName = ba.bn(localContext);
          localb1.cyB = localNetworkInfo.getExtraInfo();
          Object[] arrayOfObject2 = new Object[4];
          arrayOfObject2[0] = Integer.valueOf(localb1.cyA);
          arrayOfObject2[1] = Integer.valueOf(localb1.cyz);
          arrayOfObject2[2] = localb1.ispName;
          arrayOfObject2[3] = localb1.cyB;
          aa.d("MicroMsg.MobileInfoStorage ReportDataFlow", "readInfoBySystem subType:%d ispCode:%d ispName:%s extraInfo:%s", arrayOfObject2);
        }
      }
    }
    this.cyx = localb1;
    b localb3 = this.cyx;
    if (localb3 == null)
      aa.e("MicroMsg.MobileInfoStorage ReportDataFlow", "saveConfig info is null");
    while (true)
    {
      return this.cyx;
      if (cj.hX(str))
      {
        aa.e("MicroMsg.MobileInfoStorage ReportDataFlow", "saveConfig path is null");
      }
      else
      {
        i locali2 = new i(str);
        locali2.x("ispCode", localb3.cyz);
        locali2.N("ispName", localb3.ispName);
        locali2.x("subType", localb3.cyA);
        locali2.N("extraInfo", localb3.cyB);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelstat.a
 * JD-Core Version:    0.6.2
 */