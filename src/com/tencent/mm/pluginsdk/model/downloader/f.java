package com.tencent.mm.pluginsdk.model.downloader;

import com.tencent.mm.c.a.fh;
import com.tencent.mm.c.a.fi;
import com.tencent.mm.c.a.fj;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ah;

final class f
  implements c
{
  f(FileDownloadManger.FileDownloadService paramFileDownloadService, ah paramah, e parame, long paramLong, boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
  }

  public final void e(String paramString1, String paramString2, boolean paramBoolean)
  {
    boolean bool1;
    boolean bool2;
    label221: int i;
    if ((be.se()) && (!be.uG()))
    {
      Object[] arrayOfObject1 = new Object[3];
      arrayOfObject1[0] = this.fip.field_fileName;
      arrayOfObject1[1] = this.fip.field_downloadKey;
      arrayOfObject1[2] = this.fip.field_downloadUrl;
      aa.d("MicroMsg.FileDownloadService", "download successful, report to server:[%s],[%s],[%s]", arrayOfObject1);
      fh localfh = new fh();
      localfh.bPU.appId = this.fip.field_downloadKey;
      localfh.bPU.bPV = this.fiq.fin;
      localfh.bPU.bPW = this.fiq.fio;
      localfh.bPU.bPY = this.fip.field_fileName;
      localfh.bPU.bPZ = this.fip.field_downloadUrl;
      localfh.bPU.bPX = this.fip.field_md5;
      localfh.bPU.bLN = this.fip.field_source;
      fi localfi1 = localfh.bPU;
      if (this.fip.field_autoInstall == 0)
      {
        bool1 = false;
        localfi1.bQb = bool1;
        fi localfi2 = localfh.bPU;
        if (this.fip.field_isGameFile != 0)
          break label425;
        bool2 = true;
        localfi2.bQa = bool2;
        fi localfi3 = localfh.bPU;
        if (!paramBoolean)
          break label431;
        i = 1;
        label242: localfi3.bQc = i;
        localfh.bPU.bQd = this.fip.field_fromAppId;
        a.ayH().f(localfh);
        Object[] arrayOfObject2 = new Object[3];
        arrayOfObject2[0] = this.fip.field_downloadKey;
        arrayOfObject2[1] = paramString2;
        arrayOfObject2[2] = paramString1;
        aa.d("MicroMsg.FileDownloadService", "check md5 finished, report the checked result:appid:[%s],checkedMD5:[%s],origMD5:[%s]", arrayOfObject2);
        fj localfj = new fj();
        localfj.bQe.appId = this.fip.field_downloadKey;
        localfj.bQe.bQg = paramString2;
        localfj.bQe.bQf = paramString1;
        localfj.bQe.bPZ = this.fip.field_downloadUrl;
        a.ayH().f(localfj);
        if (!paramBoolean)
          break label437;
        FileDownloadManger.FileDownloadService.b(this.dnz, this.fiu, this.fir, this.fis);
      }
    }
    while (true)
    {
      this.fiu.stopSelf(this.fit);
      return;
      bool1 = true;
      break;
      label425: bool2 = false;
      break label221;
      label431: i = 0;
      break label242;
      label437: aa.b("MicroMsg.FileDownloadService", "check md5 failed, origmd5:[%s], checked md5:[%s]", new Object[] { paramString1, paramString2 });
      FileDownloadManger.FileDownloadService.b(this.dnz, this.fiu);
      continue;
      aa.d("MicroMsg.FileDownloadService", "no account login, ingnore report");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.downloader.f
 * JD-Core Version:    0.6.2
 */