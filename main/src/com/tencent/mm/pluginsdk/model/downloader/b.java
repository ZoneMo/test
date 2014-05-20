package com.tencent.mm.pluginsdk.model.downloader;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ak;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;

final class b extends AsyncTask
{
  private String bQf;
  private String bQg = "";
  private c fik;

  public b(String paramString, c paramc)
  {
    this.bQf = paramString;
    this.fik = paramc;
  }

  private Boolean a(File[] paramArrayOfFile)
  {
    if ((paramArrayOfFile == null) || (paramArrayOfFile.length == 0))
    {
      aa.e("MicroMsg.AsynCheckMd5Task", "no file param exist ");
      return Boolean.valueOf(false);
    }
    if ((!TextUtils.isEmpty(this.bQf)) && (this.bQf.equals("qq_browser_apk_md5")))
      return Boolean.valueOf(true);
    try
    {
      long l1 = System.currentTimeMillis();
      this.bQg = ak.i(paramArrayOfFile[0]);
      long l2 = System.currentTimeMillis();
      aa.d("MicroMsg.AsynCheckMd5Task", "start time: " + l1 + "end time: " + l2 + ", total Time: " + (l2 - l1));
      aa.d("MicroMsg.AsynCheckMd5Task", "origMd5 : " + this.bQf + ", checkedMd5 :" + this.bQg);
      if ((!cj.hX(this.bQg)) && (!cj.hX(this.bQf)) && (this.bQf.equalsIgnoreCase(this.bQg)))
        return Boolean.valueOf(true);
      if ((!cj.hX(this.bQf)) && (this.bQg == null))
      {
        File localFile = paramArrayOfFile[0];
        if ((localFile != null) && (localFile.exists()))
        {
          aa.i("MicroMsg.AsynCheckMd5Task", "check from file failed, may caused by low memory while check md5");
          Boolean localBoolean = Boolean.valueOf(true);
          return localBoolean;
        }
      }
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.AsynCheckMd5Task", "check md5 failed: " + localException.getMessage());
    }
    return Boolean.valueOf(false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.downloader.b
 * JD-Core Version:    0.6.2
 */