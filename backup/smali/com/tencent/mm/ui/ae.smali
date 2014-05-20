.class final Lcom/tencent/mm/ui/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gmk:Lcom/tencent/mm/ui/LauncherUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/LauncherUI;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/tencent/mm/ui/ae;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const v5, 0x41004

    const v4, 0x8000

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 253
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_1

    .line 254
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "Account not Ready!!!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/ae;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/LauncherUI;->a(Lcom/tencent/mm/ui/LauncherUI;)Lcom/tencent/mm/ui/LauncherUITabView;

    move-result-object v0

    if-nez v0, :cond_2

    .line 259
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "set tag job, but tab view is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "MicroMsg.UnreadCountHelper"

    const-string v2, "getFindTabUnreadCount, but mmcore not ready"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 264
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/ae;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/LauncherUI;->a(Lcom/tencent/mm/ui/LauncherUI;)Lcom/tencent/mm/ui/LauncherUITabView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/LauncherUITabView;->db(Z)V

    .line 265
    iget-object v0, p0, Lcom/tencent/mm/ui/ae;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/LauncherUI;->a(Lcom/tencent/mm/ui/LauncherUI;)Lcom/tencent/mm/ui/LauncherUITabView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/LauncherUITabView;->my(I)V

    .line 267
    if-gtz v2, :cond_6

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    and-int/2addr v0, v4

    if-nez v0, :cond_6

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v3, 0x10b20

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, v7}, Lcom/tencent/mm/platformtools/au;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 270
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v3, 0x10b19

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 273
    iget-object v0, p0, Lcom/tencent/mm/ui/ae;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/LauncherUI;->a(Lcom/tencent/mm/ui/LauncherUI;)Lcom/tencent/mm/ui/LauncherUITabView;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/tencent/mm/ui/LauncherUITabView;->db(Z)V

    goto :goto_0

    .line 263
    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/v;->tl()I

    move-result v0

    and-int/2addr v0, v4

    if-nez v0, :cond_9

    invoke-static {}, Lcom/tencent/mm/model/x;->tU()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_2
    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_8

    invoke-static {}, Lcom/tencent/mm/ah/k;->Dz()Lcom/tencent/mm/ah/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/ah/h;->Dr()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    :goto_3
    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_4

    invoke-static {}, Lcom/tencent/mm/ah/k;->DA()Lcom/tencent/mm/ah/j;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/tencent/mm/ah/j;->Dr()I

    move-result v3

    add-int/2addr v2, v3

    :cond_4
    add-int/2addr v0, v2

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v2

    and-int/2addr v2, v4

    if-nez v2, :cond_5

    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apA()Lcom/tencent/mm/pluginsdk/u;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apA()Lcom/tencent/mm/pluginsdk/u;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/pluginsdk/u;->Dr()I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    move v2, v0

    goto/16 :goto_1

    .line 278
    :cond_6
    if-gtz v2, :cond_0

    const-string v0, "emoji"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v2, 0x40003

    invoke-virtual {v0, v2, v5}, Lcom/tencent/mm/i/a;->x(II)Z

    move-result v0

    .line 280
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v2

    const v3, 0x40005

    invoke-virtual {v2, v3, v5}, Lcom/tencent/mm/i/a;->x(II)Z

    move-result v2

    .line 281
    const-string v3, "MicroMsg.LauncherUI"

    const-string v4, "NewBandage.hasNew(), NEW_BANDAGE_WATCHER_MORE_TAB_ENTRY newEmoji : %s, freeEmoji : %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    if-nez v0, :cond_7

    if-eqz v2, :cond_0

    .line 283
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/ae;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/LauncherUI;->a(Lcom/tencent/mm/ui/LauncherUI;)Lcom/tencent/mm/ui/LauncherUITabView;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/tencent/mm/ui/LauncherUITabView;->db(Z)V

    goto/16 :goto_0

    :cond_8
    move v2, v1

    goto :goto_3

    :cond_9
    move v0, v1

    goto/16 :goto_2
.end method
