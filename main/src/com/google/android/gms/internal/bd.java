package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.c;
import com.google.android.gms.plus.a;
import com.google.android.gms.plus.b;

public final class bd extends ImageView
  implements c, b
{
  private Bitmap KD;
  private Uri Ky;
  private int MY;
  private boolean MZ;
  private boolean Na;
  private a Nb;

  public bd(Context paramContext)
  {
    super(paramContext);
  }

  public final void a(Uri paramUri, int paramInt)
  {
    boolean bool1 = true;
    boolean bool2;
    int i;
    if (this.Ky == null)
      if (paramUri == null)
      {
        bool2 = bool1;
        if (this.MY != paramInt)
          break label57;
        i = bool1;
        label27: if ((!bool2) || (i == 0))
          break label63;
      }
    label57: label63: label125: 
    do
      while (true)
      {
        return;
        bool2 = false;
        break;
        bool2 = this.Ky.equals(paramUri);
        break;
        i = 0;
        break label27;
        this.Ky = paramUri;
        this.MY = paramInt;
        this.Na = bool1;
        if ((this.Ky != null) && ("android.resource".equals(this.Ky.getScheme())));
        while (this.Na)
        {
          if (this.Ky != null)
            break label125;
          setImageBitmap(null);
          return;
          bool1 = false;
        }
      }
    while ((!bool1) && ((this.Nb == null) || (!this.Nb.isConnected())));
    if (bool1)
      setImageURI(this.Ky);
    while (true)
    {
      this.Na = false;
      return;
      a locala = this.Nb;
      locala.a(this, this.MY);
    }
  }

  protected final void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.MZ = true;
    if ((this.Nb != null) && (!this.Nb.b(this)))
      this.Nb.a(this);
    if (this.KD != null)
      setImageBitmap(this.KD);
  }

  protected final void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.MZ = false;
    if ((this.Nb != null) && (this.Nb.b(this)))
      this.Nb.c(this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bd
 * JD-Core Version:    0.6.2
 */