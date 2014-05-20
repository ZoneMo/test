package com.tencent.mm.ui.tools;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.tencent.mm.sdk.platformtools.aa;

public class ActionBarSearchView$ActionBarEditText extends EditText
{
  private ActionBarSearchView hgH;

  public ActionBarSearchView$ActionBarEditText(Context paramContext)
  {
    super(paramContext);
  }

  public ActionBarSearchView$ActionBarEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public ActionBarSearchView$ActionBarEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public final void d(ActionBarSearchView paramActionBarSearchView)
  {
    this.hgH = paramActionBarSearchView;
  }

  public boolean onKeyPreIme(int paramInt, KeyEvent paramKeyEvent)
  {
    aa.v("MicroMsg.ActionBarSearchView", "on onKeyPreIme");
    if (paramInt == 4)
    {
      if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getRepeatCount() == 0))
      {
        aa.v("MicroMsg.ActionBarSearchView", "on onKeyPreIme action down");
        KeyEvent.DispatcherState localDispatcherState2 = getKeyDispatcherState();
        if (localDispatcherState2 != null)
          localDispatcherState2.startTracking(paramKeyEvent, this);
        return true;
      }
      if (paramKeyEvent.getAction() == 1)
      {
        aa.v("MicroMsg.ActionBarSearchView", "on onKeyPreIme action up");
        KeyEvent.DispatcherState localDispatcherState1 = getKeyDispatcherState();
        if (localDispatcherState1 != null)
          localDispatcherState1.handleUpEvent(paramKeyEvent);
        if ((paramKeyEvent.isTracking()) && (!paramKeyEvent.isCanceled()))
        {
          aa.v("MicroMsg.ActionBarSearchView", "on onKeyPreIme action up is tracking");
          this.hgH.clearFocus();
          InputMethodManager localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
          if (localInputMethodManager != null)
            localInputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
          return true;
        }
      }
    }
    return super.onKeyPreIme(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ActionBarSearchView.ActionBarEditText
 * JD-Core Version:    0.6.2
 */