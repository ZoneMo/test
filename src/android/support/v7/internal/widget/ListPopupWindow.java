package android.support.v7.internal.widget;

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

public class ListPopupWindow
{
  private Rect du = new Rect();
  private Context mContext;
  private Handler mHandler = new Handler();
  private DataSetObserver mObserver;
  private View oA;
  private Drawable oB;
  private AdapterView.OnItemClickListener oC;
  private AdapterView.OnItemSelectedListener oD;
  private final ai oE = new ai(this, (byte)0);
  private final ah oF = new ah(this, (byte)0);
  private final ag oG = new ag(this, (byte)0);
  private final ae oH = new ae(this, (byte)0);
  private Runnable oI;
  private boolean oJ;
  private PopupWindow ok;
  private ListAdapter ol;
  private ad om;
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

  public ListPopupWindow(Context paramContext)
  {
    this(paramContext, null, d.listPopupWindowStyle);
  }

  public ListPopupWindow(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, d.listPopupWindowStyle);
  }

  public ListPopupWindow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this.mContext = paramContext;
    this.ok = new PopupWindow(paramContext, paramAttributeSet, paramInt);
    this.ok.setInputMethodMode(1);
  }

  public final void clearListSelection()
  {
    ad localad = this.om;
    if (localad != null)
    {
      ad.a(localad, true);
      localad.requestLayout();
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
    this.om = null;
    this.mHandler.removeCallbacks(this.oE);
  }

  public final void dj()
  {
    this.oz = 0;
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

  public final View getAnchorView()
  {
    return this.oA;
  }

  public final Drawable getBackground()
  {
    return this.ok.getBackground();
  }

  public final ListView getListView()
  {
    return this.om;
  }

  public final boolean isInputMethodNotNeeded()
  {
    return this.ok.getInputMethodMode() == 2;
  }

  public final boolean isShowing()
  {
    return this.ok.isShowing();
  }

  public void setAdapter(ListAdapter paramListAdapter)
  {
    if (this.mObserver == null)
      this.mObserver = new af(this, (byte)0);
    while (true)
    {
      this.ol = paramListAdapter;
      if (this.ol != null)
        paramListAdapter.registerDataSetObserver(this.mObserver);
      if (this.om != null)
        this.om.setAdapter(this.ol);
      return;
      if (this.ol != null)
        this.ol.unregisterDataSetObserver(this.mObserver);
    }
  }

  public final void setAnchorView(View paramView)
  {
    this.oA = paramView;
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

  public final void setHorizontalOffset(int paramInt)
  {
    this.or = paramInt;
  }

  public final void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.ok.setOnDismissListener(paramOnDismissListener);
  }

  public final void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.oC = paramOnItemClickListener;
  }

  public final void setSelection(int paramInt)
  {
    ad localad = this.om;
    if ((this.ok.isShowing()) && (localad != null))
    {
      ad.a(localad, false);
      localad.setSelection(paramInt);
      if (localad.getChoiceMode() != 0)
        localad.setItemChecked(paramInt, true);
    }
  }

  public final void setVerticalOffset(int paramInt)
  {
    this.ot = paramInt;
    this.ou = true;
  }

  public void show()
  {
    int i = 1;
    int j = -1;
    ad localad;
    View localView3;
    Object localObject;
    LinearLayout.LayoutParams localLayoutParams2;
    label249: LinearLayout.LayoutParams localLayoutParams3;
    if (this.om == null)
    {
      Context localContext = this.mContext;
      this.oI = new ab(this);
      if (!this.oJ)
      {
        int i14 = i;
        this.om = new ad(localContext, i14);
        if (this.oB != null)
          this.om.setSelector(this.oB);
        this.om.setAdapter(this.ol);
        this.om.setOnItemClickListener(this.oC);
        this.om.setFocusable(i);
        this.om.setFocusableInTouchMode(i);
        this.om.setOnItemSelectedListener(new ac(this));
        this.om.setOnScrollListener(this.oG);
        if (this.oD != null)
          this.om.setOnItemSelectedListener(this.oD);
        localad = this.om;
        localView3 = this.oy;
        if (localView3 == null)
          break label1286;
        localObject = new LinearLayout(localContext);
        ((LinearLayout)localObject).setOrientation(i);
        localLayoutParams2 = new LinearLayout.LayoutParams(j, 0, 1.0F);
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
    label774: label1038: label1043: label1054: label1065: for (int k = localView3.getMeasuredHeight() + localLayoutParams3.topMargin + localLayoutParams3.bottomMargin; ; k = 0)
    {
      this.ok.setContentView((View)localObject);
      label303: label573: label968: label1227: 
      while (true)
      {
        Drawable localDrawable = this.ok.getBackground();
        int m;
        label363: label377: View localView2;
        int i2;
        Rect localRect;
        int[] arrayOfInt;
        int i3;
        if (localDrawable != null)
        {
          localDrawable.getPadding(this.du);
          m = this.du.top + this.du.bottom;
          if (!this.ou)
            this.ot = (-this.du.top);
          if (this.ok.getInputMethodMode() != 2)
            break label774;
          int n = i;
          localView2 = this.oA;
          i2 = this.ot;
          localRect = new Rect();
          localView2.getWindowVisibleDisplayFrame(localRect);
          arrayOfInt = new int[2];
          localView2.getLocationOnScreen(arrayOfInt);
          i3 = localRect.bottom;
          if (n == 0)
            break label1273;
        }
        label590: label609: label616: label1013: label1273: for (int i4 = localView2.getContext().getResources().getDisplayMetrics().heightPixels; ; i4 = i3)
        {
          int i5 = Math.max(i4 - (arrayOfInt[i] + localView2.getHeight()) - i2, i2 + (arrayOfInt[i] - localRect.top));
          if (this.ok.getBackground() != null)
          {
            this.ok.getBackground().getPadding(this.du);
            i5 -= this.du.top + this.du.bottom;
          }
          int i6;
          int i9;
          int i10;
          PopupWindow localPopupWindow2;
          if ((this.ov) || (this.oo == j))
          {
            i6 = i5 + m;
            boolean bool2 = isInputMethodNotNeeded();
            if (!this.ok.isShowing())
              break label1043;
            if (this.oq != j)
              break label938;
            i9 = j;
            if (this.oo != j)
              break label1013;
            if (!bool2)
              break label968;
            i10 = i6;
            if (!bool2)
              break label979;
            PopupWindow localPopupWindow4 = this.ok;
            if (this.oq != j)
              break label974;
            localPopupWindow4.setWindowLayoutMode(j, 0);
            localPopupWindow2 = this.ok;
            if ((this.ow) || (this.ov))
              break label1038;
          }
          boolean bool1;
          while (true)
          {
            localPopupWindow2.setOutsideTouchable(i);
            this.ok.update(this.oA, this.or, this.ot, i9, i10);
            return;
            int i15 = 0;
            break;
            ((LinearLayout)localObject).addView(localad, localLayoutParams2);
            ((LinearLayout)localObject).addView(localView3);
            break label249;
            ((LinearLayout)localObject).addView(localView3);
            ((LinearLayout)localObject).addView(localad, localLayoutParams2);
            break label249;
            this.ok.getContentView();
            View localView1 = this.oy;
            if (localView1 == null)
              break label1280;
            LinearLayout.LayoutParams localLayoutParams1 = (LinearLayout.LayoutParams)localView1.getLayoutParams();
            k = localView1.getMeasuredHeight() + localLayoutParams1.topMargin + localLayoutParams1.bottomMargin;
            break label303;
            this.du.setEmpty();
            m = 0;
            break label363;
            int i1 = 0;
            break label377;
            int i12;
            switch (this.oq)
            {
            default:
              i12 = View.MeasureSpec.makeMeasureSpec(this.oq, 1073741824);
            case -2:
            case -1:
            }
            while (true)
            {
              int i13 = this.om.g(i12, i5 - k);
              if (i13 > 0)
                k += m;
              i6 = k + i13;
              break;
              i12 = View.MeasureSpec.makeMeasureSpec(this.mContext.getResources().getDisplayMetrics().widthPixels - (this.du.left + this.du.right), -2147483648);
              continue;
              i12 = View.MeasureSpec.makeMeasureSpec(this.mContext.getResources().getDisplayMetrics().widthPixels - (this.du.left + this.du.right), 1073741824);
            }
            if (this.oq == -2)
            {
              i9 = this.oA.getWidth();
              break label573;
            }
            i9 = this.oq;
            break label573;
            i10 = j;
            break label590;
            j = 0;
            break label609;
            PopupWindow localPopupWindow3 = this.ok;
            if (this.oq == j);
            for (int i11 = j; ; i11 = 0)
            {
              localPopupWindow3.setWindowLayoutMode(i11, j);
              break;
            }
            if (this.oo == -2)
            {
              i10 = i6;
              break label616;
            }
            i10 = this.oo;
            break label616;
            bool1 = false;
          }
          int i7;
          int i8;
          PopupWindow localPopupWindow1;
          if (this.oq == j)
          {
            i7 = j;
            if (this.oo != j)
              break label1227;
            i8 = j;
            this.ok.setWindowLayoutMode(i7, i8);
            localPopupWindow1 = this.ok;
            if ((this.ow) || (this.ov))
              break label1268;
          }
          while (true)
          {
            localPopupWindow1.setOutsideTouchable(bool1);
            this.ok.setTouchInterceptor(this.oF);
            this.ok.showAsDropDown(this.oA, this.or, this.ot);
            this.om.setSelection(j);
            if ((!this.oJ) || (this.om.isInTouchMode()))
              clearListSelection();
            if (this.oJ)
              break;
            this.mHandler.post(this.oH);
            return;
            if (this.oq == -2)
            {
              this.ok.setWidth(this.oA.getWidth());
              i7 = 0;
              break label1054;
            }
            this.ok.setWidth(this.oq);
            i7 = 0;
            break label1054;
            if (this.oo == -2)
            {
              this.ok.setHeight(i6);
              i8 = 0;
              break label1065;
            }
            this.ok.setHeight(this.oo);
            i8 = 0;
            break label1065;
            bool1 = false;
          }
        }
        label974: label979: label1268: k = 0;
      }
      label938: localObject = localad;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ListPopupWindow
 * JD-Core Version:    0.6.2
 */