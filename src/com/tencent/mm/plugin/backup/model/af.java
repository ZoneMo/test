package com.tencent.mm.plugin.backup.model;

import java.io.File;

public final class af
{
  public static void iB(String paramString)
  {
    File localFile1 = new File(paramString);
    if (!localFile1.exists())
      localFile1.mkdirs();
    File localFile2 = new File(paramString + "mmbakItem/");
    if (!localFile2.exists())
      localFile2.mkdirs();
    File localFile3 = new File(paramString + "mmbakMeida/");
    if (!localFile3.exists())
      localFile3.mkdirs();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.af
 * JD-Core Version:    0.6.2
 */