package com.tencent.mm.pluginsdk.ui.tools;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import java.io.File;

final class f
  implements View.OnClickListener
{
  f(FileExplorerUI paramFileExplorerUI, File paramFile)
  {
  }

  public final void onClick(View paramView)
  {
    FileExplorerUI.a(this.fuh, 0);
    FileExplorerUI.a(this.fuh).rj(this.fui.getPath());
    FileExplorerUI.a(this.fuh).b(FileExplorerUI.e(this.fuh).getParentFile(), FileExplorerUI.e(this.fuh));
    FileExplorerUI.a(this.fuh).notifyDataSetInvalidated();
    FileExplorerUI.a(this.fuh).notifyDataSetChanged();
    FileExplorerUI.c(this.fuh).setSelection(0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.f
 * JD-Core Version:    0.6.2
 */