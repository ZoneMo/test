package com.google.android.gms.maps.model;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.e;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.g;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.q;
import java.util.Arrays;

public final class CameraPosition
  implements SafeParcelable
{
  public static final c RQ = new c();
  private final int KH;
  public final LatLng RR;
  public final float RS;
  public final float RT;
  public final float vU;

  CameraPosition(int paramInt, LatLng paramLatLng, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    i.c(paramLatLng, "null camera target");
    if ((0.0F <= paramFloat2) && (paramFloat2 <= 90.0F));
    for (int i = 1; i == 0; i = 0)
      throw new IllegalArgumentException(String.valueOf("Tilt needs to be between 0 and 90 inclusive"));
    this.KH = paramInt;
    this.RR = paramLatLng;
    this.vU = paramFloat1;
    this.RS = (paramFloat2 + 0.0F);
    if (paramFloat3 <= 0.0D)
      paramFloat3 = 360.0F + paramFloat3 % 360.0F;
    this.RT = (paramFloat3 % 360.0F);
  }

  public CameraPosition(LatLng paramLatLng, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this(1, paramLatLng, paramFloat1, paramFloat2, paramFloat3);
  }

  public static CameraPosition c(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null)
      return null;
    TypedArray localTypedArray = paramContext.getResources().obtainAttributes(paramAttributeSet, e.Ka);
    if (localTypedArray.hasValue(2));
    for (float f1 = localTypedArray.getFloat(2, 0.0F); ; f1 = 0.0F)
    {
      if (localTypedArray.hasValue(3));
      for (float f2 = localTypedArray.getFloat(3, 0.0F); ; f2 = 0.0F)
      {
        LatLng localLatLng = new LatLng(f1, f2);
        b localb = new b();
        localb.a(localLatLng);
        if (localTypedArray.hasValue(5))
          localb.R(localTypedArray.getFloat(5, 0.0F));
        if (localTypedArray.hasValue(1))
          localb.T(localTypedArray.getFloat(1, 0.0F));
        if (localTypedArray.hasValue(4))
          localb.S(localTypedArray.getFloat(4, 0.0F));
        return localb.lu();
      }
    }
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    CameraPosition localCameraPosition;
    do
    {
      return true;
      if (!(paramObject instanceof CameraPosition))
        return false;
      localCameraPosition = (CameraPosition)paramObject;
    }
    while ((this.RR.equals(localCameraPosition.RR)) && (Float.floatToIntBits(this.vU) == Float.floatToIntBits(localCameraPosition.vU)) && (Float.floatToIntBits(this.RS) == Float.floatToIntBits(localCameraPosition.RS)) && (Float.floatToIntBits(this.RT) == Float.floatToIntBits(localCameraPosition.RT)));
    return false;
  }

  public final int hH()
  {
    return this.KH;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.RR;
    arrayOfObject[1] = Float.valueOf(this.vU);
    arrayOfObject[2] = Float.valueOf(this.RS);
    arrayOfObject[3] = Float.valueOf(this.RT);
    return Arrays.hashCode(arrayOfObject);
  }

  public final String toString()
  {
    return g.L(this).a("target", this.RR).a("zoom", Float.valueOf(this.vU)).a("tilt", Float.valueOf(this.RS)).a("bearing", Float.valueOf(this.RT)).toString();
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ay.iN())
    {
      int i = q.g(paramParcel);
      q.c(paramParcel, 1, this.KH);
      q.a(paramParcel, 2, this.RR, paramInt, false);
      q.a(paramParcel, 3, this.vU);
      q.a(paramParcel, 4, this.RS);
      q.a(paramParcel, 5, this.RT);
      q.v(paramParcel, i);
      return;
    }
    c.a(this, paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.CameraPosition
 * JD-Core Version:    0.6.2
 */