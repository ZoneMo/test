package com.tencent.mm.modelvoice;

import com.tencent.mm.pointers.PByteArray;

public final class i
{
  private int ccF;

  public static void release()
  {
    MediaRecorder.Eg();
  }

  public final int a(byte[] paramArrayOfByte, int paramInt1, PByteArray paramPByteArray, int paramInt2)
  {
    if (paramPByteArray == null)
      return -2;
    if ((!MediaRecorder.b(this.ccF, paramArrayOfByte, paramInt1, paramPByteArray, paramInt2)) || (paramPByteArray.value == null))
      return -1;
    return paramPByteArray.value.length;
  }

  public final boolean eB(int paramInt)
  {
    this.ccF = paramInt;
    MediaRecorder.Ef();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.i
 * JD-Core Version:    0.6.2
 */