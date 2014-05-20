package android.support.v4.view.a;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.View;

public final class a
{
  private static final c fl = new f();
  private final Object fn;

  static
  {
    if ("JellyBeanMR2".equals(Build.VERSION.CODENAME))
    {
      fl = new e();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      fl = new d();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      fl = new b();
      return;
    }
  }

  public a(Object paramObject)
  {
    this.fn = paramObject;
  }

  public static a a(a parama)
  {
    Object localObject = fl.c(parama.fn);
    if (localObject != null)
      return new a(localObject);
    return null;
  }

  public final void addAction(int paramInt)
  {
    fl.a(this.fn, paramInt);
  }

  public final void addChild(View paramView)
  {
    fl.b(this.fn, paramView);
  }

  public final Object as()
  {
    return this.fn;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    a locala;
    do
    {
      do
      {
        return true;
        if (paramObject == null)
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        locala = (a)paramObject;
        if (this.fn != null)
          break;
      }
      while (locala.fn == null);
      return false;
    }
    while (this.fn.equals(locala.fn));
    return false;
  }

  public final int getActions()
  {
    return fl.d(this.fn);
  }

  public final void getBoundsInParent(Rect paramRect)
  {
    fl.a(this.fn, paramRect);
  }

  public final void getBoundsInScreen(Rect paramRect)
  {
    fl.b(this.fn, paramRect);
  }

  public final CharSequence getClassName()
  {
    return fl.e(this.fn);
  }

  public final CharSequence getContentDescription()
  {
    return fl.f(this.fn);
  }

  public final int getMovementGranularities()
  {
    return fl.t(this.fn);
  }

  public final CharSequence getPackageName()
  {
    return fl.g(this.fn);
  }

  public final int hashCode()
  {
    if (this.fn == null)
      return 0;
    return this.fn.hashCode();
  }

  public final boolean isAccessibilityFocused()
  {
    return fl.v(this.fn);
  }

  public final boolean isClickable()
  {
    return fl.k(this.fn);
  }

  public final boolean isEnabled()
  {
    return fl.l(this.fn);
  }

  public final boolean isFocusable()
  {
    return fl.m(this.fn);
  }

  public final boolean isFocused()
  {
    return fl.n(this.fn);
  }

  public final boolean isLongClickable()
  {
    return fl.o(this.fn);
  }

  public final boolean isSelected()
  {
    return fl.r(this.fn);
  }

  public final boolean isVisibleToUser()
  {
    return fl.u(this.fn);
  }

  public final void recycle()
  {
    fl.s(this.fn);
  }

  public final void setAccessibilityFocused(boolean paramBoolean)
  {
    fl.i(this.fn, paramBoolean);
  }

  public final void setBoundsInParent(Rect paramRect)
  {
    fl.c(this.fn, paramRect);
  }

  public final void setBoundsInScreen(Rect paramRect)
  {
    fl.d(this.fn, paramRect);
  }

  public final void setClassName(CharSequence paramCharSequence)
  {
    fl.a(this.fn, paramCharSequence);
  }

  public final void setClickable(boolean paramBoolean)
  {
    fl.a(this.fn, paramBoolean);
  }

  public final void setContentDescription(CharSequence paramCharSequence)
  {
    fl.b(this.fn, paramCharSequence);
  }

  public final void setEnabled(boolean paramBoolean)
  {
    fl.b(this.fn, paramBoolean);
  }

  public final void setFocusable(boolean paramBoolean)
  {
    fl.c(this.fn, paramBoolean);
  }

  public final void setFocused(boolean paramBoolean)
  {
    fl.d(this.fn, paramBoolean);
  }

  public final void setLongClickable(boolean paramBoolean)
  {
    fl.e(this.fn, paramBoolean);
  }

  public final void setMovementGranularities(int paramInt)
  {
    fl.b(this.fn, paramInt);
  }

  public final void setPackageName(CharSequence paramCharSequence)
  {
    fl.c(this.fn, paramCharSequence);
  }

  public final void setParent(View paramView)
  {
    fl.c(this.fn, paramView);
  }

  public final void setScrollable(boolean paramBoolean)
  {
    fl.f(this.fn, paramBoolean);
  }

  public final void setSelected(boolean paramBoolean)
  {
    fl.g(this.fn, paramBoolean);
  }

  public final void setSource(View paramView)
  {
    fl.d(this.fn, paramView);
  }

  public final void setVisibleToUser(boolean paramBoolean)
  {
    fl.h(this.fn, paramBoolean);
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.toString());
    Rect localRect = new Rect();
    getBoundsInParent(localRect);
    localStringBuilder.append("; boundsInParent: " + localRect);
    getBoundsInScreen(localRect);
    localStringBuilder.append("; boundsInScreen: " + localRect);
    localStringBuilder.append("; packageName: ").append(getPackageName());
    localStringBuilder.append("; className: ").append(getClassName());
    localStringBuilder.append("; text: ").append(fl.h(this.fn));
    localStringBuilder.append("; contentDescription: ").append(getContentDescription());
    localStringBuilder.append("; viewId: ").append(fl.w(this.fn));
    localStringBuilder.append("; checkable: ").append(fl.i(this.fn));
    localStringBuilder.append("; checked: ").append(fl.j(this.fn));
    localStringBuilder.append("; focusable: ").append(isFocusable());
    localStringBuilder.append("; focused: ").append(isFocused());
    localStringBuilder.append("; selected: ").append(isSelected());
    localStringBuilder.append("; clickable: ").append(isClickable());
    localStringBuilder.append("; longClickable: ").append(isLongClickable());
    localStringBuilder.append("; enabled: ").append(isEnabled());
    localStringBuilder.append("; password: ").append(fl.p(this.fn));
    localStringBuilder.append("; scrollable: " + fl.q(this.fn));
    localStringBuilder.append("; [");
    int i = getActions();
    if (i != 0)
    {
      int j = 1 << Integer.numberOfTrailingZeros(i);
      int k = i & (j ^ 0xFFFFFFFF);
      String str;
      switch (j)
      {
      default:
        str = "ACTION_UNKNOWN";
      case 1:
      case 2:
      case 4:
      case 8:
      case 16:
      case 32:
      case 64:
      case 128:
      case 256:
      case 512:
      case 1024:
      case 2048:
      case 4096:
      case 8192:
      case 65536:
      case 16384:
      case 32768:
      case 131072:
      }
      while (true)
      {
        localStringBuilder.append(str);
        if (k != 0)
          localStringBuilder.append(", ");
        i = k;
        break;
        str = "ACTION_FOCUS";
        continue;
        str = "ACTION_CLEAR_FOCUS";
        continue;
        str = "ACTION_SELECT";
        continue;
        str = "ACTION_CLEAR_SELECTION";
        continue;
        str = "ACTION_CLICK";
        continue;
        str = "ACTION_LONG_CLICK";
        continue;
        str = "ACTION_ACCESSIBILITY_FOCUS";
        continue;
        str = "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
        continue;
        str = "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
        continue;
        str = "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
        continue;
        str = "ACTION_NEXT_HTML_ELEMENT";
        continue;
        str = "ACTION_PREVIOUS_HTML_ELEMENT";
        continue;
        str = "ACTION_SCROLL_FORWARD";
        continue;
        str = "ACTION_SCROLL_BACKWARD";
        continue;
        str = "ACTION_CUT";
        continue;
        str = "ACTION_COPY";
        continue;
        str = "ACTION_PASTE";
        continue;
        str = "ACTION_SET_SELECTION";
      }
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.a.a
 * JD-Core Version:    0.6.2
 */