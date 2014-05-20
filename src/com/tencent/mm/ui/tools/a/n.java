package com.tencent.mm.ui.tools.a;

import android.content.Context;
import android.os.Handler;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;

final class n
{
  final Context context;
  final Handler handler;
  final e hpY;
  final af hpZ;
  final p hql = new p();
  final ExecutorService hqm;
  final Map hqn;
  final Handler hqo;
  final List hqp;

  n(Context paramContext, ExecutorService paramExecutorService, Handler paramHandler, e parame, af paramaf)
  {
    this.hql.start();
    this.context = paramContext;
    this.hqm = paramExecutorService;
    this.hqn = new LinkedHashMap();
    this.handler = new o(this.hql.getLooper(), this);
    this.hqo = paramHandler;
    this.hpY = parame;
    this.hpZ = paramaf;
    this.hqp = new ArrayList(4);
  }

  private void c(d paramd)
  {
    if (paramd.isCancelled());
    do
    {
      return;
      this.hqp.add(paramd);
    }
    while (this.handler.hasMessages(7));
    this.handler.sendEmptyMessageDelayed(7, 200L);
  }

  final void a(d paramd)
  {
    this.hpY.s(paramd.getKey(), paramd.aOE());
    this.hqn.remove(paramd.getKey());
    c(paramd);
  }

  final void b(d paramd)
  {
    this.hqn.remove(paramd.getKey());
    c(paramd);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.n
 * JD-Core Version:    0.6.2
 */