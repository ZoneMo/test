package com.tencent.mm.ui.base;

import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import com.tencent.mm.d;

public class MMListPopupWindow
{
  private Rect du = new Rect();
  private bp gAs;
  private final bu gAt = new bu(this, (byte)0);
  private final bt gAu = new bt(this, (byte)0);
  private final bs gAv = new bs(this, (byte)0);
  private final bq gAw = new bq(this, (byte)0);
  private boolean gAx = false;
  private Context mContext;
  private Handler mHandler = new Handler();
  private DataSetObserver mObserver;
  private View oA;
  private Drawable oB;
  private AdapterView.OnItemClickListener oC;
  private AdapterView.OnItemSelectedListener oD;
  private Runnable oI;
  private boolean oJ;
  private PopupWindow ok;
  private ListAdapter ol;
  private int oo = -2;
  private int oq = -2;
  private int or;
  private int ot;
  private boolean ou;
  private boolean ov = false;
  private boolean ow = false;
  int ox = 2147483647;
  private View oy;
  private int oz = 0;

  public MMListPopupWindow(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, d.listPopupWindowStyle);
  }

  public MMListPopupWindow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this.mContext = paramContext;
    this.ok = new PopupWindow(paramContext, paramAttributeSet, paramInt);
    this.ok.setInputMethodMode(1);
  }

  public final void aHb()
  {
    this.or = 0;
  }

  public final void clearListSelection()
  {
    bp localbp = this.gAs;
    if (localbp != null)
    {
      bp.a(localbp, true);
      localbp.requestLayout();
    }
  }

  public final void dismiss()
  {
    this.ok.dismiss();
    if (this.oy != null)
    {
      ViewParent localViewParent = this.oy.getParent();
      if ((localViewParent instanceof ViewGroup))
        ((ViewGroup)localViewParent).removeView(this.oy);
    }
    this.ok.setContentView(null);
    this.gAs = null;
    this.mHandler.removeCallbacks(this.gAt);
  }

  public final void dk()
  {
    this.oJ = true;
    this.ok.setFocusable(true);
  }

  public final void dl()
  {
    this.ok.setInputMethodMode(2);
  }

  public final void dq(boolean paramBoolean)
  {
    this.gAx = paramBoolean;
  }

  public final View getAnchorView()
  {
    return this.oA;
  }

  public final ListView getListView()
  {
    return this.gAs;
  }

  public final boolean isInputMethodNotNeeded()
  {
    return this.ok.getInputMethodMode() == 2;
  }

  public final boolean isShowing()
  {
    return this.ok.isShowing();
  }

  public final void setAdapter(ListAdapter paramListAdapter)
  {
    if (this.mObserver == null)
      this.mObserver = new br(this, (byte)0);
    while (true)
    {
      this.ol = paramListAdapter;
      if (this.ol != null)
        paramListAdapter.registerDataSetObserver(this.mObserver);
      if (this.gAs != null)
        this.gAs.setAdapter(this.ol);
      return;
      if (this.ol != null)
        this.ol.unregisterDataSetObserver(this.mObserver);
    }
  }

  public final void setAnchorView(View paramView)
  {
    this.oA = paramView;
  }

  public final void setAnimationStyle(int paramInt)
  {
    this.ok.setAnimationStyle(paramInt);
  }

  public final void setBackgroundDrawable(Drawable paramDrawable)
  {
    this.ok.setBackgroundDrawable(paramDrawable);
  }

  public final void setContentWidth(int paramInt)
  {
    Drawable localDrawable = this.ok.getBackground();
    if (localDrawable != null)
    {
      localDrawable.getPadding(this.du);
      this.oq = (paramInt + (this.du.left + this.du.right));
      return;
    }
    this.oq = paramInt;
  }

  public final void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.ok.setOnDismissListener(paramOnDismissListener);
  }

  public final void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.oC = paramOnItemClickListener;
  }

  public final void setVerticalOffset(int paramInt)
  {
    this.ot = paramInt;
    this.ou = true;
  }

  public final void show()
  {
    int i = 1;
    bp localbp;
    View localView3;
    Object localObject;
    LinearLayout.LayoutParams localLayoutParams2;
    label261: LinearLayout.LayoutParams localLayoutParams3;
    if (this.gAs == null)
    {
      Context localContext = this.mContext;
      this.oI = new bn(this);
      if (!this.oJ)
      {
        int i12 = i;
        this.gAs = new bp(localContext, i12);
        if (this.oB != null)
          this.gAs.setSelector(this.oB);
        this.gAs.setAdapter(this.ol);
        this.gAs.setOnItemClickListener(this.oC);
        this.gAs.setFocusable(i);
        this.gAs.setFocusableInTouchMode(i);
        this.gAs.setDivider(null);
        this.gAs.setDividerHeight(0);
        this.gAs.setOnItemSelectedListener(new bo(this));
        this.gAs.setOnScrollListener(this.gAv);
        if (this.oD != null)
          this.gAs.setOnItemSelectedListener(this.oD);
        localbp = this.gAs;
        localView3 = this.oy;
        if (localView3 == null)
          break label1284;
        localObject = new LinearLayout(localContext);
        ((LinearLayout)localObject).setOrientation(i);
        localLayoutParams2 = new LinearLayout.LayoutParams(-1, 0, 1.0F);
        switch (this.oz)
        {
        default:
          new StringBuilder("Invalid hint position ").append(this.oz).toString();
          localView3.measure(View.MeasureSpec.makeMeasureSpec(this.oq, -2147483648), 0);
          localLayoutParams3 = (LinearLayout.LayoutParams)localView3.getLayoutParams();
        case 1:
        case 0:
        }
      }
    }
    label389: label922: label930: label936: label1067: label1201: for (int j = localView3.getMeasuredHeight() + localLayoutParams3.topMargin + localLayoutParams3.bottomMargin; ; j = 0)
    {
      this.ok.setContentView((View)localObject);
      label315: label598: label1242: 
      while (true)
      {
        Drawable localDrawable = this.ok.getBackground();
        int k;
        label375: View localView2;
        int i1;
        int i2;
        if (localDrawable != null)
        {
          localDrawable.getPadding(this.du);
          k = this.du.top + this.du.bottom;
          if (!this.ou)
            this.ot = (-this.du.top);
          if (this.ok.getInputMethodMode() != 2)
            break label759;
          int m = i;
          localView2 = this.oA;
          i1 = this.ot;
          Rect localRect = new Rect();
          localView2.getWindowVisibleDisplayFrame(localRect);
          localView2.getLocationOnScreen(new int[2]);
          i2 = localRect.bottom;
          if (m == 0)
            break label1271;
        }
        label606: label992: label1014: label1271: for (int i3 = localView2.getContext().getResources().getDisplayMetrics().heightPixels; ; i3 = i2)
        {
          int i4 = i3 - i1;
          if (this.ok.getBackground() != null)
          {
            this.ok.getBackground().getPadding(this.du);
            i4 -= this.du.top + this.du.bottom;
          }
          int i5;
          int i9;
          PopupWindow localPopupWindow2;
          if ((this.ov) || (this.oo == -1))
          {
            i5 = i4 + k;
            boolean bool2 = isInputMethodNotNeeded();
            if (!this.ok.isShowing())
              break label1014;
            if (this.oq != -1)
            {
              if (this.oq != -2)
                break label922;
              this.oA.getWidth();
            }
            if (this.oo != -1)
              break label970;
            if (!bool2)
              break label936;
            PopupWindow localPopupWindow4 = this.ok;
            if (this.oq != -1)
              break label930;
            i9 = -1;
            localPopupWindow4.setWindowLayoutMode(i9, 0);
            localPopupWindow2 = this.ok;
            if ((this.ow) || (this.ov))
              break label987;
          }
          label759: boolean bool1;
          while (true)
          {
            localPopupWindow2.setOutsideTouchable(i);
            if (!this.gAx)
              break label992;
            this.ok.showAtLocation(this.oA, 17, 0, 0);
            return;
            int i13 = 0;
            break;
            ((LinearLayout)localObject).addView(localbp, localLayoutParams2);
            ((LinearLayout)localObject).addView(localView3);
            break label261;
            ((LinearLayout)localObject).addView(localView3);
            ((LinearLayout)localObject).addView(localbp, localLayoutParams2);
            break label261;
            this.ok.getContentView();
            View localView1 = this.oy;
            if (localView1 == null)
              break label1278;
            LinearLayout.LayoutParams localLayoutParams1 = (LinearLayout.LayoutParams)localView1.getLayoutParams();
            j = localView1.getMeasuredHeight() + localLayoutParams1.topMargin + localLayoutParams1.bottomMargin;
            break label315;
            this.du.setEmpty();
            k = 0;
            break label375;
            int n = 0;
            break label389;
            int i10;
            switch (this.oq)
            {
            default:
              i10 = View.MeasureSpec.makeMeasureSpec(this.oq, 1073741824);
            case -2:
            case -1:
            }
            while (true)
            {
              int i11 = this.gAs.g(i10, i4 - j);
              if (i11 > 0)
                j += k;
              i5 = j + i11;
              break;
              i10 = View.MeasureSpec.makeMeasureSpec(this.mContext.getResources().getDisplayMetrics().widthPixels - (this.du.left + this.du.right), -2147483648);
              continue;
              i10 = View.MeasureSpec.makeMeasureSpec(this.mContext.getResources().getDisplayMetrics().widthPixels - (this.du.left + this.du.right), 1073741824);
            }
            break label568;
            i9 = 0;
            break label598;
            PopupWindow localPopupWindow3 = this.ok;
            if (this.oq == -1);
            for (int i8 = -1; ; i8 = 0)
            {
              localPopupWindow3.setWindowLayoutMode(i8, -1);
              break;
            }
            if (this.oo == -2)
              break label606;
            break label606;
            bool1 = false;
          }
          this.ok.showAtLocation(this.oA, 53, this.or, this.ot);
          return;
          int i6;
          int i7;
          if (this.oq == -1)
          {
            i6 = -1;
            if (this.oo != -1)
              break label1201;
            i7 = -1;
            this.ok.setWindowLayoutMode(i6, i7);
            PopupWindow localPopupWindow1 = this.ok;
            if ((this.ow) || (this.ov))
              break label1242;
            localPopupWindow1.setOutsideTouchable(bool1);
            this.ok.setTouchInterceptor(this.gAu);
            if (!this.gAx)
              break label1247;
            this.ok.showAtLocation(this.oA, 17, 0, 0);
          }
          while (true)
          {
            this.gAs.setSelection(-1);
            if ((!this.oJ) || (this.gAs.isInTouchMode()))
              clearListSelection();
            if (this.oJ)
              break;
            this.mHandler.post(this.gAw);
            return;
            if (this.oq == -2)
            {
              this.ok.setWidth(this.oA.getWidth());
              i6 = 0;
              break label1025;
            }
            this.ok.setWidth(this.oq);
            i6 = 0;
            break label1025;
            if (this.oo == -2)
            {
              this.ok.setHeight(i5);
              i7 = 0;
              break label1036;
            }
            this.ok.setHeight(this.oo);
            i7 = 0;
            break label1036;
            bool1 = false;
            break label1067;
            this.ok.showAtLocation(this.oA, 53, this.or, this.ot);
          }
        }
        label987: label1247: label1278: j = 0;
      }
      label568: label970: localObject = localbp;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMListPopupWindow
 * JD-Core Version:    0.6.2
 */