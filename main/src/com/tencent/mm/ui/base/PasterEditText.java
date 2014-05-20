package com.tencent.mm.ui.base;

import android.content.Context;
import android.text.ClipboardManager;
import android.util.AttributeSet;
import android.widget.EditText;
import com.tencent.mm.sdk.platformtools.cj;

public class PasterEditText extends EditText
{
  private Context context;
  private ClipboardManager eEo = null;
  private int eEp = 0;

  public PasterEditText(Context paramContext)
  {
    super(paramContext);
    this.context = paramContext;
    init();
  }

  public PasterEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
    init();
  }

  private void init()
  {
    this.eEo = ((ClipboardManager)this.context.getSystemService("clipboard"));
  }

  public final int ahR()
  {
    return this.eEp;
  }

  public boolean onTextContextMenuItem(int paramInt)
  {
    if (paramInt == 16908322)
    {
      if ((this.eEo != null) && (this.eEo.getText() != null) && ((this.eEo.getText() instanceof String)) && (!cj.hX((String)this.eEo.getText())))
      {
        this.eEp += this.eEo.getText().length();
        return true;
      }
    }
    else
      return super.onTextContextMenuItem(paramInt);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.PasterEditText
 * JD-Core Version:    0.6.2
 */