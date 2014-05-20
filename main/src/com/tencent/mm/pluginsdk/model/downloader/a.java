package com.tencent.mm.pluginsdk.model.downloader;

import java.io.File;

final class a
  implements Runnable
{
  a(String paramString, c paramc, File paramFile)
  {
  }

  public final void run()
  {
    b localb = new b(this.fii, this.fij);
    File[] arrayOfFile = new File[1];
    arrayOfFile[0] = this.dRo;
    localb.execute(arrayOfFile);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.downloader.a
 * JD-Core Version:    0.6.2
 */