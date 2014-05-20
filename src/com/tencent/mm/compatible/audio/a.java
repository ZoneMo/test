package com.tencent.mm.compatible.audio;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class a
{
  private int caY = 0;
  private int caZ = 0;
  private byte[] cba = null;
  private int cbb = 0;
  private int cbc = 0;
  private boolean cbd = false;
  private Lock cbe = null;

  public final int bw(int paramInt)
  {
    if (paramInt <= 0);
    do
    {
      return -1;
      this.cba = new byte[paramInt];
    }
    while (this.cba == null);
    this.caY = paramInt;
    if (this.cbd)
      this.cbe = new ReentrantLock();
    return 0;
  }

  public final int c(byte[] paramArrayOfByte, int paramInt)
  {
    int i;
    if (paramInt > 0)
    {
      if (this.cbd)
        this.cbe.lock();
      if (this.cbb != this.cbc)
        break label43;
      i = this.caY;
      if (paramInt <= i)
        break label151;
    }
    label43: 
    while ((1 + this.cbc) % this.caY == this.cbb)
    {
      return -1;
      if ((1 + this.cbc) % this.caY == this.cbb)
      {
        i = 0;
        break;
      }
      if (this.cbb < this.cbc)
        this.caZ = (this.cbc - this.cbb);
      while (true)
      {
        if (this.cbd)
          this.cbe.unlock();
        i = this.caY - this.caZ;
        break;
        if (this.cbb > this.cbc)
          this.caZ = (this.cbc + this.caY - this.cbb);
      }
    }
    label151: if (this.cbd)
      this.cbe.lock();
    if ((this.cbb < this.cbc) && (paramInt > this.caY - this.cbc))
    {
      System.arraycopy(paramArrayOfByte, 0, this.cba, this.cbc, this.caY - this.cbc);
      System.arraycopy(paramArrayOfByte, this.caY - this.cbc, this.cba, 0, paramInt - (this.caY - this.cbc));
      this.cbc = (paramInt - (this.caY - this.cbc));
    }
    for (this.cbc %= this.caY; ; this.cbc = ((paramInt + this.cbc) % this.caY))
    {
      if (this.cbd)
        this.cbe.unlock();
      return 0;
      System.arraycopy(paramArrayOfByte, 0, this.cba, this.cbc, paramInt);
    }
  }

  public final int d(byte[] paramArrayOfByte, int paramInt)
  {
    if ((paramInt <= 0) || (paramInt > oY()) || (paramArrayOfByte == null));
    while (this.cbb == this.cbc)
      return -1;
    if (this.cbd)
      this.cbe.lock();
    if (this.cbb < this.cbc)
    {
      System.arraycopy(this.cba, this.cbb, paramArrayOfByte, 0, paramInt);
      this.cbb = (paramInt + this.cbb);
    }
    while (true)
    {
      if (this.cbd)
        this.cbe.unlock();
      return 0;
      if (paramInt <= this.caY - this.cbb)
      {
        System.arraycopy(this.cba, this.cbb, paramArrayOfByte, 0, paramInt);
        this.cbb = (paramInt + this.cbb);
      }
      else
      {
        System.arraycopy(this.cba, this.cbb, paramArrayOfByte, 0, this.caY - this.cbb);
        System.arraycopy(this.cba, 0, paramArrayOfByte, this.caY - this.cbb, paramInt - (this.caY - this.cbb));
        this.cbb = (paramInt - (this.caY - this.cbb));
      }
    }
  }

  public final int oW()
  {
    this.caY = 0;
    this.caZ = 0;
    this.cbb = 0;
    this.cbc = 0;
    this.cba = null;
    return 0;
  }

  public final int oX()
  {
    return this.caY;
  }

  public final int oY()
  {
    if (this.cbd)
      this.cbe.lock();
    if (this.cbb == this.cbc)
      return 0;
    if (this.cbb < this.cbc)
      this.caZ = (this.cbc - this.cbb);
    while (true)
    {
      if (this.cbd)
        this.cbe.unlock();
      return this.caZ;
      if (this.cbb > this.cbc)
        this.caZ = (this.cbc + this.caY - this.cbb);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.a
 * JD-Core Version:    0.6.2
 */