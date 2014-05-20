package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

public final class q
{
  public static void a(Parcel paramParcel, int paramInt, byte paramByte)
  {
    b(paramParcel, paramInt, 4);
    paramParcel.writeInt(paramByte);
  }

  public static void a(Parcel paramParcel, int paramInt, double paramDouble)
  {
    b(paramParcel, paramInt, 8);
    paramParcel.writeDouble(paramDouble);
  }

  public static void a(Parcel paramParcel, int paramInt, float paramFloat)
  {
    b(paramParcel, paramInt, 4);
    paramParcel.writeFloat(paramFloat);
  }

  public static void a(Parcel paramParcel, int paramInt, long paramLong)
  {
    b(paramParcel, paramInt, 8);
    paramParcel.writeLong(paramLong);
  }

  public static void a(Parcel paramParcel, int paramInt, Bundle paramBundle)
  {
    if (paramBundle == null)
      return;
    int i = t(paramParcel, paramInt);
    paramParcel.writeBundle(paramBundle);
    u(paramParcel, i);
  }

  public static void a(Parcel paramParcel, int paramInt, IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return;
    int i = t(paramParcel, paramInt);
    paramParcel.writeStrongBinder(paramIBinder);
    u(paramParcel, i);
  }

  public static void a(Parcel paramParcel, int paramInt1, Parcelable paramParcelable, int paramInt2, boolean paramBoolean)
  {
    if (paramParcelable == null)
    {
      if (paramBoolean)
        b(paramParcel, paramInt1, 0);
      return;
    }
    int i = t(paramParcel, paramInt1);
    paramParcelable.writeToParcel(paramParcel, paramInt2);
    u(paramParcel, i);
  }

  public static void a(Parcel paramParcel, int paramInt, String paramString, boolean paramBoolean)
  {
    if (paramString == null)
    {
      if (paramBoolean)
        b(paramParcel, paramInt, 0);
      return;
    }
    int i = t(paramParcel, paramInt);
    paramParcel.writeString(paramString);
    u(paramParcel, i);
  }

  public static void a(Parcel paramParcel, int paramInt, List paramList, boolean paramBoolean)
  {
    if (paramList == null)
    {
      if (paramBoolean)
        b(paramParcel, paramInt, 0);
      return;
    }
    int i = t(paramParcel, paramInt);
    int j = paramList.size();
    paramParcel.writeInt(j);
    int k = 0;
    if (k < j)
    {
      Parcelable localParcelable = (Parcelable)paramList.get(k);
      if (localParcelable == null)
        paramParcel.writeInt(0);
      while (true)
      {
        k++;
        break;
        a(paramParcel, localParcelable, 0);
      }
    }
    u(paramParcel, i);
  }

  public static void a(Parcel paramParcel, int paramInt, boolean paramBoolean)
  {
    b(paramParcel, paramInt, 4);
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      paramParcel.writeInt(i);
      return;
    }
  }

  public static void a(Parcel paramParcel, int paramInt, String[] paramArrayOfString)
  {
    if (paramArrayOfString == null)
      return;
    int i = t(paramParcel, paramInt);
    paramParcel.writeStringArray(paramArrayOfString);
    u(paramParcel, i);
  }

  public static void a(Parcel paramParcel1, Parcel paramParcel2)
  {
    if (paramParcel2 == null)
      return;
    int i = t(paramParcel1, 2);
    paramParcel1.appendFrom(paramParcel2, 0, paramParcel2.dataSize());
    u(paramParcel1, i);
  }

  private static void a(Parcel paramParcel, Parcelable paramParcelable, int paramInt)
  {
    int i = paramParcel.dataPosition();
    paramParcel.writeInt(1);
    int j = paramParcel.dataPosition();
    paramParcelable.writeToParcel(paramParcel, paramInt);
    int k = paramParcel.dataPosition();
    paramParcel.setDataPosition(i);
    paramParcel.writeInt(k - j);
    paramParcel.setDataPosition(k);
  }

  public static void a(Parcel paramParcel, List paramList)
  {
    if (paramList == null)
    {
      b(paramParcel, 3, 0);
      return;
    }
    int i = t(paramParcel, 3);
    paramParcel.writeStringList(paramList);
    u(paramParcel, i);
  }

  public static void a(Parcel paramParcel, short paramShort)
  {
    b(paramParcel, 3, 4);
    paramParcel.writeInt(paramShort);
  }

  public static void a(Parcel paramParcel, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return;
    int i = t(paramParcel, 4);
    paramParcel.writeByteArray(paramArrayOfByte);
    u(paramParcel, i);
  }

  public static void a(Parcel paramParcel, Parcelable[] paramArrayOfParcelable, int paramInt)
  {
    if (paramArrayOfParcelable == null)
      return;
    int i = t(paramParcel, 2);
    int j = paramArrayOfParcelable.length;
    paramParcel.writeInt(j);
    int k = 0;
    if (k < j)
    {
      Parcelable localParcelable = paramArrayOfParcelable[k];
      if (localParcelable == null)
        paramParcel.writeInt(0);
      while (true)
      {
        k++;
        break;
        a(paramParcel, localParcelable, paramInt);
      }
    }
    u(paramParcel, i);
  }

  private static void b(Parcel paramParcel, int paramInt1, int paramInt2)
  {
    if (paramInt2 >= 65535)
    {
      paramParcel.writeInt(0xFFFF0000 | paramInt1);
      paramParcel.writeInt(paramInt2);
      return;
    }
    paramParcel.writeInt(paramInt1 | paramInt2 << 16);
  }

  public static void b(Parcel paramParcel, List paramList)
  {
    if (paramList == null)
      return;
    int i = t(paramParcel, 3);
    paramParcel.writeList(paramList);
    u(paramParcel, i);
  }

  public static void c(Parcel paramParcel, int paramInt1, int paramInt2)
  {
    b(paramParcel, paramInt1, 4);
    paramParcel.writeInt(paramInt2);
  }

  public static int g(Parcel paramParcel)
  {
    return t(paramParcel, 20293);
  }

  private static int t(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(0xFFFF0000 | paramInt);
    paramParcel.writeInt(0);
    return paramParcel.dataPosition();
  }

  private static void u(Parcel paramParcel, int paramInt)
  {
    int i = paramParcel.dataPosition();
    int j = i - paramInt;
    paramParcel.setDataPosition(paramInt - 4);
    paramParcel.writeInt(j);
    paramParcel.setDataPosition(i);
  }

  public static void v(Parcel paramParcel, int paramInt)
  {
    u(paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.q
 * JD-Core Version:    0.6.2
 */