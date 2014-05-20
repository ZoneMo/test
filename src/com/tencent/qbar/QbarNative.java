package com.tencent.qbar;

import com.tencent.mm.sdk.platformtools.aa;
import java.io.UnsupportedEncodingException;

public class QbarNative
{
  public static byte[] data = new byte[3000];
  public static byte[] hvD = new byte[100];
  public static byte[] hvE = new byte[100];
  public static int[] hvF = new int[3];

  public static native int GetOneResult(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, int[] paramArrayOfInt);

  public static native int GetVersion();

  public static native int Init(int paramInt1, int paramInt2, String paramString1, String paramString2);

  public static native int Release();

  public static native int ScanImage(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3);

  public static native int SetReaders(int[] paramArrayOfInt, int paramInt);

  public static int a(StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2)
  {
    int i = GetOneResult(hvD, data, hvE, hvF);
    try
    {
      String str = new String(hvE, 0, hvF[2], "UTF-8");
      paramStringBuilder1.append(new String(hvD, 0, hvF[0], str));
      paramStringBuilder2.append(new String(data, 0, hvF[1], str));
      aa.v("TAG", "type:" + paramStringBuilder1);
      aa.v("TAG", "data:" + paramStringBuilder2);
      return i;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qbar.QbarNative
 * JD-Core Version:    0.6.2
 */