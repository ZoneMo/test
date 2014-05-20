package com.tencent.map.location;

import android.location.Location;

public final class c
{
  private static c TN;
  private double TO = 0.0D;
  private double TP = 0.0D;
  private double TQ = 0.0D;
  private double TR = 0.0D;
  private double TS = 0.0D;
  private double TT = 0.0D;
  private d TU;
  private e TV = null;
  private boolean TW = false;
  public String TX = "";

  public static c lV()
  {
    if (TN == null)
      TN = new c();
    return TN;
  }

  public final void a(double paramDouble1, double paramDouble2, d paramd)
  {
    this.TU = paramd;
    if ((this.TS != 0.0D) && (this.TT != 0.0D))
    {
      float[] arrayOfFloat = new float[10];
      Location.distanceBetween(paramDouble1, paramDouble2, this.TO, this.TP, arrayOfFloat);
      if (arrayOfFloat[0] < 1500.0F)
        this.TU.a(paramDouble1 + this.TS, paramDouble2 + this.TT);
    }
    while (this.TW)
      return;
    this.TX = ("{\"source\":101,\"access_token\":\"160e7bd42dec9428721034e0146fc6dd\",\"location\":{\"latitude\":" + paramDouble1 + ",\"longitude\":" + paramDouble2 + "}\t}");
    this.TQ = paramDouble1;
    this.TR = paramDouble2;
    this.TV = new e(this);
    this.TV.start();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.map.location.c
 * JD-Core Version:    0.6.2
 */