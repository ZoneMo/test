package com.tencent.imageboost;

public class ImgProcessScan
{
  public static native int FocusInit(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3, int paramInt4);

  public static native boolean FocusPro(byte[] paramArrayOfByte, boolean paramBoolean, boolean[] paramArrayOfBoolean);

  public static native int FocusRelease();

  public static int Release()
  {
    return nativeRelease();
  }

  public static int a(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    if ((paramInt1 <= 0) || (paramInt2 <= 0))
      return -1;
    if (paramInt3 == 1)
      return FocusInit(paramInt1, paramInt2, paramBoolean, 6, 140);
    if (paramInt3 == 2)
      return FocusInit(paramInt1, paramInt2, paramBoolean, 8, 120);
    if (paramInt3 == 4)
      return FocusInit(paramInt1, paramInt2, paramBoolean, 13, 80);
    if (paramInt3 == 5)
      return FocusInit(paramInt1, paramInt2, paramBoolean, 15, 65);
    return FocusInit(paramInt1, paramInt2, paramBoolean, 10, 100);
  }

  public static int a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramArrayOfByte1 == null) || (paramArrayOfByte2 == null));
    while (paramArrayOfByte1.length != 3 * paramArrayOfByte2.length / 2)
      return -1;
    return nativeCropGray2(paramArrayOfByte1, paramArrayOfByte2, paramInt1, paramInt2, paramInt3);
  }

  public static int a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    if ((paramArrayOfByte1 == null) || (paramArrayOfByte2 == null))
      return -3;
    if (paramArrayOfByte2.length != 3 * (paramInt2 * paramInt1) / 2)
      return -3;
    if (paramArrayOfByte1.length != 3 * ((1 + (paramInt4 - paramInt3)) * (1 + (paramInt6 - paramInt5))) / 2)
      return -3;
    return nativeGrayRotateCropSub(paramArrayOfByte1, paramArrayOfByte2, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, 0);
  }

  public static void a(byte[] paramArrayOfByte, int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfInt == null))
      return;
    nativeYuvToCropIntArray(paramArrayOfByte, paramArrayOfInt, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6);
  }

  public static int aY(int paramInt)
  {
    if ((paramInt <= 0) || (paramInt > 5))
      paramInt = 3;
    return paramInt;
  }

  private static native int nativeArrayConvert(int paramInt1, int paramInt2, byte[] paramArrayOfByte, int[] paramArrayOfInt);

  private static native int nativeCropGray2(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2, int paramInt3);

  private static native int nativeGrayRotateCropSub(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8);

  private static native int nativeRelease();

  private static native int nativeTransPixels(int[] paramArrayOfInt, byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  private static native int nativeYUVrotate(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2);

  private static native int nativeYUVrotateLess(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  private static native void nativeYuvToCropIntArray(byte[] paramArrayOfByte, int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6);
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.imageboost.ImgProcessScan
 * JD-Core Version:    0.6.2
 */