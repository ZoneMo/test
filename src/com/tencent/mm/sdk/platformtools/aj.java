package com.tencent.mm.sdk.platformtools;

import java.nio.ByteBuffer;

final class aj
{
  private ByteBuffer AO = null;

  public final ByteBuffer azo()
  {
    return this.AO;
  }

  public final void cm(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    this.AO = ByteBuffer.allocateDirect(i);
    this.AO.position(0);
    this.AO.put(paramArrayOfByte, 0, i);
    this.AO.position(0);
  }

  public final int getOffset()
  {
    return this.AO.position();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.aj
 * JD-Core Version:    0.6.2
 */