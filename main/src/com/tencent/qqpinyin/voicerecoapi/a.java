package com.tencent.qqpinyin.voicerecoapi;

public final class a
{
  public static int hwa = 2000;
  private byte[] hwb = null;
  private byte[] hwc = null;
  private int hwd = 0;
  private int hwe = 0;
  TRSpeexNative hwf = new TRSpeexNative();

  public final int aPK()
  {
    int i;
    if (this.hwd != 0)
      i = -103;
    do
    {
      return i;
      i = this.hwf.nativeTRSpeexInit();
    }
    while (i < 0);
    this.hwd = i;
    this.hwb = new byte[10 * hwa];
    return 0;
  }

  public final int aPL()
  {
    if (this.hwd == 0)
      return -102;
    this.hwb = null;
    int i = this.hwf.nativeTRSpeexRelease(this.hwd);
    this.hwd = 0;
    return i;
  }

  public final int aPM()
  {
    int i;
    if (this.hwe != 0)
      i = -103;
    do
    {
      return i;
      i = this.hwf.nativeTRSpeexDecodeInit();
    }
    while (i < 0);
    this.hwe = i;
    this.hwc = new byte[15 * hwa];
    return 0;
  }

  public final int aPN()
  {
    if (this.hwe == 0)
      return -102;
    this.hwc = null;
    int i = this.hwf.nativeTRSpeexDecodeRelease(this.hwe);
    this.hwe = 0;
    return i;
  }

  public final byte[] m(byte[] paramArrayOfByte, int paramInt)
  {
    if (this.hwd == 0)
      throw new b(-102);
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
      throw new b(-104);
    int i = this.hwf.nativeTRSpeexEncode(this.hwd, paramArrayOfByte, 0, paramInt, this.hwb);
    if (i < 0)
      throw new b(i);
    if (i == 0)
      return null;
    byte[] arrayOfByte = new byte[i];
    System.arraycopy(this.hwb, 0, arrayOfByte, 0, i);
    return arrayOfByte;
  }

  public final byte[] n(byte[] paramArrayOfByte, int paramInt)
  {
    if (this.hwe == 0)
      throw new b(-102);
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
      throw new b(-104);
    int i = this.hwf.nativeTRSpeexDecode(this.hwe, paramArrayOfByte, 0, paramInt, this.hwc);
    if (i < 0)
      throw new b(i);
    if (i == 0)
      return null;
    byte[] arrayOfByte = new byte[i];
    System.arraycopy(this.hwc, 0, arrayOfByte, 0, i);
    return arrayOfByte;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qqpinyin.voicerecoapi.a
 * JD-Core Version:    0.6.2
 */