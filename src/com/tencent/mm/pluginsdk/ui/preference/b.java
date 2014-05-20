package com.tencent.mm.pluginsdk.ui.preference;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.pluginsdk.ui.tools.p;
import com.tencent.mm.ui.base.h;

final class b
  implements View.OnClickListener
{
  b(a parama)
  {
  }

  public final void onClick(View paramView)
  {
    View localView = View.inflate(a.a(this.frs), k.aZn, null);
    ((TextView)localView.findViewById(i.aIZ)).setText("");
    TextView localTextView = (TextView)localView.findViewById(i.aRF);
    localTextView.setVisibility(0);
    localTextView.setText("50");
    EditText localEditText = (EditText)localView.findViewById(i.aIY);
    localEditText.setFilters(p.fux);
    localEditText.addTextChangedListener(new c(this, localTextView));
    h.a(a.a(this.frs), a.a(this.frs).getString(n.beg), localView, new d(this, localEditText), null);
    localEditText.post(new e(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.preference.b
 * JD-Core Version:    0.6.2
 */