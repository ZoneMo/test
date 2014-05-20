package com.tencent.mm.ui.tools;

import android.content.Context;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import com.tencent.mm.i;
import com.tencent.mm.k;

public class SearchViewNotRealTimeHelper extends LinearLayout
{
  private EditText gFV;
  private ImageButton hgz;
  private View hmb;
  private Button hmc;
  private fg hmd;

  public SearchViewNotRealTimeHelper(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public SearchViewNotRealTimeHelper(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  private void init()
  {
    ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(k.aSe, this, true);
    this.gFV = ((EditText)findViewById(i.arK));
    this.hgz = ((ImageButton)findViewById(i.aMp));
    this.hmb = findViewById(i.aNo);
    this.hmc = ((Button)findViewById(i.button));
    this.hmc.setEnabled(false);
    this.gFV.addTextChangedListener(new fa(this));
    this.gFV.setOnEditorActionListener(new fb(this));
    this.hgz.setOnClickListener(new fc(this));
    this.hmb.setOnClickListener(new fd(this));
    this.hmc.setOnClickListener(new fe(this));
  }

  public final void a(fg paramfg)
  {
    this.hmd = paramfg;
  }

  public final String aMH()
  {
    Editable localEditable = this.gFV.getEditableText();
    if (localEditable == null)
      return "";
    return localEditable.toString();
  }

  public final void aNG()
  {
    this.hmb.setVisibility(0);
  }

  public final void aNH()
  {
    this.gFV.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
  }

  public final void aNI()
  {
    this.gFV.post(new ff(this));
  }

  public final void aNJ()
  {
    this.hmc.performClick();
  }

  public final void og(int paramInt)
  {
    this.gFV.setTextColor(paramInt);
  }

  public final void oh(int paramInt)
  {
    this.gFV.setHintTextColor(paramInt);
  }

  public final void w(CharSequence paramCharSequence)
  {
    this.gFV.setText("");
    this.gFV.append(paramCharSequence);
  }

  public final void x(CharSequence paramCharSequence)
  {
    this.gFV.setHint(paramCharSequence);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.SearchViewNotRealTimeHelper
 * JD-Core Version:    0.6.2
 */