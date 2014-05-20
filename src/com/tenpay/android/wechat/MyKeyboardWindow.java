package com.tenpay.android.wechat;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;

public class MyKeyboardWindow extends LinearLayout
{
  public static final int X_MODE_CHARACTER = 1;
  public static final int X_MODE_NONE;
  private Context a;
  private int b = 0;
  private Button c;
  private Button d;
  private Button e;
  private Button f;
  private Button g;
  private Button h;
  private Button i;
  private Button j;
  private Button k;
  private Button l;
  private Button m;
  private ImageButton n;
  private EditText o;

  public MyKeyboardWindow(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }

  public MyKeyboardWindow(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }

  private void a(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
    View localView = LayoutInflater.from(paramContext).inflate(this.a.getResources().getIdentifier("tenpay_number_keyboard", "layout", this.a.getPackageName()), this, true);
    this.c = ((Button)localView.findViewById(a("tenpay_keyboard_1")));
    this.d = ((Button)localView.findViewById(a("tenpay_keyboard_2")));
    this.e = ((Button)localView.findViewById(a("tenpay_keyboard_3")));
    this.f = ((Button)localView.findViewById(a("tenpay_keyboard_4")));
    this.g = ((Button)localView.findViewById(a("tenpay_keyboard_5")));
    this.h = ((Button)localView.findViewById(a("tenpay_keyboard_6")));
    this.i = ((Button)localView.findViewById(a("tenpay_keyboard_7")));
    this.j = ((Button)localView.findViewById(a("tenpay_keyboard_8")));
    this.k = ((Button)localView.findViewById(a("tenpay_keyboard_9")));
    this.l = ((Button)localView.findViewById(a("tenpay_keyboard_x")));
    this.m = ((Button)localView.findViewById(a("tenpay_keyboard_0")));
    this.n = ((ImageButton)localView.findViewById(a("tenpay_keyboard_d")));
    MyKeyboardWindow.1 local1 = new MyKeyboardWindow.1(this);
    this.c.setOnClickListener(local1);
    this.d.setOnClickListener(local1);
    this.e.setOnClickListener(local1);
    this.f.setOnClickListener(local1);
    this.g.setOnClickListener(local1);
    this.h.setOnClickListener(local1);
    this.i.setOnClickListener(local1);
    this.j.setOnClickListener(local1);
    this.k.setOnClickListener(local1);
    this.l.setOnClickListener(local1);
    this.m.setOnClickListener(local1);
    this.n.setOnClickListener(local1);
  }

  protected int a(String paramString)
  {
    return this.a.getResources().getIdentifier(paramString, "id", this.a.getPackageName());
  }

  protected int b(String paramString)
  {
    return this.a.getResources().getIdentifier(paramString, "drawable", this.a.getPackageName());
  }

  public void setInputEditText(EditText paramEditText)
  {
    CharSequence localCharSequence;
    if (paramEditText != null)
    {
      this.o = paramEditText;
      int i1 = this.o.getImeOptions();
      localCharSequence = this.o.getImeActionLabel();
      if (!TextUtils.isEmpty(localCharSequence))
        this.l.setText(localCharSequence);
      switch (i1)
      {
      default:
      case 1:
      }
    }
    do
    {
      return;
      this.b = 0;
    }
    while (!TextUtils.isEmpty(localCharSequence));
    this.l.setText("");
  }

  public void setXMode(int paramInt)
  {
    this.b = paramInt;
    switch (paramInt)
    {
    default:
      this.b = 0;
      return;
    case 0:
      this.l.setText("");
      this.l.setBackgroundResource(b("tenpay_keyitem_bottom"));
      return;
    case 1:
    }
    this.l.setText("X");
    this.l.setBackgroundResource(b("tenpay_keybtn_bottom"));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tenpay.android.wechat.MyKeyboardWindow
 * JD-Core Version:    0.6.2
 */