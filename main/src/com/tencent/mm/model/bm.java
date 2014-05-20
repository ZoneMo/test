package com.tencent.mm.model;

import com.tencent.mm.sdk.platformtools.av;
import com.tencent.mm.storage.h;
import java.io.File;
import java.io.IOException;

final class bm
  implements av
{
  public final void du(String paramString)
  {
    File localFile = new File(h.cfC + "crash_record_file");
    if (!localFile.exists());
    try
    {
      localFile.createNewFile();
      label41: if (be.ui() != null)
        be.ui().run();
      if (be.uz() != null)
        be.uz().bX(paramString);
      return;
    }
    catch (IOException localIOException)
    {
      break label41;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.bm
 * JD-Core Version:    0.6.2
 */