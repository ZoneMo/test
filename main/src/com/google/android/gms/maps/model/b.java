package com.google.android.gms.maps.model;

public final class b
{
  private LatLng RU;
  private float RV;
  private float RW;
  private float RX;

  public final b R(float paramFloat)
  {
    this.RV = paramFloat;
    return this;
  }

  public final b S(float paramFloat)
  {
    this.RW = paramFloat;
    return this;
  }

  public final b T(float paramFloat)
  {
    this.RX = paramFloat;
    return this;
  }

  public final b a(LatLng paramLatLng)
  {
    this.RU = paramLatLng;
    return this;
  }

  public final CameraPosition lu()
  {
    return new CameraPosition(this.RU, this.RV, this.RW, this.RX);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.b
 * JD-Core Version:    0.6.2
 */