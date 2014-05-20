package com.qq.a.a;

import com.qq.taf.RequestPacket;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceUtil;
import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.util.HashMap;

public final class d extends c
{
  static HashMap Ta = null;
  protected RequestPacket SZ = new RequestPacket();

  public d()
  {
    this.SZ.iVersion = 2;
  }

  public final void af(String paramString)
  {
    this.SZ.sServantName = paramString;
  }

  public final void ag(String paramString)
  {
    this.SZ.sFuncName = paramString;
  }

  public final void c(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length < 4)
      throw new IllegalArgumentException("decode package must include size head");
    ByteBuffer localByteBuffer = ByteBuffer.allocate(4);
    byte[] arrayOfByte1 = new byte[4];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte1, 0, arrayOfByte1.length);
    localByteBuffer.put(arrayOfByte1).flip();
    byte[] arrayOfByte2 = new byte[-4 + localByteBuffer.getInt()];
    System.arraycopy(paramArrayOfByte, 4, arrayOfByte2, 0, arrayOfByte2.length);
    try
    {
      JceInputStream localJceInputStream1 = new JceInputStream(arrayOfByte2);
      localJceInputStream1.setServerEncoding(this.SX);
      readFrom(localJceInputStream1);
      JceInputStream localJceInputStream2 = new JceInputStream(this.SZ.sBuffer);
      localJceInputStream2.setServerEncoding(this.SX);
      if (Ta == null)
      {
        Ta = new HashMap();
        HashMap localHashMap = new HashMap();
        localHashMap.put("", new byte[0]);
        Ta.put("", localHashMap);
      }
      this.SU = localJceInputStream2.readMap(Ta, 0, false);
      return;
    }
    catch (Exception localException)
    {
      System.out.println("decode error " + e.bytes2HexStr(paramArrayOfByte));
      throw new RuntimeException(localException);
    }
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    this.SZ.display(paramStringBuilder, paramInt);
  }

  public final byte[] lN()
  {
    if (this.SZ.sServantName.equals(""))
      throw new IllegalArgumentException("servantName can not is null");
    if (this.SZ.sFuncName.equals(""))
      throw new IllegalArgumentException("funcName can not is null");
    JceOutputStream localJceOutputStream1 = new JceOutputStream(0);
    localJceOutputStream1.setServerEncoding(this.SX);
    localJceOutputStream1.write(this.SU, 0);
    this.SZ.sBuffer = JceUtil.getJceBufArray(localJceOutputStream1.getByteBuffer());
    JceOutputStream localJceOutputStream2 = new JceOutputStream(0);
    localJceOutputStream2.setServerEncoding(this.SX);
    writeTo(localJceOutputStream2);
    byte[] arrayOfByte = JceUtil.getJceBufArray(localJceOutputStream2.getByteBuffer());
    int i = arrayOfByte.length;
    ByteBuffer localByteBuffer = ByteBuffer.allocate(i + 4);
    localByteBuffer.putInt(i + 4).put(arrayOfByte).flip();
    return localByteBuffer.array();
  }

  public final void put(String paramString, Object paramObject)
  {
    if (paramString.startsWith("."))
      throw new IllegalArgumentException("put name can not startwith . ");
    super.put(paramString, paramObject);
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.SZ.readFrom(paramJceInputStream);
  }

  public final void setRequestId(int paramInt)
  {
    this.SZ.iRequestId = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    this.SZ.writeTo(paramJceOutputStream);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.qq.a.a.d
 * JD-Core Version:    0.6.2
 */