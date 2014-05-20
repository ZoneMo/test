package com.tencent.tmassistantsdk.util;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Random;

public class Cryptor
{
  private int contextStart;
  private int crypt;
  private boolean header = true;
  private byte[] key;
  private byte[] out;
  private int padding;
  private byte[] plain;
  private int pos;
  private int preCrypt;
  private byte[] prePlain;
  private Random random = new Random();

  private byte[] decipher(byte[] paramArrayOfByte)
  {
    return decipher(paramArrayOfByte, 0);
  }

  private byte[] decipher(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 16;
    long l1;
    long l2;
    long l3;
    long l4;
    long l5;
    long l6;
    long l7;
    try
    {
      l1 = getUnsignedInt(paramArrayOfByte, paramInt, 4);
      l2 = getUnsignedInt(paramArrayOfByte, paramInt + 4, 4);
      l3 = getUnsignedInt(this.key, 0, 4);
      l4 = getUnsignedInt(this.key, 4, 4);
      l5 = getUnsignedInt(this.key, 8, 4);
      l6 = getUnsignedInt(this.key, 12, 4);
      l7 = 3816266640L;
      break label132;
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(8);
      DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
      localDataOutputStream.writeInt((int)l1);
      localDataOutputStream.writeInt((int)l2);
      localDataOutputStream.close();
      byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      return null;
    }
    while (true)
    {
      label132: int j = i - 1;
      if (i <= 0)
        break;
      l2 = 0xFFFFFFFF & l2 - (l5 + (l1 << 4) ^ l1 + l7 ^ l6 + (l1 >>> 5));
      l1 = 0xFFFFFFFF & l1 - (l3 + (l2 << 4) ^ l2 + l7 ^ l4 + (l2 >>> 5));
      l7 = 0xFFFFFFFF & l7 - 2654435769L;
      i = j;
    }
  }

  private boolean decrypt8Bytes(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    for (this.pos = 0; this.pos < 8; this.pos = (1 + this.pos))
    {
      if (this.contextStart + this.pos >= paramInt2)
        return true;
      byte[] arrayOfByte = this.prePlain;
      int i = this.pos;
      arrayOfByte[i] = ((byte)(arrayOfByte[i] ^ paramArrayOfByte[(paramInt1 + this.crypt + this.pos)]));
    }
    this.prePlain = decipher(this.prePlain);
    if (this.prePlain == null)
      return false;
    this.contextStart = (8 + this.contextStart);
    this.crypt = (8 + this.crypt);
    this.pos = 0;
    return true;
  }

  private byte[] encipher(byte[] paramArrayOfByte)
  {
    int i = 16;
    long l1;
    long l2;
    long l3;
    long l4;
    long l5;
    long l6;
    long l7;
    try
    {
      l1 = getUnsignedInt(paramArrayOfByte, 0, 4);
      l2 = getUnsignedInt(paramArrayOfByte, 4, 4);
      l3 = getUnsignedInt(this.key, 0, 4);
      l4 = getUnsignedInt(this.key, 4, 4);
      l5 = getUnsignedInt(this.key, 8, 4);
      l6 = getUnsignedInt(this.key, 12, 4);
      l7 = 0L;
      break label127;
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(8);
      DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
      localDataOutputStream.writeInt((int)l1);
      localDataOutputStream.writeInt((int)l2);
      localDataOutputStream.close();
      byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      return null;
    }
    while (true)
    {
      label127: int j = i - 1;
      if (i <= 0)
        break;
      l7 = 0xFFFFFFFF & l7 + 2654435769L;
      l1 = 0xFFFFFFFF & l1 + (l3 + (l2 << 4) ^ l2 + l7 ^ l4 + (l2 >>> 5));
      l2 = 0xFFFFFFFF & l2 + (l5 + (l1 << 4) ^ l1 + l7 ^ l6 + (l1 >>> 5));
      i = j;
    }
  }

  private void encrypt8Bytes()
  {
    this.pos = 0;
    if (this.pos < 8)
    {
      if (this.header)
      {
        byte[] arrayOfByte3 = this.plain;
        int k = this.pos;
        arrayOfByte3[k] = ((byte)(arrayOfByte3[k] ^ this.prePlain[this.pos]));
      }
      while (true)
      {
        this.pos = (1 + this.pos);
        break;
        byte[] arrayOfByte2 = this.plain;
        int j = this.pos;
        arrayOfByte2[j] = ((byte)(arrayOfByte2[j] ^ this.out[(this.preCrypt + this.pos)]));
      }
    }
    System.arraycopy(encipher(this.plain), 0, this.out, this.crypt, 8);
    for (this.pos = 0; this.pos < 8; this.pos = (1 + this.pos))
    {
      byte[] arrayOfByte1 = this.out;
      int i = this.crypt + this.pos;
      arrayOfByte1[i] = ((byte)(arrayOfByte1[i] ^ this.prePlain[this.pos]));
    }
    System.arraycopy(this.plain, 0, this.prePlain, 0, 8);
    this.preCrypt = this.crypt;
    this.crypt = (8 + this.crypt);
    this.pos = 0;
    this.header = false;
  }

  private static long getUnsignedInt(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    long l = 0L;
    int i;
    if (paramInt2 > 8)
      i = paramInt1 + 8;
    while (paramInt1 < i)
    {
      l = l << 8 | 0xFF & paramArrayOfByte[paramInt1];
      paramInt1++;
      continue;
      i = paramInt1 + paramInt2;
    }
    return 0xFFFFFFFF & l | l >>> 32;
  }

  private int rand()
  {
    return this.random.nextInt();
  }

  public byte[] decrypt(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2)
  {
    this.preCrypt = 0;
    this.crypt = 0;
    this.key = paramArrayOfByte2;
    byte[] arrayOfByte1 = new byte[paramInt1 + 8];
    if ((paramInt2 % 8 != 0) || (paramInt2 < 16))
      return null;
    this.prePlain = decipher(paramArrayOfByte1, paramInt1);
    this.pos = (0x7 & this.prePlain[0]);
    int i = -10 + (paramInt2 - this.pos);
    if (i < 0)
      return null;
    for (int j = paramInt1; j < arrayOfByte1.length; j++)
      arrayOfByte1[j] = 0;
    this.out = new byte[i];
    this.preCrypt = 0;
    this.crypt = 8;
    this.contextStart = 8;
    this.pos = (1 + this.pos);
    this.padding = 1;
    byte[] arrayOfByte2 = arrayOfByte1;
    while (true)
      if (this.padding <= 2)
      {
        if (this.pos < 8)
        {
          this.pos = (1 + this.pos);
          this.padding = (1 + this.padding);
        }
        if (this.pos == 8)
          if (!decrypt8Bytes(paramArrayOfByte1, paramInt1, paramInt2))
            return null;
      }
      else
      {
        int k = i;
        byte[] arrayOfByte3 = arrayOfByte2;
        int m = 0;
        byte[] arrayOfByte4 = arrayOfByte3;
        while (true)
          if (k != 0)
          {
            if (this.pos < 8)
            {
              this.out[m] = ((byte)(arrayOfByte4[(paramInt1 + this.preCrypt + this.pos)] ^ this.prePlain[this.pos]));
              m++;
              k--;
              this.pos = (1 + this.pos);
            }
            if (this.pos == 8)
            {
              this.preCrypt = (-8 + this.crypt);
              if (!decrypt8Bytes(paramArrayOfByte1, paramInt1, paramInt2))
                return null;
            }
          }
          else
          {
            this.padding = 1;
            byte[] arrayOfByte5 = arrayOfByte4;
            while (this.padding < 8)
            {
              if (this.pos < 8)
              {
                if ((arrayOfByte5[(paramInt1 + this.preCrypt + this.pos)] ^ this.prePlain[this.pos]) != 0)
                  return null;
                this.pos = (1 + this.pos);
              }
              if (this.pos == 8)
              {
                this.preCrypt = this.crypt;
                if (!decrypt8Bytes(paramArrayOfByte1, paramInt1, paramInt2))
                  return null;
                arrayOfByte5 = paramArrayOfByte1;
              }
              this.padding = (1 + this.padding);
            }
            return this.out;
            arrayOfByte4 = paramArrayOfByte1;
          }
        arrayOfByte2 = paramArrayOfByte1;
      }
  }

  public byte[] decrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    return decrypt(paramArrayOfByte1, 0, paramArrayOfByte1.length, paramArrayOfByte2);
  }

  public byte[] encrypt(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2)
  {
    this.plain = new byte[8];
    this.prePlain = new byte[8];
    this.pos = 1;
    this.padding = 0;
    this.preCrypt = 0;
    this.crypt = 0;
    this.key = paramArrayOfByte2;
    this.header = true;
    this.pos = ((paramInt2 + 10) % 8);
    if (this.pos != 0)
      this.pos = (8 - this.pos);
    this.out = new byte[10 + (paramInt2 + this.pos)];
    this.plain[0] = ((byte)(0xF8 & rand() | this.pos));
    for (int i = 1; i <= this.pos; i++)
      this.plain[i] = ((byte)(0xFF & rand()));
    this.pos = (1 + this.pos);
    for (int j = 0; j < 8; j++)
      this.prePlain[j] = 0;
    this.padding = 1;
    while (this.padding <= 2)
    {
      if (this.pos < 8)
      {
        byte[] arrayOfByte3 = this.plain;
        int i4 = this.pos;
        this.pos = (i4 + 1);
        arrayOfByte3[i4] = ((byte)(0xFF & rand()));
        this.padding = (1 + this.padding);
      }
      if (this.pos == 8)
        encrypt8Bytes();
    }
    int k = paramInt1;
    int m = paramInt2;
    int i1;
    if (m > 0)
    {
      if (this.pos >= 8)
        break label437;
      byte[] arrayOfByte2 = this.plain;
      int i3 = this.pos;
      this.pos = (i3 + 1);
      i1 = k + 1;
      arrayOfByte2[i3] = paramArrayOfByte1[k];
    }
    for (int i2 = m - 1; ; i2 = m)
    {
      if (this.pos == 8)
      {
        encrypt8Bytes();
        m = i2;
        k = i1;
        break;
        this.padding = 1;
        while (this.padding <= 7)
        {
          if (this.pos < 8)
          {
            byte[] arrayOfByte1 = this.plain;
            int n = this.pos;
            this.pos = (n + 1);
            arrayOfByte1[n] = 0;
            this.padding = (1 + this.padding);
          }
          if (this.pos == 8)
            encrypt8Bytes();
        }
        return this.out;
      }
      m = i2;
      k = i1;
      break;
      label437: i1 = k;
    }
  }

  public byte[] encrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    return encrypt(paramArrayOfByte1, 0, paramArrayOfByte1.length, paramArrayOfByte2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.util.Cryptor
 * JD-Core Version:    0.6.2
 */