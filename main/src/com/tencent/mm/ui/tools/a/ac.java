package com.tencent.mm.ui.tools.a;

import android.net.Uri;

public final class ac
{
  private int dhY;
  private int dhZ;
  private l hqL;
  private boolean hqM;
  private boolean hqN;
  private float hqO;
  private float hqP;
  private float hqQ;
  private boolean hqR;
  private int resourceId;
  private Uri uri;

  ac()
  {
    this.uri = null;
    this.resourceId = 2130838943;
  }

  private ac(ab paramab)
  {
    this.uri = paramab.uri;
    this.hqL = paramab.hqL;
    this.resourceId = paramab.resourceId;
    this.dhY = paramab.dhY;
    this.dhZ = paramab.dhZ;
    this.hqM = paramab.hqM;
    this.hqN = paramab.hqN;
    this.hqO = paramab.hqO;
    this.hqP = paramab.hqP;
    this.hqQ = paramab.hqQ;
    this.hqR = paramab.hqR;
  }

  ac(l paraml)
  {
    this.hqL = paraml;
  }

  final boolean aOM()
  {
    return this.dhY != 0;
  }

  final boolean aOO()
  {
    return (this.uri != null) || (this.resourceId != 0) || (this.hqL != null);
  }

  public final ac aOP()
  {
    if (this.hqN)
      throw new IllegalStateException("Center crop can not be used after calling centerInside");
    this.hqM = true;
    return this;
  }

  public final ab aOQ()
  {
    if ((this.hqN) && (this.hqM))
      throw new IllegalStateException("Center crop and center inside can not be used together.");
    if ((this.hqM) && (this.dhY == 0))
      throw new IllegalStateException("Center crop requires calling resize.");
    if ((this.hqN) && (this.dhY == 0))
      throw new IllegalStateException("Center inside requires calling resize.");
    return new ab(this.hqL, this.uri, this.resourceId, this.dhY, this.dhZ, this.hqM, this.hqN, this.hqO, this.hqP, this.hqQ, this.hqR, (byte)0);
  }

  public final ac bo(int paramInt1, int paramInt2)
  {
    if (paramInt1 <= 0)
      throw new IllegalArgumentException("Width must be positive number.");
    if (paramInt2 <= 0)
      throw new IllegalArgumentException("Height must be positive number.");
    this.dhY = paramInt1;
    this.dhZ = paramInt2;
    return this;
  }

  public final ac j(Uri paramUri)
  {
    if (paramUri == null)
      throw new IllegalArgumentException("Image URI may not be null.");
    this.uri = paramUri;
    this.resourceId = 0;
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.ac
 * JD-Core Version:    0.6.2
 */