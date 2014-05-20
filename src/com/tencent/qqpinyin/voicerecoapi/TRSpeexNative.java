package com.tencent.qqpinyin.voicerecoapi;

class TRSpeexNative
{
  static
  {
    System.loadLibrary("voice");
  }

  native int nativeTRSpeexDecode(int paramInt1, byte[] paramArrayOfByte1, int paramInt2, int paramInt3, byte[] paramArrayOfByte2);

  native int nativeTRSpeexDecodeInit();

  native int nativeTRSpeexDecodeRelease(int paramInt);

  native int nativeTRSpeexEncode(int paramInt1, byte[] paramArrayOfByte1, int paramInt2, int paramInt3, byte[] paramArrayOfByte2);

  native int nativeTRSpeexInit();

  native int nativeTRSpeexRelease(int paramInt);
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qqpinyin.voicerecoapi.TRSpeexNative
 * JD-Core Version:    0.6.2
 */