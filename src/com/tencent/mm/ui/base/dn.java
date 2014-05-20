package com.tencent.mm.ui.base;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarActivity;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.compatible.g.l;
import com.tencent.mm.f;
import com.tencent.mm.g;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.e;

public final class dn extends Toast
{
  private final ay cBV = new ay(new do(this), true);
  private final Context context;
  private long dlh;
  private int dqS;
  private View gCI;
  private final TextView gCJ;
  private int level;

  public dn(Context paramContext)
  {
    super(paramContext);
    this.context = paramContext;
    reset();
    this.gCI = View.inflate(paramContext, k.baW, null);
    setView(this.gCI);
    setGravity(55, 0, e.a(paramContext, 40.0F));
    setDuration(0);
    this.gCJ = ((TextView)this.gCI.findViewById(i.aNv));
    aHw();
  }

  public static ce a(Activity paramActivity, int paramInt, String paramString)
  {
    return a(paramActivity, paramInt, paramString, true, null);
  }

  public static ce a(Activity paramActivity, int paramInt, String paramString, boolean paramBoolean, View.OnClickListener paramOnClickListener)
  {
    View localView = View.inflate(paramActivity, k.aVk, null);
    TextView localTextView = (TextView)localView.findViewById(i.axZ);
    localTextView.setText(paramString);
    localTextView.setOnClickListener(paramOnClickListener);
    ImageView localImageView = (ImageView)localView.findViewById(i.axY);
    if (paramInt == 0)
      localImageView.setVisibility(8);
    while (true)
    {
      ce localce = new ce(localView);
      localce.setWidth(-1);
      localce.setHeight(-2);
      Rect localRect = new Rect();
      paramActivity.getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect);
      int i = localRect.top;
      int j = bV(paramActivity);
      localce.showAtLocation(paramActivity.getWindow().getDecorView(), 48, 0, i + j);
      dr localdr = new dr(localce);
      ImageButton localImageButton = (ImageButton)localView.findViewById(i.axX);
      localImageButton.setVisibility(8);
      localImageButton.setOnClickListener(new ds(localce));
      if (paramBoolean)
        localdr.sendEmptyMessageDelayed(0, 2000L);
      return localce;
      localImageView.setImageResource(paramInt);
    }
  }

  public static ce a(Activity paramActivity, String paramString, long paramLong)
  {
    View localView = View.inflate(paramActivity, k.baW, null);
    ((TextView)localView.findViewById(i.aNv)).setText(paramString);
    ce localce = new ce(localView);
    localce.setWidth(-1);
    localce.setHeight(-2);
    Rect localRect = new Rect();
    paramActivity.getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect);
    int i = localRect.top;
    int j = bV(paramActivity);
    localce.showAtLocation(paramActivity.getWindow().getDecorView(), 48, 0, i + j);
    new dp(localce).sendEmptyMessageDelayed(0, paramLong);
    return localce;
  }

  private void aHw()
  {
    switch (this.level)
    {
    default:
      return;
    case 1:
      this.gCJ.setTextColor(-1);
      return;
    case 2:
    }
    this.gCJ.setTextColor(this.context.getResources().getColor(f.aaA));
  }

  public static ce b(Activity paramActivity, View paramView)
  {
    ce localce = new ce(paramView);
    localce.setWidth(-1);
    localce.setHeight(-2);
    Rect localRect = new Rect();
    paramActivity.getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect);
    int i = localRect.top;
    int j = bV(paramActivity);
    localce.showAtLocation(paramActivity.getWindow().getDecorView(), 48, 0, i + j);
    new dq(localce).sendEmptyMessageDelayed(0, 4000L);
    return localce;
  }

  private static int bV(Context paramContext)
  {
    if (((paramContext instanceof ActionBarActivity)) && (((ActionBarActivity)paramContext).aW() != null))
      return ((ActionBarActivity)paramContext).aW().getHeight();
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    if (localDisplayMetrics.widthPixels > localDisplayMetrics.heightPixels)
      return paramContext.getResources().getDimensionPixelSize(g.aaM);
    return paramContext.getResources().getDimensionPixelSize(g.aaN);
  }

  public static void bW(Context paramContext)
  {
    if (l.getExternalStorageState().equals("mounted_ro"))
    {
      dt.y(paramContext, 3);
      return;
    }
    dt.y(paramContext, 1);
  }

  public static void bX(Context paramContext)
  {
    dt.y(paramContext, 2);
  }

  private void reset()
  {
    this.level = 1;
    this.dlh = 2000L;
    this.dqS = (1 + (int)(this.dlh / 70L));
  }

  public final void aHx()
  {
    cancel();
    this.cBV.azn();
    reset();
  }

  public final void aHy()
  {
    cancel();
    this.cBV.azn();
    this.dqS = (1 + (int)(this.dlh / 70L));
    this.cBV.bO(70L);
  }

  public final void cc(long paramLong)
  {
    this.dlh = paramLong;
  }

  public final void setLevel(int paramInt)
  {
    this.level = paramInt;
    aHw();
  }

  public final void setText(int paramInt)
  {
    this.gCJ.setText(paramInt);
  }

  public final void setText(CharSequence paramCharSequence)
  {
    this.gCJ.setText(paramCharSequence);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.dn
 * JD-Core Version:    0.6.2
 */