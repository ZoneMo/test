package com.tencent.mm.pluginsdk.model.downloader;

import android.annotation.TargetApi;
import android.app.DownloadManager.Request;
import android.net.Uri;
import android.os.Environment;
import com.tencent.mm.compatible.g.l;
import com.tencent.mm.sdk.platformtools.ak;
import java.io.File;

@TargetApi(9)
public final class g extends DownloadManager.Request
  implements k
{
  private Uri Ky;
  private String bPX;
  private boolean bQa;
  private String dlA;
  private String doD;
  private String fiv;
  private int fiw;
  private boolean fix;
  private String mFileName;

  private g(Uri paramUri)
  {
    super(paramUri);
    this.Ky = paramUri;
    setAllowedNetworkTypes(3);
    setShowRunningNotification(true);
  }

  public g(String paramString)
  {
    this(Uri.parse(paramString));
  }

  public final String aqn()
  {
    return this.dlA;
  }

  public final Uri aqo()
  {
    return this.Ky;
  }

  public final String aqp()
  {
    return this.bPX;
  }

  public final int aqq()
  {
    return this.fiw;
  }

  public final boolean aqr()
  {
    return this.fix;
  }

  public final boolean aqs()
  {
    return this.bQa;
  }

  public final String aqt()
  {
    return this.doD;
  }

  public final void cd(boolean paramBoolean)
  {
    this.bQa = paramBoolean;
  }

  public final void ce(boolean paramBoolean)
  {
    this.fix = paramBoolean;
  }

  public final void gR(String paramString)
  {
    super.setTitle(paramString);
    this.mFileName = paramString;
  }

  public final String getFileName()
  {
    return this.mFileName;
  }

  public final String getKey()
  {
    return this.fiv;
  }

  public final void kc(int paramInt)
  {
    this.fiw = paramInt;
  }

  public final void qx(String paramString)
  {
    this.bPX = paramString;
    long l = System.currentTimeMillis();
    String str = ak.sC(paramString + l);
    setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, str + ".apk");
    this.dlA = (l.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath() + "/" + str + ".apk");
  }

  public final void qy(String paramString)
  {
    this.doD = paramString;
  }

  public final void setKey(String paramString)
  {
    this.fiv = paramString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.downloader.g
 * JD-Core Version:    0.6.2
 */