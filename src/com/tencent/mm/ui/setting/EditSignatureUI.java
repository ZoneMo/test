package com.tencent.mm.ui.setting;

import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.bt;

public class EditSignatureUI extends MMActivity
{
  private EditText hdL;
  private TextView hdw;

  private static int q(CharSequence paramCharSequence)
  {
    return 30 - Math.round(r(paramCharSequence));
  }

  private static float r(CharSequence paramCharSequence)
  {
    float f = 0.0F;
    int i = 0;
    if (i < paramCharSequence.length())
    {
      if (au.l(paramCharSequence.charAt(i)));
      for (f += 1.0F; ; f += 0.5F)
      {
        i++;
        break;
      }
    }
    return f;
  }

  protected final void FR()
  {
    mn(2131167804);
    this.hdL = ((EditText)findViewById(2131361916));
    this.hdw = ((TextView)findViewById(2131362435));
    String str = au.hW((String)be.uz().sr().get(12291));
    this.hdL.setText(str);
    this.hdL.setSelection(this.hdL.getText().length());
    this.hdw.setText(q(this.hdL.getEditableText()));
    EditText localEditText = this.hdL;
    InputFilter[] arrayOfInputFilter = new InputFilter[1];
    arrayOfInputFilter[0] = new c(this);
    localEditText.setFilters(arrayOfInputFilter);
    this.hdL.addTextChangedListener(new d(this, (byte)0));
    a(new a(this));
    a(getString(2131167685), new b(this), bt.gnO);
    dg(false);
  }

  protected final int getLayoutId()
  {
    return 2130903254;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      finish();
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.EditSignatureUI
 * JD-Core Version:    0.6.2
 */