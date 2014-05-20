package com.tencent.mapapi.map;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;

public class MapView$LayoutParams extends ViewGroup.LayoutParams
{
  public GeoPoint VA = null;
  public int alignment = 51;
  public int mode = 1;
  public int x = 0;
  public int y = 0;

  public MapView$LayoutParams()
  {
    super(-1, -1);
  }

  public MapView$LayoutParams(int paramInt1, int paramInt2)
  {
    super(-2, -2);
    this.x = paramInt1;
    this.y = paramInt2;
    this.alignment = 85;
  }

  public MapView$LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public MapView$LayoutParams(GeoPoint paramGeoPoint, int paramInt)
  {
    this(paramGeoPoint, paramInt, (byte)0);
  }

  private MapView$LayoutParams(GeoPoint paramGeoPoint, int paramInt, byte paramByte)
  {
    super(-2, -2);
    this.mode = 0;
    this.VA = paramGeoPoint;
    this.x = 0;
    this.y = 0;
    this.alignment = paramInt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.MapView.LayoutParams
 * JD-Core Version:    0.6.2
 */