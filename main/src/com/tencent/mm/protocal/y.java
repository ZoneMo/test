package com.tencent.mm.protocal;

import com.tencent.mm.a.b;
import com.tencent.mm.pointers.PByteArray;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;

public final class y extends q
  implements o
{
  private int bNk = 0;
  private int bOY = 0;
  private byte[] content = new byte[0];
  private String cxp = "";
  private int fyd = 0;
  private String fyg = "";

  private byte[] ax(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length < 2))
    {
      aa.e("MicroMsg.MMDirectSend", "parse all failed, empty buf");
      return null;
    }
    byte[] arrayOfByte = new byte[-2 + paramArrayOfByte.length];
    try
    {
      ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
      DataInputStream localDataInputStream = new DataInputStream(localByteArrayInputStream);
      this.bNk = localDataInputStream.readByte();
      this.bOY = localDataInputStream.readByte();
      localDataInputStream.readFully(arrayOfByte);
      aa.d("MicroMsg.MMDirectSend", "cmdId:" + this.bNk + ", flag=" + this.bOY + ", tail len=" + arrayOfByte.length);
      localByteArrayInputStream.close();
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      aa.e("MicroMsg.MMDirectSend", "direct parse all failed, err=" + localIOException.getMessage());
    }
    return arrayOfByte;
  }

  public final String Ch()
  {
    return this.cxp;
  }

  public final byte[] Ci()
  {
    return this.content;
  }

  public final boolean awI()
  {
    return true;
  }

  public final void ex(String paramString)
  {
    this.fyg = paramString;
  }

  public final int getCmdId()
  {
    return 8;
  }

  public final int s(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte1 = w.rv(this.fyg);
    PByteArray localPByteArray = new PByteArray();
    if (b.b(localPByteArray, ax(paramArrayOfByte), arrayOfByte1) != 0)
    {
      byte[] arrayOfByte4 = new byte[16];
      for (int k = 0; k < 16; k++)
        arrayOfByte4[k] = 0;
      if (b.b(localPByteArray, ax(paramArrayOfByte), arrayOfByte4) != 0)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = cj.cn(arrayOfByte1);
        aa.b("MicroMsg.MMDirectSend", "decrypting from buffer using key=%s error", arrayOfObject);
        return -1;
      }
    }
    byte[] arrayOfByte2 = localPByteArray.value;
    if (arrayOfByte2 == null)
    {
      aa.e("MicroMsg.MMDirectSend", "parse tail failed, empty buf");
      return 0;
    }
    DataInputStream localDataInputStream;
    int i;
    try
    {
      localDataInputStream = new DataInputStream(new ByteArrayInputStream(arrayOfByte2));
      this.fyd = localDataInputStream.readInt();
      aa.d("MicroMsg.MMDirectSend", "seq=" + this.fyd);
      i = localDataInputStream.readShort();
      if (i < 0)
        throw new IOException("sender empty");
    }
    catch (IOException localIOException)
    {
      aa.e("MicroMsg.MMDirectSend", "direct parse all failed, err=" + localIOException.getMessage());
      return 0;
    }
    byte[] arrayOfByte3 = new byte[i];
    localDataInputStream.readFully(arrayOfByte3);
    this.cxp = new String(arrayOfByte3);
    aa.d("MicroMsg.MMDirectSend", "recievers len=" + arrayOfByte3.length + ", sender=" + this.cxp);
    int j = localDataInputStream.readShort();
    if (j < 0)
      throw new IOException("content empty");
    this.content = new byte[j];
    localDataInputStream.readFully(this.content);
    aa.d("MicroMsg.MMDirectSend", "content len=" + this.content.length);
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.y
 * JD-Core Version:    0.6.2
 */