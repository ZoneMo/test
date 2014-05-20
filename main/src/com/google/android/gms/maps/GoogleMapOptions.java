package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.e;
import com.google.android.gms.internal.aw;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.q;
import com.google.android.gms.maps.model.CameraPosition;

public final class GoogleMapOptions
  implements SafeParcelable
{
  public static final a RB = new a();
  private final int KH;
  private Boolean RC;
  private Boolean RD;
  private int RE = -1;
  private CameraPosition RF;
  private Boolean RG;
  private Boolean RH;
  private Boolean RI;
  private Boolean RJ;
  private Boolean RK;
  private Boolean RL;

  public GoogleMapOptions()
  {
    this.KH = 1;
  }

  GoogleMapOptions(int paramInt1, byte paramByte1, byte paramByte2, int paramInt2, CameraPosition paramCameraPosition, byte paramByte3, byte paramByte4, byte paramByte5, byte paramByte6, byte paramByte7, byte paramByte8)
  {
    this.KH = paramInt1;
    this.RC = aw.a(paramByte1);
    this.RD = aw.a(paramByte2);
    this.RE = paramInt2;
    this.RF = paramCameraPosition;
    this.RG = aw.a(paramByte3);
    this.RH = aw.a(paramByte4);
    this.RI = aw.a(paramByte5);
    this.RJ = aw.a(paramByte6);
    this.RK = aw.a(paramByte7);
    this.RL = aw.a(paramByte8);
  }

  public static GoogleMapOptions b(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null)
      return null;
    TypedArray localTypedArray = paramContext.getResources().obtainAttributes(paramAttributeSet, e.Ka);
    GoogleMapOptions localGoogleMapOptions = new GoogleMapOptions();
    if (localTypedArray.hasValue(0))
      localGoogleMapOptions.RE = localTypedArray.getInt(0, -1);
    if (localTypedArray.hasValue(13))
      localGoogleMapOptions.RC = Boolean.valueOf(localTypedArray.getBoolean(13, false));
    if (localTypedArray.hasValue(12))
      localGoogleMapOptions.RD = Boolean.valueOf(localTypedArray.getBoolean(12, false));
    if (localTypedArray.hasValue(6))
      localGoogleMapOptions.RH = Boolean.valueOf(localTypedArray.getBoolean(6, true));
    if (localTypedArray.hasValue(7))
      localGoogleMapOptions.RL = Boolean.valueOf(localTypedArray.getBoolean(7, true));
    if (localTypedArray.hasValue(8))
      localGoogleMapOptions.RI = Boolean.valueOf(localTypedArray.getBoolean(8, true));
    if (localTypedArray.hasValue(9))
      localGoogleMapOptions.RK = Boolean.valueOf(localTypedArray.getBoolean(9, true));
    if (localTypedArray.hasValue(11))
      localGoogleMapOptions.RJ = Boolean.valueOf(localTypedArray.getBoolean(11, true));
    if (localTypedArray.hasValue(10))
      localGoogleMapOptions.RG = Boolean.valueOf(localTypedArray.getBoolean(10, true));
    localGoogleMapOptions.RF = CameraPosition.c(paramContext, paramAttributeSet);
    localTypedArray.recycle();
    return localGoogleMapOptions;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final int hH()
  {
    return this.KH;
  }

  public final byte lj()
  {
    return aw.a(this.RC);
  }

  public final byte lk()
  {
    return aw.a(this.RD);
  }

  public final byte ll()
  {
    return aw.a(this.RG);
  }

  public final byte lm()
  {
    return aw.a(this.RH);
  }

  public final byte ln()
  {
    return aw.a(this.RI);
  }

  public final byte lo()
  {
    return aw.a(this.RJ);
  }

  public final byte lp()
  {
    return aw.a(this.RK);
  }

  public final byte lq()
  {
    return aw.a(this.RL);
  }

  public final int lr()
  {
    return this.RE;
  }

  public final CameraPosition ls()
  {
    return this.RF;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ay.iN())
    {
      int i = q.g(paramParcel);
      q.c(paramParcel, 1, this.KH);
      q.a(paramParcel, 2, aw.a(this.RC));
      q.a(paramParcel, 3, aw.a(this.RD));
      q.c(paramParcel, 4, this.RE);
      q.a(paramParcel, 5, this.RF, paramInt, false);
      q.a(paramParcel, 6, aw.a(this.RG));
      q.a(paramParcel, 7, aw.a(this.RH));
      q.a(paramParcel, 8, aw.a(this.RI));
      q.a(paramParcel, 9, aw.a(this.RJ));
      q.a(paramParcel, 10, aw.a(this.RK));
      q.a(paramParcel, 11, aw.a(this.RL));
      q.v(paramParcel, i);
      return;
    }
    a.a(this, paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.GoogleMapOptions
 * JD-Core Version:    0.6.2
 */