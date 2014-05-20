package com.tencent.mm.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import com.tencent.mm.ao.b;
import com.tencent.mm.ao.d;

public class MMEditText extends EditText
{
  private InputConnection huV;

  public MMEditText(Context paramContext)
  {
    super(paramContext);
  }

  public MMEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public MMEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public final InputConnection aPx()
  {
    return this.huV;
  }

  public InputConnection onCreateInputConnection(EditorInfo paramEditorInfo)
  {
    this.huV = super.onCreateInputConnection(paramEditorInfo);
    return this.huV;
  }

  public boolean onTextContextMenuItem(int paramInt)
  {
    boolean bool = super.onTextContextMenuItem(paramInt);
    if (paramInt == 16908322)
    {
      int i = getSelectionStart();
      setText(b.a(getContext(), getText().toString(), (int)getTextSize(), false));
      setSelection(i);
    }
    return bool;
  }

  public final void yd(String paramString)
  {
    int i = d.h(getContext(), getText().toString(), getSelectionStart());
    int j = d.h(getContext(), getText().toString(), getSelectionEnd());
    StringBuffer localStringBuffer = new StringBuffer(getText());
    String str = localStringBuffer.substring(0, i) + paramString + localStringBuffer.substring(j, localStringBuffer.length());
    setText(b.a(getContext(), str, (int)getTextSize(), false));
    setSelection(i + paramString.length());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.widget.MMEditText
 * JD-Core Version:    0.6.2
 */