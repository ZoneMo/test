package com.tencent.mm.as;

import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;

final class c
  implements Runnable
{
  c(a parama)
  {
  }

  public final void run()
  {
    int i = a.cm(cj.FD() - 864000000L);
    File[] arrayOfFile = new File(a.a(this.hvC)).listFiles();
    if (arrayOfFile == null);
    while (true)
    {
      return;
      for (int j = 0; j < arrayOfFile.length; j++)
      {
        File localFile = arrayOfFile[j];
        String str = localFile.getName();
        if ((str != null) && (str.startsWith("wc_")))
        {
          int k = str.indexOf("wc_");
          if (k >= 0)
          {
            int m = k + 3;
            int n = str.indexOf(".bin");
            if ((n > 0) && (m < n) && (cj.getInt(str.substring(m, n), -1) < i))
              localFile.delete();
          }
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.as.c
 * JD-Core Version:    0.6.2
 */