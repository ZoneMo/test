package com.tencent.mm.plugin.voicereminder.a;

import com.tencent.mm.sdk.platformtools.aa;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import junit.framework.Assert;

public final class d
{
  private RandomAccessFile cwi = null;
  private String rD = "";

  public d(String paramString)
  {
    this.rD = paramString;
  }

  public static int hb(String paramString)
  {
    boolean bool;
    File localFile;
    if (paramString.length() >= 0)
    {
      bool = true;
      Assert.assertTrue(bool);
      localFile = new File(paramString);
      if (localFile.exists())
        break label36;
    }
    label36: int i;
    do
    {
      return 0;
      bool = false;
      break;
      i = (int)localFile.length();
    }
    while (i <= 0);
    return i;
  }

  private boolean hj(String paramString)
  {
    boolean bool1;
    if (this.rD.length() >= 0)
      bool1 = true;
    while (true)
    {
      Assert.assertTrue(bool1);
      boolean bool2;
      label25: boolean bool3;
      if (this.cwi == null)
      {
        bool2 = true;
        Assert.assertTrue(bool2);
        if ((!paramString.equals("r")) && (!paramString.equals("rw")))
          break label116;
        bool3 = true;
        Assert.assertTrue(bool3);
        aa.d("MicroMsg.SpxFileOperator", "Open file:" + this.cwi + " mode:" + paramString);
      }
      try
      {
        this.cwi = new RandomAccessFile(this.rD, paramString);
        return true;
        bool1 = false;
        continue;
        bool2 = false;
        break label25;
        label116: bool3 = false;
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.SpxFileOperator", "ERR: OpenFile[" + this.rD + "] failed:[" + localException.getMessage() + "]");
        this.cwi = null;
      }
    }
    return false;
  }

  public final void Eb()
  {
    if (this.cwi != null);
    try
    {
      this.cwi.close();
      this.cwi = null;
      aa.d("MicroMsg.SpxFileOperator", "Close :" + this.rD);
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  public final e jo(int paramInt)
  {
    e locale = new e();
    if (paramInt < 0)
    {
      locale.ret = -3;
      return locale;
    }
    if ((this.cwi == null) && (!hj("r")))
    {
      locale.ret = -2;
      return locale;
    }
    locale.buf = new byte[6000];
    try
    {
      long l = this.cwi.length();
      this.cwi.seek(paramInt);
      int i = this.cwi.read(locale.buf, 0, 6000);
      aa.d("MicroMsg.SpxFileOperator", "DBG: ReadFile[" + this.rD + "] readOffset:" + paramInt + " readRet:" + i + " fileNow:" + this.cwi.getFilePointer() + " fileSize:" + l);
      if (i < 0)
        i = 0;
      locale.ccL = i;
      locale.cBg = (i + paramInt);
      locale.ret = 0;
      return locale;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.SpxFileOperator", "ERR: ReadFile[" + this.rD + "] Offset:" + paramInt + "  failed:[" + localException.getMessage() + "] ");
      Eb();
      locale.ret = -1;
    }
    return locale;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.a.d
 * JD-Core Version:    0.6.2
 */