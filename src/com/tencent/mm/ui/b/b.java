package com.tencent.mm.ui.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.o;

public final class b extends PopupWindow
{
  public long ccn = 3000L;

  @SuppressLint({"HandlerLeak"})
  private Handler mHandler = new c(this);

  private b(View paramView)
  {
    super(paramView);
  }

  public static b cb(Context paramContext)
  {
    View localView = LayoutInflater.from(paramContext).inflate(k.baV, null);
    ((TextView)localView.findViewById(i.aNu)).setVisibility(8);
    b localb = new b(localView);
    localb.setFocusable(false);
    localb.setContentView(localView);
    localb.setWidth(-1);
    localb.setHeight(-1);
    localb.setAnimationStyle(o.bIJ);
    localb.ccn = 1200L;
    return localb;
  }

  public final void showAsDropDown(View paramView)
  {
    super.showAsDropDown(paramView);
    this.mHandler.removeMessages(256);
    this.mHandler.sendEmptyMessageDelayed(256, this.ccn);
  }

  public final void showAsDropDown(View paramView, int paramInt1, int paramInt2)
  {
    super.showAsDropDown(paramView, paramInt1, paramInt2);
    this.mHandler.removeMessages(256);
    this.mHandler.sendEmptyMessageDelayed(256, this.ccn);
  }

  public final void showAtLocation(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    super.showAtLocation(paramView, paramInt1, paramInt2, paramInt3);
    this.mHandler.removeMessages(256);
    this.mHandler.sendEmptyMessageDelayed(256, this.ccn);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.b.b
 * JD-Core Version:    0.6.2
 */