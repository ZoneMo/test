package com.tencent.mm.ui.applet;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.tencent.mm.i;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.x;

public class SecurityImage extends LinearLayout
{
  private x dpV = null;
  private String grp = null;
  private String grq = null;
  private boolean grs = false;
  private ProgressBar gxl = null;
  private ImageView gxm = null;
  private Button gxn = null;
  private EditText gxo = null;
  private n gxp;

  public SecurityImage(Context paramContext)
  {
    super(paramContext);
  }

  public SecurityImage(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private void a(boolean paramBoolean, Bitmap paramBitmap, String paramString1, String paramString2)
  {
    this.grp = paramString1;
    this.grq = paramString2;
    this.grs = paramBoolean;
    if (paramBitmap != null)
    {
      this.gxm.setImageBitmap(paramBitmap);
      return;
    }
    aa.e("MicroMsg.SecurityImage", "setSecImg failed, decode failed");
  }

  private void dm(boolean paramBoolean)
  {
    ImageView localImageView1 = this.gxm;
    int i;
    ImageView localImageView2;
    if (paramBoolean)
    {
      i = 255;
      localImageView1.setAlpha(i);
      localImageView2 = this.gxm;
      if (!paramBoolean)
        break label68;
    }
    label68: for (int j = 0; ; j = -5592406)
    {
      localImageView2.setBackgroundColor(j);
      ProgressBar localProgressBar = this.gxl;
      int k = 0;
      if (paramBoolean)
        k = 4;
      localProgressBar.setVisibility(k);
      return;
      i = 40;
      break;
    }
  }

  public static void onStop()
  {
  }

  public final boolean BW()
  {
    return this.grs;
  }

  public final void a(n paramn)
  {
    if (this.gxp != null)
      this.gxp.d(null);
    this.gxp = paramn;
    this.gxp.d(this);
  }

  protected final void a(boolean paramBoolean, Bitmap paramBitmap)
  {
    dm(true);
    if (paramBoolean)
    {
      a(false, paramBitmap, null, null);
      this.gxo.clearComposingText();
      this.gxo.setText("");
    }
  }

  public final void a(boolean paramBoolean, byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    this.gxl = ((ProgressBar)findViewById(i.aGS));
    this.gxm = ((ImageView)findViewById(i.amS));
    this.gxn = ((Button)findViewById(i.amQ));
    this.gxo = ((EditText)findViewById(i.amR));
    this.gxn.setOnClickListener(new h(this));
    if (this.gxp != null)
      this.gxp.onStart();
    b(paramBoolean, paramArrayOfByte, paramString1, paramString2);
  }

  public final String aGt()
  {
    return this.grp;
  }

  public final String aGu()
  {
    if (this.gxo == null)
      return "";
    return this.gxo.getText().toString().trim();
  }

  public final String aGv()
  {
    return this.grq;
  }

  public final void b(boolean paramBoolean, byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    int i = -1;
    dm(true);
    this.grp = paramString1;
    this.grq = paramString2;
    this.grs = paramBoolean;
    Object[] arrayOfObject1 = new Object[1];
    int j;
    Bitmap localBitmap;
    Object[] arrayOfObject2;
    if (paramArrayOfByte == null)
    {
      j = i;
      arrayOfObject1[0] = Integer.valueOf(j);
      aa.e("MicroMsg.SecurityImage", "dkwt setSecImg imgBuf:%d", arrayOfObject1);
      if (paramArrayOfByte != null)
      {
        localBitmap = com.tencent.mm.sdk.platformtools.h.cj(paramArrayOfByte);
        if (localBitmap == null)
          break label148;
        arrayOfObject2 = new Object[3];
        if (paramArrayOfByte != null)
          break label141;
      }
    }
    while (true)
    {
      arrayOfObject2[0] = Integer.valueOf(i);
      arrayOfObject2[1] = Integer.valueOf(localBitmap.getWidth());
      arrayOfObject2[2] = Integer.valueOf(localBitmap.getHeight());
      aa.e("MicroMsg.SecurityImage", "dkwt setSecImg imgBuf:%d  [%d %d]", arrayOfObject2);
      a(paramBoolean, localBitmap, paramString1, paramString2);
      return;
      j = paramArrayOfByte.length;
      break;
      label141: i = paramArrayOfByte.length;
    }
    label148: aa.e("MicroMsg.SecurityImage", "[arthurdan.securityImgCrash] Fatal Error!!! setSecImg failed, decode failed");
  }

  public final void dismiss()
  {
    if (this.dpV != null)
    {
      this.dpV.dismiss();
      this.dpV = null;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.applet.SecurityImage
 * JD-Core Version:    0.6.2
 */