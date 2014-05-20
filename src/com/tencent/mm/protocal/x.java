package com.tencent.mm.protocal;

import com.tencent.mm.a.b;
import com.tencent.mm.pointers.PByteArray;
import com.tencent.mm.sdk.platformtools.aa;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import junit.framework.Assert;

public final class x extends p
  implements n
{
  private int bNk = 0;
  private int bOY = 0;
  private int fyd = 0;
  private String fye = "";
  private byte[] fyf = new byte[0];

  private byte[] aw(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return null;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
      localDataOutputStream.writeByte(this.bNk);
      localDataOutputStream.writeByte(this.bOY);
      localDataOutputStream.write(paramArrayOfByte);
      localDataOutputStream.close();
      return localByteArrayOutputStream.toByteArray();
    }
    catch (IOException localIOException)
    {
      while (true)
        aa.e("MicroMsg.MMDirectSend", "direct merge all failed, err=" + localIOException.getMessage());
    }
  }

  private byte[] awR()
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
      localDataOutputStream.writeInt(this.fyd);
      localDataOutputStream.writeShort(this.fye.getBytes().length);
      localDataOutputStream.write(this.fye.getBytes());
      localDataOutputStream.writeShort(this.fyf.length);
      localDataOutputStream.write(this.fyf);
      localDataOutputStream.close();
      return localByteArrayOutputStream.toByteArray();
    }
    catch (IOException localIOException)
    {
      while (true)
        aa.e("MicroMsg.MMDirectSend", "direct merge tail failed, err=" + localIOException.getMessage());
    }
  }

  public final void av(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      this.fyf = paramArrayOfByte;
      return;
    }
  }

  public final boolean awI()
  {
    return true;
  }

  public final void awP()
  {
    this.bNk = 111;
  }

  public final void awQ()
  {
    this.bOY = 0;
  }

  public final int getCmdId()
  {
    return 8;
  }

  public final void lj(int paramInt)
  {
    this.fyd = paramInt;
  }

  public final void rw(String paramString)
  {
    if (paramString != null);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      this.fye = paramString;
      return;
    }
  }

  public final int wy()
  {
    return 10;
  }

  public final byte[] wz()
  {
    byte[] arrayOfByte = awR();
    PByteArray localPByteArray = new PByteArray();
    b.a(localPByteArray, arrayOfByte, w.rv(super.xd()));
    return aw(localPByteArray.value);
  }

  public final boolean xh()
  {
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.x
 * JD-Core Version:    0.6.2
 */