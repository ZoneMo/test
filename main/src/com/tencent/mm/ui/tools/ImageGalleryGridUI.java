package com.tencent.mm.ui.tools;

import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.animation.DecelerateInterpolator;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.tools.a.u;
import com.tencent.mm.ui.tools.gridviewheaders.GridHeadersGridView;
import com.tencent.mm.ui.tools.gridviewheaders.x;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class ImageGalleryGridUI extends MMActivity
  implements ViewTreeObserver.OnPreDrawListener, AdapterView.OnItemClickListener
{
  private static final TimeInterpolator hjS = new DecelerateInterpolator();
  private String bNl;
  private LayoutInflater ge;
  private Handler handler;
  public int hjG;
  private GridHeadersGridView hjH;
  private List hjI;
  x hjJ;
  private int hjK;
  private int hjL;
  private float hjM;
  private float hjN;
  private WeakReference hjO;
  private ImageView hjP;
  private RelativeLayout hjQ;
  public cc hjR = new cc(this);
  private ArrayList hjT;
  private Boolean hjU;
  private Runnable hjV = new bx(this);
  private Runnable hjW = new by(this);
  Runnable hjX = new cb(this);

  private void aNm()
  {
    int i = this.hjH.getFirstVisiblePosition();
    int j = this.hjH.getLastVisiblePosition();
    int k = this.hjH.ox(this.hjG);
    if ((k >= i) && (k <= j))
      return;
    this.hjH.setSelection(k);
  }

  private static boolean aNn()
  {
    return Build.VERSION.SDK_INT >= 12;
  }

  @TargetApi(11)
  private void od(int paramInt)
  {
    int i = 1;
    Intent localIntent = getIntent();
    if (localIntent.getIntExtra("kintent_intent_source", 0) == i)
    {
      this.hjU = Boolean.valueOf(i);
      this.bNl = localIntent.getStringExtra("kintent_talker");
      this.hjG = localIntent.getIntExtra("kintent_image_index", 0);
      this.hjT = localIntent.getIntegerArrayListExtra("kintent_downloaded_index_list");
      a(new bz(this));
      this.hjR.release();
      if (paramInt != 0)
        break label214;
      this.hjQ = ((RelativeLayout)findViewById(2131362867));
      this.hjH = ((GridHeadersGridView)findViewById(2131362868));
      this.hjH.setOnItemClickListener(this);
      this.hjI = be.uz().sw().uZ(this.bNl);
      this.hjJ = new x(this, this.hjI);
      this.hjH.setAdapter(this.hjJ);
      aNm();
    }
    while (true)
    {
      if (aNn())
      {
        this.hjP = ((ImageView)this.ge.inflate(2130903367, this.hjQ, false));
        this.hjP.setAlpha(0.0F);
        this.hjQ.addView(this.hjP);
      }
      return;
      int j = 0;
      break;
      label214: if (this.hjJ.getCount() != getIntent().getIntExtra("kintent_image_count", 0))
      {
        this.hjI = be.uz().sw().uZ(this.bNl);
        this.hjJ = new x(this, this.hjI);
        this.hjH.setAdapter(this.hjJ);
        aNm();
      }
      else
      {
        aNm();
        this.hjH.post(new ca(this));
      }
    }
  }

  private void q(View paramView, int paramInt)
  {
    Intent localIntent = new Intent(this, ImageGalleryUI.class);
    ak localak = (ak)this.hjJ.getItem(paramInt);
    int i = getResources().getConfiguration().orientation;
    int[] arrayOfInt = new int[2];
    int k;
    int j;
    if (paramView != null)
    {
      k = paramView.getWidth();
      j = paramView.getHeight();
      paramView.getLocationInWindow(arrayOfInt);
    }
    while (true)
    {
      localIntent.addFlags(536870912);
      localIntent.putExtra("img_gallery_msg_id", localak.field_msgId).putExtra("img_gallery_msg_svr_id", localak.field_msgSvrId).putExtra("img_gallery_talker", localak.field_talker).putExtra("img_gallery_chatroom_name", localak.field_talker).putExtra("img_gallery_orientation", i);
      if (paramView != null)
        localIntent.putExtra("img_gallery_width", k).putExtra("img_gallery_height", j).putExtra("img_gallery_left", arrayOfInt[0]).putExtra("img_gallery_top", arrayOfInt[1]).putExtra("img_gallery_enter_from_grid", true);
      while (true)
      {
        startActivity(localIntent);
        if (paramView == null)
          break;
        overridePendingTransition(0, 0);
        return;
        localIntent.putExtra("img_gallery_back_from_grid", true);
      }
      overridePendingTransition(2130968616, 2130968617);
      return;
      j = 0;
      k = 0;
    }
  }

  public final ArrayList aNo()
  {
    return this.hjT;
  }

  @TargetApi(11)
  public final void d(ImageView paramImageView, Bitmap paramBitmap)
  {
    if (!aNn())
      paramImageView.setVisibility(0);
    while ((this.hjP == null) || (paramImageView == null) || (paramBitmap == null) || (paramBitmap.isRecycled()) || (!this.hjR.tryLock()))
      return;
    this.hjP.setImageBitmap(paramBitmap);
    this.hjO = new WeakReference(paramImageView);
    paramImageView.getViewTreeObserver().addOnPreDrawListener(this);
  }

  protected final int getLayoutId()
  {
    return 2130903368;
  }

  public void onBackPressed()
  {
    if (this.hjU.booleanValue())
    {
      super.onBackPressed();
      return;
    }
    q(null, this.hjG);
    finish();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.handler = new Handler();
    u.ch(aal()).aOJ();
    this.ge = ((LayoutInflater)aal().getSystemService("layout_inflater"));
    od(0);
  }

  protected void onDestroy()
  {
    this.handler.removeCallbacks(this.hjX);
    this.handler.removeCallbacks(this.hjW);
    this.handler.removeCallbacks(this.hjV);
    this.handler = null;
    super.onDestroy();
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    q(paramView, paramInt);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    setIntent(paramIntent);
    super.onNewIntent(paramIntent);
    od(1);
  }

  protected void onPause()
  {
    this.handler.postDelayed(this.hjV, 501L);
    super.onPause();
  }

  public boolean onPreDraw()
  {
    View localView = (View)this.hjO.get();
    if (localView == null);
    ViewTreeObserver localViewTreeObserver;
    int i;
    int j;
    do
    {
      do
      {
        return true;
        localViewTreeObserver = localView.getViewTreeObserver();
      }
      while (!localViewTreeObserver.isAlive());
      i = localView.getMeasuredWidth();
      j = localView.getMeasuredHeight();
    }
    while ((i <= 0) || (j <= 0));
    localViewTreeObserver.removeOnPreDrawListener(this);
    int[] arrayOfInt1 = new int[2];
    localView.getLocationOnScreen(arrayOfInt1);
    int[] arrayOfInt2 = new int[2];
    this.hjP.getLocationOnScreen(arrayOfInt2);
    this.hjK = (arrayOfInt1[0] - arrayOfInt2[0]);
    this.hjL = (arrayOfInt1[1] - arrayOfInt2[1]);
    this.hjM = (i / this.hjP.getMeasuredWidth());
    this.hjN = this.hjM;
    if (!aNn())
    {
      this.handler.post(this.hjX);
      return true;
    }
    this.hjP.setPivotX(0.0F);
    this.hjP.setPivotY(0.0F);
    this.hjP.setScaleX(1.0F);
    this.hjP.setScaleY(1.0F);
    this.hjP.setTranslationX(0.0F);
    this.hjP.setTranslationY(0.0F);
    this.hjP.setAlpha(0.0F);
    this.hjP.setVisibility(0);
    if (Build.VERSION.SDK_INT >= 16)
    {
      this.hjP.animate().setDuration(300L).scaleX(this.hjM).scaleY(this.hjN).alpha(1.0F).translationX(this.hjK).translationY(this.hjL).withEndAction(this.hjX).withLayer().setInterpolator(hjS);
      return true;
    }
    this.hjP.animate().setDuration(300L).scaleX(this.hjM).scaleY(this.hjN).alpha(1.0F).translationX(this.hjK).translationY(this.hjL).setInterpolator(hjS);
    this.handler.postDelayed(this.hjX, 300L);
    return true;
  }

  protected void onResume()
  {
    this.handler.postDelayed(this.hjW, 300L);
    m.dZN.d(11041, new Object[0]);
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ImageGalleryGridUI
 * JD-Core Version:    0.6.2
 */