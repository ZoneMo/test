package com.tencent.mm.ui.base.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView.OnEditorActionListener;
import com.tencent.mm.i;

public class InputPreference extends Preference
{
  private String gGc;
  private String gGd;
  private EditText gGe;
  private Button gGf;
  private r gGg;
  private View.OnClickListener gGh = new p(this);
  private TextView.OnEditorActionListener gGi = new q(this);

  public InputPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public InputPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public final void a(r paramr)
  {
    this.gGg = paramr;
  }

  public final void bc(String paramString1, String paramString2)
  {
    this.gGc = paramString1;
    this.gGd = paramString2;
  }

  protected final void onBindView(View paramView)
  {
    super.onBindView(paramView);
    this.gGe = ((EditText)paramView.findViewById(i.arK));
    this.gGe.setHint(this.gGc);
    this.gGe.setOnEditorActionListener(this.gGi);
    this.gGf = ((Button)paramView.findViewById(i.button));
    this.gGf.setText(this.gGd);
    this.gGf.setOnClickListener(this.gGh);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.InputPreference
 * JD-Core Version:    0.6.2
 */