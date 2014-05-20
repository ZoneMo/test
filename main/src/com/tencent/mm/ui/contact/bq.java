package com.tencent.mm.ui.contact;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Gallery.LayoutParams;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.mm.an.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.e;
import com.tencent.mm.ui.base.MultiTouchImageView;

final class bq extends BaseAdapter
{
  private String imagePath;

  bq(ContactRemarkImagePreviewUI paramContactRemarkImagePreviewUI)
  {
  }

  public final int getCount()
  {
    return 1;
  }

  public final Object getItem(int paramInt)
  {
    return this.imagePath;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = View.inflate(this.gTx, 2130903227, null);
    MultiTouchImageView localMultiTouchImageView = (MultiTouchImageView)localView.findViewById(2131361818);
    localView.setLayoutParams(new Gallery.LayoutParams(-1, -1));
    localMultiTouchImageView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    Bitmap localBitmap = e.e(this.imagePath, a.getDensity(this.gTx));
    int i;
    int j;
    Matrix localMatrix;
    float f1;
    if (localBitmap != null)
    {
      i = ContactRemarkImagePreviewUI.e(this.gTx).getWidth();
      j = ContactRemarkImagePreviewUI.e(this.gTx).getHeight();
      localMatrix = new Matrix();
      localMatrix.reset();
      f1 = localBitmap.getWidth() / localBitmap.getHeight();
      float f2 = localBitmap.getHeight() / localBitmap.getWidth();
      aa.v("MicroMsg.ImagePreviewUI", "whDiv is " + f1 + " hwDiv is " + f2);
      if ((f2 < 2.0F) || (localBitmap.getHeight() < 480))
        break label322;
      float f10 = localBitmap.getWidth() / i;
      float f11 = i / localBitmap.getWidth();
      if (f10 <= 1.0D)
        break label293;
      localMatrix.postScale(f11, f11);
      localBitmap.getHeight();
      localMatrix.postTranslate((i - f11 * localBitmap.getWidth()) / 2.0F, 0.0F);
    }
    while (true)
    {
      localMultiTouchImageView.setImageMatrix(localMatrix);
      localMultiTouchImageView.bk(localBitmap.getWidth(), localBitmap.getHeight());
      localMultiTouchImageView.setImageBitmap(localBitmap);
      return localView;
      label293: localMatrix.postScale(1.0F, 1.0F);
      localMatrix.postTranslate((i - localBitmap.getWidth()) / 2, 0.0F);
      continue;
      label322: if ((f1 < 2.0F) || (localBitmap.getWidth() < 480))
        break;
      float f7 = localBitmap.getHeight() / 480.0F;
      float f8 = 480.0F / localBitmap.getHeight();
      if (f7 > 1.0D)
      {
        localMatrix.postScale(f7, f8);
        localMatrix.postTranslate(0.0F, (j - 480) / 2);
      }
      else
      {
        localMatrix.postScale(1.0F, 1.0F);
        float f9 = (j - localBitmap.getHeight()) / 2;
        aa.d("MicroMsg.ImagePreviewUI", " offsety " + f9);
        localMatrix.postTranslate(0.0F, f9);
      }
    }
    float f3 = i / localBitmap.getWidth();
    float f4 = j / localBitmap.getHeight();
    label486: float f5;
    float f6;
    if (f3 < f4)
    {
      f5 = localBitmap.getWidth() / i;
      f6 = localBitmap.getHeight() / j;
      if (f5 <= f6)
        break label582;
      label518: if (f5 <= 1.0D)
        break label589;
      localMatrix.postScale(f3, f3);
    }
    while (true)
    {
      localMatrix.postTranslate((i - f3 * localBitmap.getWidth()) / 2.0F, (j - f3 * localBitmap.getHeight()) / 2.0F);
      break;
      f3 = f4;
      break label486;
      label582: f5 = f6;
      break label518;
      label589: f3 = 1.0F;
    }
  }

  public final void setImagePath(String paramString)
  {
    this.imagePath = paramString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.bq
 * JD-Core Version:    0.6.2
 */