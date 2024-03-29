package com.qq.taf.jce.dynamic;

import com.qq.taf.jce.JceDecodeException;

public class JceField
{
  private static ZeroField[] zs = new ZeroField[256];
  private int tag;

  static
  {
    for (int i = 0; ; i++)
    {
      if (i >= zs.length)
        return;
      zs[i] = new ZeroField(i);
    }
  }

  JceField(int paramInt)
  {
    this.tag = paramInt;
  }

  public static JceField create(byte paramByte, int paramInt)
  {
    return new ByteField(paramByte, paramInt);
  }

  public static JceField create(double paramDouble, int paramInt)
  {
    return new DoubleField(paramDouble, paramInt);
  }

  public static JceField create(float paramFloat, int paramInt)
  {
    return new FloatField(paramFloat, paramInt);
  }

  public static JceField create(int paramInt1, int paramInt2)
  {
    return new IntField(paramInt1, paramInt2);
  }

  public static JceField create(long paramLong, int paramInt)
  {
    return new LongField(paramLong, paramInt);
  }

  public static JceField create(String paramString, int paramInt)
  {
    return new StringField(paramString, paramInt);
  }

  public static JceField create(short paramShort, int paramInt)
  {
    return new ShortField(paramShort, paramInt);
  }

  public static JceField create(byte[] paramArrayOfByte, int paramInt)
  {
    return new ByteArrayField(paramArrayOfByte, paramInt);
  }

  public static JceField createList(JceField[] paramArrayOfJceField, int paramInt)
  {
    return new ListField(paramArrayOfJceField, paramInt);
  }

  public static JceField createMap(JceField[] paramArrayOfJceField1, JceField[] paramArrayOfJceField2, int paramInt)
  {
    return new MapField(paramArrayOfJceField1, paramArrayOfJceField2, paramInt);
  }

  public static JceField createStruct(JceField[] paramArrayOfJceField, int paramInt)
  {
    return new StructField(paramArrayOfJceField, paramInt);
  }

  public static JceField createZero(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= 255))
      throw new JceDecodeException("invalid tag: " + paramInt);
    return zs[paramInt];
  }

  public int getTag()
  {
    return this.tag;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.qq.taf.jce.dynamic.JceField
 * JD-Core Version:    0.6.2
 */