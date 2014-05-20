package com.tencent.mm.pluginsdk.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.widget.PopupWindow;
import com.tencent.mm.ui.tools.MMGestureGallery;

public class GetHdHeadImageGalleryView extends MMGestureGallery
{
  private PopupWindow fkR;
  private Bitmap fkS;
  private Bitmap fkT;
  private p fkU;
  private String fkV;
  private String username;

  public GetHdHeadImageGalleryView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public GetHdHeadImageGalleryView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public GetHdHeadImageGalleryView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private void init()
  {
    this.fkU = new p(this, (byte)0);
    setVerticalFadingEdgeEnabled(false);
    setHorizontalFadingEdgeEnabled(false);
    setAdapter(this.fkU);
    setSelection(0);
    a(new t(this, (byte)0));
    a(new r(this, (byte)0));
  }

  public final void a(PopupWindow paramPopupWindow)
  {
    this.fkR = paramPopupWindow;
  }

  public final void j(Bitmap paramBitmap)
  {
    this.fkT = paramBitmap;
    this.fkU.notifyDataSetChanged();
  }

  public final void qD(String paramString)
  {
    this.fkV = paramString;
  }

  public final void setThumbImage(Bitmap paramBitmap)
  {
    this.fkS = paramBitmap;
    this.fkU.notifyDataSetChanged();
  }

  public final void setUsername(String paramString)
  {
    this.username = paramString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.GetHdHeadImageGalleryView
 * JD-Core Version:    0.6.2
 */