package android.support.v7.internal.view;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.DisplayMetrics;
import com.tencent.mm.d;
import com.tencent.mm.e;
import com.tencent.mm.g;
import com.tencent.mm.j;
import com.tencent.mm.p;

public final class a
{
  private Context mContext;

  private a(Context paramContext)
  {
    this.mContext = paramContext;
  }

  public static a d(Context paramContext)
  {
    return new a(paramContext);
  }

  public final int bp()
  {
    return this.mContext.getResources().getInteger(j.aRK);
  }

  public final int bq()
  {
    return this.mContext.getResources().getDisplayMetrics().widthPixels / 2;
  }

  public final boolean br()
  {
    return this.mContext.getResources().getBoolean(e.ZE);
  }

  public final int bs()
  {
    TypedArray localTypedArray = this.mContext.obtainStyledAttributes(null, p.bIU, d.actionBarStyle, 0);
    int i = localTypedArray.getLayoutDimension(1, 0);
    Resources localResources = this.mContext.getResources();
    if (!br())
      i = Math.min(i, localResources.getDimensionPixelSize(g.aba));
    localTypedArray.recycle();
    return i;
  }

  public final boolean bt()
  {
    return this.mContext.getApplicationInfo().targetSdkVersion < 14;
  }

  public final int bu()
  {
    return this.mContext.getResources().getDimensionPixelSize(g.abb);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.a
 * JD-Core Version:    0.6.2
 */