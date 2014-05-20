package com.tencent.mapapi.map;

import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class OverlayItem
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new n();
  protected GeoPoint VF;
  protected boolean VG = true;
  protected Drawable mMarker;
  protected final String mSnippet;
  protected final String mTitle;

  protected OverlayItem(Parcel paramParcel)
  {
    this.VF = ((GeoPoint)paramParcel.readValue(GeoPoint.class.getClassLoader()));
    this.mTitle = paramParcel.readString();
    this.mSnippet = paramParcel.readString();
  }

  public OverlayItem(GeoPoint paramGeoPoint, String paramString1, String paramString2)
  {
    this.VF = paramGeoPoint.mk();
    this.mTitle = paramString1;
    this.mSnippet = paramString2;
    this.mMarker = null;
  }

  public final void c(GeoPoint paramGeoPoint)
  {
    this.VF = paramGeoPoint.mk();
  }

  public int describeContents()
  {
    return 0;
  }

  public final Drawable getMarker(int paramInt)
  {
    int i = 0;
    if (this.mMarker == null)
      return null;
    if (paramInt == 0)
      return this.mMarker.getCurrent();
    int[] arrayOfInt1 = new int[3];
    if ((paramInt & 0x1) != 0)
      arrayOfInt1[0] = 16842919;
    for (int j = 1; ; j = 0)
    {
      if ((paramInt & 0x2) != 0)
      {
        arrayOfInt1[j] = 16842913;
        j++;
      }
      if ((paramInt & 0x4) != 0)
      {
        arrayOfInt1[j] = 16842908;
        j++;
      }
      int[] arrayOfInt2 = new int[j];
      while (i < j)
      {
        arrayOfInt2[i] = arrayOfInt1[i];
        i++;
      }
      int[] arrayOfInt3 = this.mMarker.getState();
      this.mMarker.setState(arrayOfInt2);
      Drawable localDrawable = this.mMarker.getCurrent();
      this.mMarker.setState(arrayOfInt3);
      return localDrawable;
    }
  }

  public final boolean mw()
  {
    return this.VG;
  }

  public final Drawable mx()
  {
    return this.mMarker;
  }

  public GeoPoint my()
  {
    return this.VF;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(this.VF);
    paramParcel.writeString(this.mTitle);
    paramParcel.writeString(this.mSnippet);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.OverlayItem
 * JD-Core Version:    0.6.2
 */