package com.tencent.mm.modelvoice;

import com.tencent.mm.sdk.platformtools.aa;
import java.io.IOException;
import java.io.RandomAccessFile;
import junit.framework.Assert;

public final class bb
  implements b
{
  private RandomAccessFile cwi = null;
  private String rD = "";

  public bb(String paramString)
  {
    this.rD = paramString;
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

  public final u O(int paramInt1, int paramInt2)
  {
    u localu = new u();
    if ((paramInt1 < 0) || (paramInt2 <= 0))
    {
      localu.ret = -3;
      return localu;
    }
    if ((this.cwi == null) && (!hj("r")))
    {
      localu.ret = -2;
      return localu;
    }
    localu.buf = new byte[paramInt2];
    try
    {
      long l = this.cwi.length();
      this.cwi.seek(paramInt1);
      int i = this.cwi.read(localu.buf, 0, paramInt2);
      aa.d("MicroMsg.SpxFileOperator", "DBG: ReadFile[" + this.rD + "] readOffset:" + paramInt1 + " readRet:" + i + " fileNow:" + this.cwi.getFilePointer() + " fileSize:" + l);
      if (i < 0)
        i = 0;
      localu.ccL = i;
      localu.cBg = (i + paramInt1);
      localu.ret = 0;
      return localu;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.SpxFileOperator", "ERR: ReadFile[" + this.rD + "] Offset:" + paramInt1 + "  failed:[" + localException.getMessage() + "] ");
      Eb();
      localu.ret = -1;
    }
    return localu;
  }

  public final int getFormat()
  {
    return 1;
  }

  public final int write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    boolean bool1 = true;
    if ((paramArrayOfByte.length > 0) && (paramInt1 > 0));
    for (boolean bool2 = bool1; ; bool2 = false)
    {
      Assert.assertTrue(bool2);
      if ((this.cwi != null) || (hj("rw")))
        break;
      return -1;
    }
    while (true)
    {
      try
      {
        this.cwi.seek(paramInt2);
        this.cwi.write(paramArrayOfByte, 0, paramInt1);
        long l = this.cwi.getFilePointer();
        int i = (int)l;
        int j = paramInt2 + paramInt1;
        if (i == j)
        {
          bool3 = bool1;
          Assert.assertTrue(bool3);
          if (j < 0)
            break label178;
          Assert.assertTrue(bool1);
          return j;
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.SpxFileOperator", "ERR: WriteFile[" + this.rD + "] Offset:" + paramInt2 + " failed:[" + localException.getMessage() + "]");
        Eb();
        return -3;
      }
      boolean bool3 = false;
      continue;
      label178: bool1 = false;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.bb
 * JD-Core Version:    0.6.2
 */