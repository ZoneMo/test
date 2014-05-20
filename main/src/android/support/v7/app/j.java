package android.support.v7.app;

import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window.Callback;
import android.view.WindowManager.LayoutParams;
import android.view.accessibility.AccessibilityEvent;

final class j
  implements Window.Callback
{
  final Window.Callback hq;

  public j(i parami, Window.Callback paramCallback)
  {
    this.hq = paramCallback;
  }

  public final boolean dispatchGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    return this.hq.dispatchGenericMotionEvent(paramMotionEvent);
  }

  public final boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return this.hq.dispatchKeyEvent(paramKeyEvent);
  }

  public final boolean dispatchKeyShortcutEvent(KeyEvent paramKeyEvent)
  {
    return this.hq.dispatchKeyShortcutEvent(paramKeyEvent);
  }

  public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    return this.hq.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent);
  }

  public final boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    return this.hq.dispatchTouchEvent(paramMotionEvent);
  }

  public final boolean dispatchTrackballEvent(MotionEvent paramMotionEvent)
  {
    return this.hq.dispatchTrackballEvent(paramMotionEvent);
  }

  public final void onActionModeFinished(ActionMode paramActionMode)
  {
    this.hq.onActionModeFinished(paramActionMode);
    this.hr.onActionModeFinished(paramActionMode);
  }

  public final void onActionModeStarted(ActionMode paramActionMode)
  {
    this.hq.onActionModeStarted(paramActionMode);
    this.hr.onActionModeStarted(paramActionMode);
  }

  public final void onAttachedToWindow()
  {
    this.hq.onAttachedToWindow();
  }

  public final void onContentChanged()
  {
    this.hq.onContentChanged();
  }

  public final boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    return this.hq.onCreatePanelMenu(paramInt, paramMenu);
  }

  public final View onCreatePanelView(int paramInt)
  {
    return this.hq.onCreatePanelView(paramInt);
  }

  public final void onDetachedFromWindow()
  {
    this.hq.onDetachedFromWindow();
  }

  public final boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    return this.hq.onMenuItemSelected(paramInt, paramMenuItem);
  }

  public final boolean onMenuOpened(int paramInt, Menu paramMenu)
  {
    return this.hq.onMenuOpened(paramInt, paramMenu);
  }

  public final void onPanelClosed(int paramInt, Menu paramMenu)
  {
    this.hq.onPanelClosed(paramInt, paramMenu);
  }

  public final boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    return this.hq.onPreparePanel(paramInt, paramView, paramMenu);
  }

  public final boolean onSearchRequested()
  {
    return this.hq.onSearchRequested();
  }

  public final void onWindowAttributesChanged(WindowManager.LayoutParams paramLayoutParams)
  {
    this.hq.onWindowAttributesChanged(paramLayoutParams);
  }

  public final void onWindowFocusChanged(boolean paramBoolean)
  {
    this.hq.onWindowFocusChanged(paramBoolean);
  }

  public final ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback)
  {
    return this.hq.onWindowStartingActionMode(paramCallback);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.app.j
 * JD-Core Version:    0.6.2
 */