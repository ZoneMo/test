package com.tencent.mm.protocal;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.tencent.mm.protocal.a.hh;
import com.tencent.mm.sdk.platformtools.aa;

public class GeneralControlWrapper
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new b();
  public static final GeneralControlWrapper fxA;
  public static final GeneralControlWrapper fxz = new GeneralControlWrapper(8);
  private int fxB;

  static
  {
    fxA = new GeneralControlWrapper(1);
  }

  public GeneralControlWrapper(int paramInt)
  {
    this.fxB = paramInt;
    aa.d("MicroMsg.GeneralControlWrapper", "edw <init>, " + this);
  }

  private GeneralControlWrapper(Parcel paramParcel)
  {
    this.fxB = paramParcel.readInt();
  }

  public GeneralControlWrapper(hh paramhh)
  {
    if (paramhh == null);
    for (this.fxB = 0; ; this.fxB = paramhh.fJG)
    {
      aa.d("MicroMsg.GeneralControlWrapper", "edw <init>, " + this);
      return;
    }
  }

  public final int avD()
  {
    return this.fxB;
  }

  public final boolean avE()
  {
    if ((0x1 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.GeneralControlWrapper", "needShowInputAlertTips, ret = " + bool);
      return bool;
    }
  }

  public final boolean avF()
  {
    if ((0x8 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.GeneralControlWrapper", "allowOuterOpenUrl, ret = " + bool);
      return bool;
    }
  }

  public final boolean avG()
  {
    if ((0x10 & this.fxB) > 0);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.GeneralControlWrapper", "allowExpose, ret = " + bool);
      return bool;
    }
  }

  public int describeContents()
  {
    return 0;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[bitset=0x");
    localStringBuilder.append(Integer.toHexString(this.fxB));
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.fxB);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.GeneralControlWrapper
 * JD-Core Version:    0.6.2
 */