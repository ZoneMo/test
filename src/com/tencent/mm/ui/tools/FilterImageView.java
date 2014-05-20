package com.tencent.mm.ui.tools;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.h;
import com.tencent.mm.ui.base.MMHorList;

public class FilterImageView extends LinearLayout
{
  static br[] hiZ = arrayOfbr;
  private Activity bOt;
  private int euk = 0;
  private int[] hiQ;
  private View hiR;
  private ImageView hiS;
  private CropImageView hiT;
  private Bitmap hiU;
  private MMHorList hiV;
  private bo hiW;
  private Runnable hiX;
  private Runnable hiY;

  static
  {
    br[] arrayOfbr = new br[12];
    arrayOfbr[0] = new br(new bq("原图", "原圖", "Normal"), "icon.png", 0, 0, "MatteOrigin.jpg", 0);
    arrayOfbr[1] = new br(new bq("LOMO", "LOMO", "LOMO"), "nuowei_mask%02d.jpg", 2, 1, "0004.jpg", 2);
    arrayOfbr[2] = new br(new bq("麦田", "麥田", "Wheat"), "0062_%02d.jpg", 2, 2, "0062.jpg", 20);
    arrayOfbr[3] = new br(new bq("玻璃镜", "玻璃鏡", "Glossy"), "habi_mask%02d.jpg", 1, 3, "0005.jpg", 4);
    arrayOfbr[4] = new br(new bq("拍立得", "拍立得", "Polaroid"), "0063_%02d.jpg", 2, 4, "0063.jpg", 21);
    arrayOfbr[5] = new br(new bq("湖水", "湖水", "Lake"), "0061_%02d.jpg", 1, 5, "0061.jpg", 19);
    arrayOfbr[6] = new br(new bq("黄昏", "黃昏", "Twilight"), "0030_mask%01d.jpg", 1, 6, "0030.jpg", 7);
    arrayOfbr[7] = new br(new bq("黑白", "黑白", "B&W"), "0065_%02d.jpg", 1, 7, "0065.jpg", 22);
    arrayOfbr[8] = new br(new bq("铜版画", "銅版畫", "Aquatint"), "0032_mask%01d.jpg", 1, 8, "0032.jpg", 9);
    arrayOfbr[9] = new br(new bq("圆珠笔", "圓珠筆", "Pen"), "0035_mask%01d.jpg", 1, 9, "0035.jpg", 18);
    arrayOfbr[10] = new br(new bq("海报", "海報", "Poster"), "0036_mask%01d.jpg", 0, 10, "0036.jpg", 17);
    arrayOfbr[11] = new br(new bq("素描", "素描", "Portrait"), "icon.jpg", 0, 11, "0040.jpg", 12);
  }

  public FilterImageView(Context paramContext)
  {
    super(paramContext);
    this.bOt = ((Activity)paramContext);
    init();
  }

  public FilterImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.bOt = ((Activity)paramContext);
    init();
  }

  private void init()
  {
    View localView = View.inflate(this.bOt, k.aTq, this);
    this.hiT = ((CropImageView)localView.findViewById(i.aqQ));
    this.hiS = ((ImageView)localView.findViewById(i.aqT));
    this.hiR = localView.findViewById(i.aqS);
    this.hiT.aMY();
    this.hiV = ((MMHorList)localView.findViewById(i.aqP));
    this.hiW = new bo(this);
    this.hiV.setAdapter(this.hiW);
    this.hiV.invalidate();
    this.hiV.setOnItemClickListener(new bn(this));
  }

  public final void aMU()
  {
    if (this.hiT != null)
      this.hiT.aMU();
  }

  public final Bitmap aNe()
  {
    return this.hiU;
  }

  public final void aNf()
  {
    if (this.hiT != null)
    {
      this.hiT.setScaleType(ImageView.ScaleType.MATRIX);
      this.hiT.aMX();
    }
  }

  public final CropImageView aNg()
  {
    return this.hiT;
  }

  public final View aNh()
  {
    return this.hiR;
  }

  public final void aNi()
  {
    if (this.hiS != null)
      this.hiS.setVisibility(0);
  }

  public final int aNj()
  {
    return this.euk;
  }

  public final void ay(String paramString, int paramInt)
  {
    aa.i("MicroMsg.FilterView", "filePath before fiterBmp:" + paramString);
    if ((this.hiU == null) || (this.hiU.isRecycled()))
      this.hiU = h.a(h.a(paramString, 480, 480, false), paramInt);
    aa.d("MicroMsg.FilterView", "filterBmp w:" + this.hiU.getWidth() + " h:" + this.hiU.getHeight());
    this.hiQ = new int[this.hiU.getWidth() * this.hiU.getHeight()];
    this.hiU.getPixels(this.hiQ, 0, this.hiU.getWidth(), 0, 0, this.hiU.getWidth(), this.hiU.getHeight());
    this.hiT.setImageBitmap(this.hiU);
  }

  public final void o(Bitmap paramBitmap)
  {
    this.hiU = paramBitmap;
  }

  public final void onDestroy()
  {
    this.hiQ = null;
    if ((this.hiU != null) && (!this.hiU.isRecycled()))
      this.hiU.recycle();
    this.hiU = null;
  }

  public final void setMatrix(Matrix paramMatrix)
  {
    if (this.hiT != null)
      this.hiT.setImageMatrix(paramMatrix);
  }

  public void setVisibility(int paramInt)
  {
    if (paramInt == 0)
    {
      this.hiW.notifyDataSetChanged();
      this.hiV.invalidate();
    }
    super.setVisibility(paramInt);
  }

  public final void t(Runnable paramRunnable)
  {
    this.hiX = paramRunnable;
  }

  public final void u(Runnable paramRunnable)
  {
    this.hiY = paramRunnable;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.FilterImageView
 * JD-Core Version:    0.6.2
 */