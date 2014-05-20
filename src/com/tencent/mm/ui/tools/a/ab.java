package com.tencent.mm.ui.tools.a;

import android.net.Uri;

public final class ab
{
  public final int dhY;
  public final int dhZ;
  public final l hqL;
  public final boolean hqM;
  public final boolean hqN;
  public final float hqO;
  public final float hqP;
  public final float hqQ;
  public final boolean hqR;
  public final int resourceId;
  public final Uri uri;

  private ab(l paraml, Uri paramUri, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, float paramFloat1, float paramFloat2, float paramFloat3, boolean paramBoolean3)
  {
    this.hqL = paraml;
    this.uri = paramUri;
    this.resourceId = paramInt1;
    this.dhY = paramInt2;
    this.dhZ = paramInt3;
    this.hqM = paramBoolean1;
    this.hqN = paramBoolean2;
    this.hqO = paramFloat1;
    this.hqP = paramFloat2;
    this.hqQ = paramFloat3;
    this.hqR = paramBoolean3;
  }

  public final boolean aOM()
  {
    return this.dhY != 0;
  }

  final boolean aON()
  {
    return (this.dhY != 0) || (this.hqO != 0.0F);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.ab
 * JD-Core Version:    0.6.2
 */