package com.tencent.mm.ui.tools;

import android.net.Uri;
import android.os.Looper;

final class fq extends Thread
{
  private Uri Ky;
  private fr hmp;

  public fq(ShareImgUI paramShareImgUI, Uri paramUri, fr paramfr)
  {
    this.Ky = paramUri;
    this.hmp = paramfr;
  }

  public final void run()
  {
    Looper.prepare();
    this.hmo.filePath = ShareImgUI.a(this.hmo, this.Ky);
    if (this.hmp != null)
      this.hmp.aNN();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.fq
 * JD-Core Version:    0.6.2
 */